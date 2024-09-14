import 'package:flutter/material.dart';
import 'package:project_7/src/widgits/custom_pinput.dart';
import 'package:project_7/src/widgits/custom_rich_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/two_factor_authentication.png"),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(19.0),
                  child: CustomRichText(email: "example@email.com",time: "02:00",),
                ),
              ),
              const SizedBox(
                height: 50,
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

