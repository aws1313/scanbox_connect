import 'package:honeywell_scanner/honeywell_scanner.dart';
import 'package:logging/logging.dart';
import 'package:scanbox_connect/models/scanner.dart';
import 'package:scanbox_connect/platform/hardware_scanner.dart';

final log = Logger("HoneywellScanner");

class HwScannerHoneywell extends HardwareScanner {
  final List<void Function(ScannerCallbackData)> _listeners = [];
  final HoneywellScanner _scanner = HoneywellScanner();


  HwScannerHoneywell() : super(HardwareScannerType.honeywellPda) {
    type = HardwareScannerType.honeywellPda;
  }

  @override
  Future<void> init() async {
    _scanner.setScannerDecodeCallback(_onScanDecode);
    _scanner.setScannerErrorCallback(_onScanError);
    _scanner.setProperties({
      "NTF_VIBRATE_ENABLED": true
    });

    _scanner.startScanner();

    log.info("initialized HoneywellScanner");
  }

  dynamic _onScanDecode(ScannedData? dt){
    _notifyListeners(ScannerCallbackData(
      success: (dt?.code != null),
      code: dt?.code
    ));
  }

  dynamic _onScanError(error){
    print(error.toString());
  }

  void _notifyListeners(ScannerCallbackData data){
    for (Function(ScannerCallbackData) l in _listeners) {
      l(data);
    }
  }

  @override
  void addListener(void Function(ScannerCallbackData) listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(void Function(ScannerCallbackData) listener) {
    _listeners.remove(listener);
  }



}