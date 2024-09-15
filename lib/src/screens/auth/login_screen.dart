import 'package:flutter/material.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/screens/auth/otp_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/painter/custom_painter_1.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/painter/custom_painter_2.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: context.getHeight(value: 0.7),
            width: context.getWidth(),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: CustomPaint(
                    size: const Size(800, 800),
                    painter: MyPainter(),
                  ),
                ),
                Positioned(
                    top: 50,
                    left: 60,
                    child: Image.asset(
                      "assets/images/tu-logo.png",
                      width: 300,
                    )),
                Positioned(
                    bottom: 10,
                    right: 50,
                    child: Image.asset(
                      "assets/images/login.png",
                      width: 300,
                    )),
                Positioned(
                  top: 240,
                  left: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lo",
                        style: TextStyle(
                            color: color.txtwhiteColor,
                            fontSize: 40,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "gin",
                        style: TextStyle(
                            color: color.secondaryColor,
                            fontSize: 40,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomTextField(
              title: "Email",
              color: color.primaryColor,
            ),
          ),
          CustomElevatedBTN(
            text: "Login",
            color: color.primaryColor,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OtpScreen()));
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New user?"),
              SizedBox(
                width: 5,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Signup",
                  style: TextStyle(fontSize: 16),
                ),
                style: ButtonStyle(
                    alignment: Alignment.centerLeft,
                    padding: WidgetStatePropertyAll(EdgeInsets.zero)),
              )
            ],
          )
        ],
      ),
    );
  }
}
