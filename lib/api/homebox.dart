/*
ScanboxConnect: mobile app to integrate with Homebox and other self-hosted services such as Jellyfin
Copyright (C) 2026 aws1313

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce/hive.dart';
import 'package:logging/logging.dart';
import 'package:retrofit/retrofit.dart';
import 'package:scanbox_connect/models/account.dart';
import 'package:scanbox_connect/models/homebox.dart';
import 'package:scanbox_connect/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'homebox.g.dart';

final log = Logger("HomeboxAPI");
@RestApi()
abstract class HomeboxApi {
  factory HomeboxApi(Dio dio, {String? baseUrl}) = _HomeboxApi;

  static Map<String, HomeboxApi> instances = {};

  static HomeboxApi getByAccount(Account acc){
    if (instances.keys.contains(acc.id) && false){
      return instances[acc.id]!;
    }
    
    Dio dio = Dio();
    dio.interceptors.add(HomeboxSessionManager(acc));
    HomeboxApi api = HomeboxApi(dio, baseUrl: acc.baseUrl);
    instances[acc.id] = api;
    return api;
  }

  @GET("/api/v1/status")
  Future<String> getServerStatus();

  // session stuff
  @POST("/api/v1/users/login")
  @FormUrlEncoded()
  Future<String> passwordLogin(
    @Field() String username,
    @Field() String password,
    @Field() bool stayLoggedIn
  );

  // entities
  @GET("/api/v1/entity-types")
  Future<List<EntityType>> getAllEntityTypes();

  @GET("/api/v1/entities/tree")
  Future<String> getEntityTree();

  @GET("/api/v1/entities")
  Future<QueryResponse> queryEntities({
    @Query("isLocation") bool? isLocation,
    @Query("filterChildren") bool? filterChildren,
    @Query("parentIds") List<String>? parentIds
  });
  @GET("/api/v1/entities")
  Future<String> queryEntitiesRaw({
    @Query("isLocation") bool? isLocation,
    @Query("filterChildren") bool? filterChildren,
    @Query("parentIds") List<String>? parentIds
  });

}

class HomeboxSessionManager extends Interceptor {
  HomeboxSessionManager(this.acc):super();

  final Account acc;

  final FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  final SharedPreferencesAsync _storage = SharedPreferencesAsync();



  ({String token, DateTime expiresAt})? tokenData;


  Future<String?> getStorageVal(KeyType kt, {bool makeNullEmpty = true}) async {
    String? val =  Utils.supportsSecureStorage()
        ? await _secureStorage.read(key: acc.getStorageKey(kt))
        : await _storage.getString(acc.getStorageKey(kt));

    return (makeNullEmpty)? val??"" : val;
  }
  
  Future<void> setStorageVal(KeyType kt, String value) async {
    if (Utils.supportsSecureStorage()){
      await _secureStorage.write(key: acc.getStorageKey(kt), value: value);
    } else {
      await _storage.setString(acc.getStorageKey(kt), value);
    }
  }


  Future<bool> login() async {
    final HomeboxApi unAuthApi = HomeboxApi(Dio(), baseUrl: acc.baseUrl);
    log.info("Try to obtain new session token");

    if (acc.loginType == LoginType.password){
      
      try {
      String res = await unAuthApi.passwordLogin(
          acc.username,
          (await getStorageVal(KeyType.password))!,
          true
      );
      
      Map<String, dynamic> resDec = jsonDecode(res);

      tokenData = (token: resDec["token"]!, expiresAt: DateTime.tryParse(resDec["expiresAt"]!)!);
      
      await setStorageVal(KeyType.token, resDec["token"]!);
      await setStorageVal(KeyType.tokenExpiresAt, resDec["expiresAt"]!);
      await setStorageVal(KeyType.mediaToken, resDec["attachmentToken"]!);

      return true;


      } catch(e) {
        log.shout(e);
        return false;
      }
    }

    return false;
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // ensure a valid session token is used

    // first checks if there is a token
    if (tokenData == null){
      // when not load from storage
      String? token = await getStorageVal(KeyType.token);
      DateTime? expires = DateTime.tryParse((await getStorageVal(KeyType.tokenExpiresAt))!);

      // if not token found try logging in. if this fails throw error
      if (token == null || expires == null) {
        bool loginSuccess = await login();
        if (!loginSuccess) {
          handler.reject(DioException.requestCancelled(
              requestOptions: options,
              reason: "password seems to be wrong, cant authenticate with homebox"
          ));
          return;
        }
      } else {
        tokenData = (token: token, expiresAt: expires);
        log.info("Valid session found. Valid until: ${expires.toIso8601String()}");
      }


    }

    // checks if token is still valid (with enough time for the request)
    if(!(DateTime.now().add(Duration(minutes: 5))).isBefore(tokenData!.expiresAt)){
      // es ist wichtig, dass der folgende Block 2 mal vorhanden ist.
      // zuerst wird geprüft, ob er überhaupt existiert, dann ob er valid ist
      bool loginSuccess = await login();
      if (!loginSuccess) {
        handler.reject(DioException.requestCancelled(
            requestOptions: options,
            reason: "password seems to be wrong, cant authenticate with homebox"
        ));
        return;
      }

    }

    options.headers["Authorization"] = tokenData!.token;
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}

