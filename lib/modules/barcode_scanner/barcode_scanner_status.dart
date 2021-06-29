import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCameraAvailable;
  final String error;
  final String barcode;
  final bool stopScanner;

  BarcodeScannerStatus({
    this.stopScanner = false,
    this.isCameraAvailable = false,
    this.error = "",
    this.barcode = "",
  });

  factory BarcodeScannerStatus.available() => BarcodeScannerStatus(
        isCameraAvailable: true,
        stopScanner: false,
      );

  factory BarcodeScannerStatus.error(String message) => BarcodeScannerStatus(
        error: message,
        stopScanner: true,
      );

  factory BarcodeScannerStatus.barcode(String barcode) => BarcodeScannerStatus(
        barcode: barcode,
        stopScanner: true,
      );

  bool get showCamera => isCameraAvailable && error.isEmpty;
  bool get hasError => barcode.isNotEmpty;
  bool get hasBarcode => barcode.isNotEmpty;
}