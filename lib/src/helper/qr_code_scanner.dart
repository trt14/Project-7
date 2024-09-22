import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrCodeScanner extends StatelessWidget {
  QrCodeScanner({super.key});

  final MobileScannerController controller = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileScanner(
        controller: controller,
        onDetect: (BarcodeCapture capture) async {
          final List<Barcode> barcodes = capture.barcodes;
          final barcode = barcodes.first;

          if (barcode.rawValue != null) {
            await controller
                .stop()
                .then((value) => controller.dispose())
                .then((value) => Navigator.of(context).pop(barcode.rawValue));
          }
        },
      ),
    );
  }
}
  