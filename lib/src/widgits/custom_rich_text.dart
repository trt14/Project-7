import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key, required this.email, required this.time,
  });
  final String email;
  final String time;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text:  TextSpan(
          style: const TextStyle(
            color: Colors.black,
          ),
          children: [
            const TextSpan(
                text: "Verification\n\n",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const TextSpan(text: "Enter otp send to "),
            TextSpan(
                style: const TextStyle(fontWeight: FontWeight.bold),
                text: "$email \n\n"),
            const TextSpan(text: "code will expire in: "),
            TextSpan(
                style:
                    const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                text: time),
          ]),
    );
  }
}
