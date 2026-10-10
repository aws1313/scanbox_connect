import 'dart:io';
import 'package:logging/logging.dart';
import 'package:scanbox_connect/models/scanner.dart';
import 'package:scanbox_connect/platform/honeywell.dart';

import 'package:device_info_plus/device_info_plus.dart';

final log = Logger("HardwareScanner");

abstract class HardwareScanner {
  HardwareScanner(this.type);
  HardwareScannerType type;

  static late final HardwareScanner _scanner;


  static Future<bool> prepareSupportedScanner() async {
    HardwareScanner? scanner;
    if (Platform.isAndroid) {
      AndroidDeviceInfo info = await DeviceInfoPlugin().androidInfo;
      if ("honeywell" == info.manufacturer.toLowerCase().trim()) {
        scanner =  HwScannerHoneywell();
      }
    }
    if (scanner!=null){
      await scanner.init();
      _scanner = scanner;
      return true;
    }
    _scanner = HwScannerNotFound();
    log.info("no hardware scanner found");
    return false;
  }

  factory HardwareScanner.getInstance() => _scanner;


  Future<void> init();

  void addListener(void Function(ScannerCallbackData) listener);

  void removeListener(void Function(ScannerCallbackData) listener);
}

class HwScannerNotFound extends HardwareScanner {
  HwScannerNotFound ():super(HardwareScannerType.notFound){
    type = HardwareScannerType.notFound;
  }

  @override
  void addListener(void Function(ScannerCallbackData) listener) {
    // TODO: implement addListener
  }

  @override
  Future<void> init() {
    // TODO: implement init
    throw UnimplementedError();
  }

  @override
  void removeListener(void Function(ScannerCallbackData) listener) {
    // TODO: implement removeListener
  }

}

enum HardwareScannerType {
  notFound,
  honeywellPda,
  usb
}

