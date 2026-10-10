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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:scanbox_connect/models/account.dart';
import 'package:scanbox_connect/ui/explorer.dart';
import 'package:scanbox_connect/ui/homepage.dart';
import 'package:scanbox_connect/ui/settings.dart';
import 'package:collection/collection.dart';

class RootLayout extends StatefulWidget {
  const RootLayout({super.key});

  @override
  State<RootLayout> createState() => _RootLayoutState();
}
class _RootLayoutState extends State<RootLayout> {
  int _selectedPage = 0;

  Box<Account> accountBox = Hive.box<Account>("accounts");

  @override
  void initState() {

    super.initState();
  }
  
  AppBar get appBar => AppBar(
    actions: [
      IconButton(onPressed: () => Get.to(() => SettingsPage()), icon: Icon(Icons.settings))
    ],
  );

  BottomNavigationBar get btmNavBar => BottomNavigationBar(
    currentIndex: _selectedPage,
    onTap: (int i) => setState(() => _selectedPage = i),
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.explore),label: "Explorer"),
    ]
  );

  FloatingActionButton get fab => FloatingActionButton(
    child: Icon(Icons.qr_code_scanner_sharp), 
    onPressed: () => ()
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: btmNavBar,
      floatingActionButton: fab,
      body: IndexedStack(
      index: _selectedPage,
      children: [
        Homepage(isSelected: _selectedPage == 0),
        ExplorerPage(isSelected: _selectedPage == 1),
      ],
      )
    );
  }
}
