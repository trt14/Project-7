import 'package:flutter/material.dart';
import 'package:project_7/src/widgits/custom_pinput.dart';
import 'package:project_7/src/widgits/custom_rich_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: CustomRichText(
                  email: "example@email.com",
                  time: "02:00",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: CustomPinput(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
