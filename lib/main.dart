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
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:logging/logging.dart';
import 'package:path_provider/path_provider.dart';
import 'package:scanbox_connect/hive/hive_registrar.g.dart';
import 'package:scanbox_connect/models/account.dart';
import 'package:scanbox_connect/platform/hardware_scanner.dart';
import 'package:scanbox_connect/ui/root_layout.dart';
import 'package:path/path.dart' as p;

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // setup logger
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  // setup hive
  if (GetPlatform.isMacOS) {
    Hive
      ..init(
          p.join((await getApplicationSupportDirectory()).toString(), "hive"))
      ..registerAdapters();
  } else {
    await Hive.initFlutter();
    Hive.registerAdapters();
  }
  await Hive.openBox<Account>("accounts");

  // setup hardware scanner
  await HardwareScanner.prepareSupportedScanner();

  // start app
  FlutterNativeSplash.remove();
  runApp(const ScanboxConnect());
}

class ScanboxConnect extends StatelessWidget {
  const ScanboxConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ScanboxConnect',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark
        ),
      ),
      home: const RootLayout(),
    );
  }
}