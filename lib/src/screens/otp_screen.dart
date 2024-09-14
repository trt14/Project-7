import 'package:flutter/material.dart';
import 'package:project_7/src/widgits/custom_pinput.dart';


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
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                              text: "Verification\n\n",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          TextSpan(text: "Enter otp send to "),
                          TextSpan(
                              style: TextStyle(fontWeight: FontWeight.bold),
                              text: "example@email.com \n\n"),
                          TextSpan(text: "code will expire in: "),
                          TextSpan(
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                              text: "02:00"),
                        ]),
                  ),
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
