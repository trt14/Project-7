import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/cubit/login_cubit/login_cubit.dart';
import 'package:project_7/src/networking/networking_api.dart';
import 'package:project_7/src/screens/auth/otp_screen.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/painter/custom_painter_1.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    Color color = Colors.black;

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {
        final loginCubit = context.read<LoginCubit>();
        return BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoadingState) {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      SizedBox(child: customLoading(context)));
            }

            if (state is FailedState) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.toString())));
            }
            if (state is SuccessState) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OtpScreen()));
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
                        if (emailController.text == "z1asgnn40@mozmail.com") {
                          const token =
                              "ODRiNmM0MjcyZDQ1MTRkYmVlZTI5YjgxYWU4ZDI5NDQ2ZDYwZjE4ZDExMjVhMWM5YTQwYjJlZDkzYWI4Nzc4YmI1YmRlNDJlZWIyNzQzYTM0ODU2NmNjYzQwZWIzZDI1MDEwOGQ5NmQyZjgyYjgzNDNkMTI5ODc1NmYxY2U4NDg5NGRjYzY2NTAxOWM3ZGU5M2IzMGZmZjRmM2JhM2EwMjllNjhjMzlhNWFiZWU1YWJhYjI5ODlhODkwYzkwN2ZmZDEwYjE1Mjg1Y2RiYTk5MDQzNDRhYWVjYTg0YmFiMjRlNzU4MTk5M2YyNmUyNTY2YjJiOWU4ODFlYzNmZmIyYmE4NWM4Yzc0NWQ5MTg5YjM4ZmU5NGYwNDZmN2Q3YWU3YmExZTM2OGI2MDEwN2U1YzM3YzU5ZWM0NWMyZTcyODUwNjZiNWJlYjUzZmFhMGM0MzA2NTBlYTI1NmIwMDEyYWFlMGViNzFjODFlZThkOTY0NzZmZTAwZGY3Y2VlMGI2YmM5MDBhMTJjYmY0ZDcxMjJjOTk3Mjc3ZDcwMzRhZGUwYzgwZWQ1M2ZlNzExNDJjZmI3NjA5NzIyNDY1MjRkMjhkODM0MDIwMzI2ZDI1NjNlZTY2M2Q2ZTNmNmMxOWRkMTBlZDY1MGU2N2RlN2QzMGY2MWYzNGY0ZTUyOTNjZTE4YjM0MTM1MTczNDRmMTFmMzA3NmFkNmRmMzFhZDk2NzUwMjdkZmY5MTVkZDQ5OWI5ZTVjZjVmMjA4ODJjMDNmNTg5NTQ2OTNkZGUzOTk1NzI3Y2NkMzM2YzZlNDQxZWVhMzJlMDRjYTI2MWIwNjlmNWUxNDEyOTg4ODQwYThjMzJkMmRlYTZlMDgyYmE0NzEwODcxM2E4NjYyNTkyMTI3ZWEwMzU3YTBiZThkNDZjNWM4ODU1YzMzYjIxNTBiN2VhMGM1M2JlOTViZDI3NTg0OTdmNTMwODU3YmIxZGU5MDJlYTQ0MDVmZmMzNjgyZGFiNWI5NmFjZDQxNzI5MjQxMjY2MmQ0ZDQ0MjBjYTAyM2FhYTBlMDQzZGNjNjQ2MjZlNGY2NWY1Y2Y5ZDE0ZTE2MDExM2NhMDliNTM2NWIzYTM2YTY5YzUyMWE3OWM2YzIyOWI0ZDdhYzkxYzVmNjUxMjlkMGNjM2FmZDliZmEwOTIxNmIxZjAzZWIzZGU4NGZjZTA4N2ExYmNiNzM0ZDRjNzE0ZjU4OGE4MjRhYTM2Y2I0ZjZhZDM5ODIwMGFhNmYxNGNiMDlhODhkZmViOWM0Mjc1ODRjZjkzYzJiZGRmYTI0YTc1ZWY3Y2E5YmM1NzUxNmZjYjBhMGE5NDJlMWUyZDdkOWM5NDkwNjBmODliOWFmOTAyMTEwNGY1NjRmMTJjMmUyZjE5MzE3ZDA2MGFjNzNmNWFjZmMwZDUzMDJlYTJlNzllYjhhMTc2ZDRmNjQwZGI0Nzc1MDA0M2IxMmMyNWRiYWQyNmQyZDdlYmI1ODg0ZGM1M2NmNTg4MTE0MDkxMTRlMmQ2YThiZDkzMjk5YmFkMGM4NDQyMjg3OTg3N2Y1MGE1NzcyZTM4ZTM2OTc5MTk4ZDdlOGQ5NDg0MzFjZDdhOWY0Mzg2OGQxZTI4ZjJkZjEzZTg4N2YzOTdmMmIxMjUxZDA1ODNhN2Y3ODRhYzJlNmMxNWNhMTgyMDQ0ZWFiNTA5ZGEzNzQzMWQ1NGYxODIxMjQzMTc0MDE2YjEyZmY3NjFmNGIyZjA3MDU2YzM3YzgxY2UwYzgwZWJjMzUyZjY4ZDRhYzEyMDk1NmY5NDg3ZjI4YWFlMWE5OTU3M2I2MDBkNWMyOTg0MzEyZTlhMmZiN2JhNWMyOWIwZTVmNTY1ZjU3NTRiMzI4MGFkMTRiNmFhMDkyNmU3NjUwY2I0MWMwNDhhYjliNjUzODA3NGIyMDY0ZDMwNWQwMzliZDc2NDA2YjBhYzk2ZTJiYjI4NTJkMWVmMGRjM2ZmZjYzOGFkZWY3YjY2NTFhZDk3ZmExOWFjYjQ4NzZjNWNmNTI2MmFkNGYxNzljMGQ2NTA1YWEyOTZjZmQ4YmZhODY1N2RiOTc4Yjc5MmYyOWIyMDhjODUwZTQ4M2ZmYjIwMDZiYWZhNGU4MmQ3YjgwOWVkYmRkNTgwMzUwY2Y5M2IxOWE3MmEzNzgyZmUxMjI2YjIyNWNlM2I1ZmI2Y2YwY2M4ZTg2N2IzNjRhMDYzMDZiOGVkMg==";
                          await loginCubit.debugLogin(token: token);
                          if (context.mounted) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          }
                        } else if (emailController.text != "debug@email.com") {
                          try {
                          await  loginCubit.loginEvent(
                                email: emailController.text.trim());
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "Error acorde/nmake sure have internet connection")));
                          }
                        } else {
                          const token =
                              "ZDZmMmM5MTM4ZDMwNGVkODdmOTQ2MTE5MzM1OWE5MjdmYTIzYjgyYmU4OGRlNjJkMmFiOThhMzEyYjE0MGJlNWI5NjIyMjNhNjFhMzI2MjJkYmVhN2MwNjVjNjk2YmM2OGJjZjQ4ZDUzYjA1MTIzOTQ1MDhjNGViZWE5OWRiYTk3ZjViNGZmZTUyZDc3OTZlNzBmOTYxMGEyMWIxMThiZDQxOTEyMjcyYWJiY2RkZTg4ZGZkMDY0ZmM0YWQ0OWEyMzA5ZGI3OTc4MTdmNzQwNzkzZmEzN2RiMzJjZjMwMzkwMTY3NTJhYjM3NWM0Mzg4YTA4MGY3MDBiMmQ4NDA4MGU5ZDBkOWY3OWE5NGY5Yjc4MTU1Y2JiMWFlY2VhZjc1Y2RkNDcxNjliN2UzOWJhN2IzMjYyZjU5YmRkYzljMjJiMjIyYjhjZDUyNmMxOGEzMmQ5ODgzMzFjY2U3YzA2YzUwZGZhMjQwYjQyMGZhYzQ1MmFmYTFiNTMyOWU2MmY3MWIxNzM3ZWRkYmRlMjY1MjI0NGEwNmJkMzc2M2FiNGI3ZWE2OGZjNmY5ZmExOWYyNDA1NmIxOThkNmZkOGRiNzUyNWZlOWM0NjJhNzBiOTc3OTk2NTJhYzMxMmM5ZWVhNjljZWEyM2Y4Njc2OTA5Zjk0ZjcyODgzNWZiNTZlNWVkNjg2NDQ4ZDE1ZmZmNzhmYTM2NjY4ZTg3NzE3NTRkZWRiZDIyOWU1NzlhZmU0MzU0NzM3NzE3MjQyMTU5Y2EzNWIyYjM1M2I4NmUyYTg3YWI1NWQxMGI3ODBmZjFkZjk3YWVmMjdkNDdjYjU5Y2MxOGRhMTcxYWY5Yjg0YTNhMDdhYzI4NjQ0YmYyMjAxYmRhNWFhNTQ3ODQzMDY3OTFiZDFjOTYyM2UwOGVjMjM5MGU3NjM5NTQyNmNlZjhmMDgxZTcxODI1MDhiMzI3ZWVhNDA2NjlkMzM2MWQ4OGI5N2JiMTIwMmZhNGFjZjUwNmE4MDczNGI3Y2I3NTQ3YTdmNWI3ODlhYzc3Yzg3NjA0NzA4MTViY2MzNmRkNTJmNWViYTY3ZjEyZjA0ZmI4MjBiMDM4ZDIxYzlkMzhjYzczYjdhMGY1MDU2YWY2ODcwN2U0NmQ2MWExM2M3YTNkOWE4MjZkYTBmZmFjZDQ0ZjIwMmU4YTFiMDMzODdmMzQzMTJhZjAzZWY5YjBhYWQyNjBiM2FmNWQzMWY0NTk1ZTI0NTk5NWY1ZTg0NGM1NGQ2ZTM5ZWYyYTkzY2NjOTNlNWM0NjQ5MmMxMGViZjVjYzI2NWQ0N2YzNzdlMWE4ZmJiMWFjZWM5MTEyMjQyZmQyMTFjMjc3NTBmNmZhMWI3OWI4MDU1ZjUzNjJlZDZjOTg4NzVlZjgwYTQxZjcwMjIzZWM3YjYyYWU2NmEzNzM3YThjZDBmOGM5YmYzMTlhZTkwMWZhNDIwYTVhMzEyNjRmOGJkNDllZGYxYWUzNGFmMzI2ZTk1NTQzYzE5YzIyNjFkM2E0ZGE0MTY4MTQ4MWY2YThmNzBhMjIwMDg1NmM4ZTM3MzBhNjExYmE1NjczMWNhMTUwNzYwNDQ0Y2E1MGQxYTY2NTlmNzBiZWYxOGYxY2MyNGZhOGVhM2U3Zjg3MWM5YWRhZWFiODMzMDhjNDNiZGZhYjRiMjVkZGY3YzFkMDQyYmUzMjdiM2UwNTQ3NDhhYjY4YjY1ZWY3NjczMDg3YTU4Yzk1MjE5Mzc4OWU4N2EwN2VjMDIwYzA1YThjNzVjNTQxOGQ4ZDZiNGE2NmMyODQzM2VlZWNmMDVkNmJmN2Q5Y2RhZTljMmEyN2Q2ZjQ0OWNlNGQzNmMxZWI5OWY4YjhhMDgwOTUwZDRkNzFhNmM1MGUwZDZjOTFhNzFjYTAxOWFlN2I2YjAxNjhmYTkwMzczZDljNDFhYjIzZDQ2Y2Q5ZDBmODA3ZTE5NzNhMjYyODk4MmY5ZTlmYzI3NWMzN2ZhMTVjNmEwYjUzM2E3MjViYTE4NWUwZTNjODFjNWFiMWU2NjAwOTllZTg5ZmUyMjcwZjlkYWViNjcwMWU2NGU2ZmU5NTg3M2ZiZWNiNjBlNzZjZjkyOTAyNjJlNjc3NzBmZWRhN2NkYTliNzE0MmFkOTQ5YWJhMzM5MGI4YjEzMWQyZWE4Y2NhZTRhYjdkZDgzNjg0ZTBjOTI5ZDhmYzk5MDU5ZDgyNDU0MjdmNzE4MGVlYw==";

                          await loginCubit.debugLogin(token: token);
                          if (context.mounted) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          }
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Login feild is required")));
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
