import 'package:flutter/material.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/screens/auth/login_screen.dart';
import 'package:project_7/src/screens/auth/otp_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/painter/custom_painter_1.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/painter/custom_painter_2.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: context.getHeight(value: 0.5),
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
                      bottom: 0,
                      right: 50,
                      child: Image.asset(
                        "assets/images/sign-up.png",
                        width: 300,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomTextField(
                title: "First Name",
                color: color.primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomTextField(
                title: "Last Name",
                color: color.primaryColor,
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
              text: "Register",
              color: color.primaryColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  OtpScreen()));
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Have account?"),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  LoginScreen()));
                  },
                  child: Text(
                    "Login",
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
      ),
    );
  }
}
