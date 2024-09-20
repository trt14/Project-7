import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/rigester_cubit/rigester_account_cubit.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/screens/auth/login_screen.dart';
import 'package:project_7/src/screens/auth/otp_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/painter/custom_painter_1.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/painter/custom_painter_2.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return BlocProvider(
      create: (context) => RigesterAccountCubit(),
      child: Builder(builder: (context) {
        final cubit = context.read<RigesterAccountCubit>();
        return BlocListener<RigesterAccountCubit, RigesterAccountState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is LoadingState) {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      SizedBox(child: customLoading(context)));
            }
            if (state is ErrorState) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.toString())));
            }
            if (state is SuccessfulState) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OtpScreen()));
            }
          },
          child: Scaffold(
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
                      controller: cubit.nameFristController,
                      color: color.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomTextField(
                      title: "Last Name",
                      controller: cubit.nameLastController,
                      color: color.primaryColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomTextField(
                      title: "Email",
                      controller: cubit.emailController,
                      color: color.primaryColor,
                    ),
                  ),
                  CustomElevatedBTN(
                      text: "Register",
                      color: color.primaryColor,
                      onPressed: () async {
                        try {
                          await cubit.rigesterEvent();
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())));
                        }
                      }),
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
                                  builder: (context) => LoginScreen()));
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
          ),
        );
      }),
    );
  }
}
