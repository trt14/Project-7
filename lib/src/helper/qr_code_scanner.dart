import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:project_7/src/screens/review/review_screen.dart';

class QrCodeScanner extends StatelessWidget {
  QrCodeScanner({super.key, required this.nav});
  final int nav;
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
            if (nav == 0) {
              await controller
                  .stop()
                  .then((value) => controller.dispose())
                  .then((value) => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReviewScreen(
                              projectId: barcode.rawValue.toString()))));
            } else {
              await controller
                  .stop()
                  .then((value) => controller.dispose())
                  .then((value) =>
                      Navigator.of(context).pop(barcode.rawValue.toString()));
            }
          }
        },
      ),
    );
  }
}
