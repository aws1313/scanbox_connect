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

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:scanbox_connect/api/homebox.dart';
import 'package:scanbox_connect/models/account.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Box<Account> accountBox = Hive.box<Account>("accounts");

  Map<AccountType, Account?> favoriteAcc = {};

  @override
  void initState() {
    for (AccountType a in AccountType.values){
      favoriteAcc[a] = accountBox.values.firstWhereOrNull((e) => e.type == a );
    }
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ValueListenableBuilder(
          valueListenable: accountBox.listenable(),
          builder: (context, Box box, _){
          for (AccountType a in AccountType.values){
          favoriteAcc[a] = accountBox.values.firstWhereOrNull((e) => e.type == a );
          }
          if (favoriteAcc[AccountType.homebox] != null){
          Account hbAcc = favoriteAcc[AccountType.homebox]!;

          return FutureBuilder<String>(future: HomeboxApi.getByAccount(hbAcc).queryEntitiesRaw(isLocation: true, filterChildren: true), builder: (context, AsyncSnapshot<String> snap){
          if (snap.hasData) {
          return Center(child: Text(snap.data!),);
          }

          if (snap.hasError) {
          return Center(child: Text(snap.error!.toString()),);
          }

          return Center(child: CircularProgressIndicator(),);
          });
          }

          return Center(child: Text("Add Homebox account"));
          }
          )
      ],
    );
  }
}
