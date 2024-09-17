import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/login%20cubit/login_cubit.dart';
import 'package:project_7/src/networking/networking_api.dart';
import 'package:project_7/src/screens/auth/otp_screen.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/painter/custom_painter_1.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {

        return BlocListener<LoginCubit, LoginState>(
          
          listener: (context, state) {
            log('Current state: $state');
            log("Iam at Lisner");
            print(state.runtimeType);
            if (state is FaildState) {
              log("i'm at faild state");
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          child: Scaffold(
            body: Column(
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
                            "assets/images/login.png",
                            width: 300,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomTextField(
                    controller: emailController,
                    title: "Email",
                    color: color.primaryColor,
                  ),
                ),
                CustomElevatedBTN(
                    text: "Login",
                    color: color.primaryColor,
                    onPressed: () async {
                      if (emailController.text.isNotEmpty) {
                        if (emailController.text != "debug@email.com") {
                          await LoginCubit()
                              .loginEvent(email: emailController.text);
                        } else {
                          await LoginCubit().debugLogin();
                          if (context.mounted) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          }
                        }
                        // if (code == 200) {
                        //   if (context.mounted) {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => OtpScreen()));
                        //   }
                        // }
                      }
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("New user?"),
                    const SizedBox(
                      width: 5,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          alignment: Alignment.centerLeft,
                          padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                      child: const Text(
                        "Signup",
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
