import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
class CustomPinput extends StatelessWidget {
  const CustomPinput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Pinput(
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(30, 60, 87, 1),
            fontWeight: FontWeight.w600),
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color.fromRGBO(234, 239, 243, 1)),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: const TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(30, 60, 87, 1),
            fontWeight: FontWeight.w600),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}