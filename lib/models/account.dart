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

import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

enum AccountType {
  @JsonValue("Homebox") homebox,
  @JsonValue("Jellyfin") jellyfin
}

enum LoginType {
  @JsonValue("Password") password,
  @JsonValue("OpenID-Connect") oidc,
}

@unfreezed
abstract class Account with _$Account {
  Account._();
  factory Account({
    required String id,
    required AccountType type,
    required LoginType loginType,

    required String baseUrl,
    required String displayName,
    required String username,
  }) = _Account;


  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

  String getStorageKey(KeyType kt){
    return "$id.$kt";
  }

}

enum KeyType{
  password,
  token,
  tokenExpiresAt,
  mediaToken
}

