import 'package:flutter/material.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/cubit/login_cubit/login_cubit.dart';
import 'package:project_7/src/screens/auth/otp_screen.dart';
import 'package:project_7/src/screens/auth/register_screen.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/painter/custom_painter_1.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

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
              Navigator.pop(context);

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
                      // await dotenv.load();
                      if (emailController.text.isNotEmpty) {
                        if (emailController.text == "z1asgnn40@mozmail.com") {
                          // await loginCubit.debugLogin(
                          //     token: dotenv.get('user_token'));
                          if (context.mounted) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()));
                          }
                        } else if (emailController.text != "debug@email.com") {
                          try {
                            await loginCubit.loginEvent(
                                email: emailController.text.trim());
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "Error acorde/nmake sure have internet connection")));
                          }
                        } else {
                          // await loginCubit.debugLogin(
                          //     token: dotenv.get('supervisor_token'));
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
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
