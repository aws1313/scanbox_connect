import 'package:freezed_annotation/freezed_annotation.dart';

part 'scanner.g.dart';
part 'scanner.freezed.dart';

@freezed
abstract class ScannerCallbackData with _$ScannerCallbackData {
  ScannerCallbackData._();
  factory ScannerCallbackData({
    required bool success,
    String? code

  }) = _ScannerCallbackData;

  factory ScannerCallbackData.fromJson(Map<String, dynamic> json) => _$ScannerCallbackDataFromJson(json);
}