import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/otp_cubit/otp_cubit.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_pinput.dart';
import 'package:project_7/src/widgits/custom_rich_text.dart';
import 'package:project_7/src/helper/colors.dart';

// Done Snackbar

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;

    return BlocProvider(
      create: (context) => OtpCubit(),
      child: Builder(builder: (context) {
        final otpCubit = context.read<OtpCubit>();
        return BlocListener<OtpCubit, OtpState>(
          listener: (context, state) {
            if (state is LoadingState) {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      SizedBox(child: customLoading(context)));
            }

            if (state is FailedState) {
              Navigator.pop(context);
              showAlertSnackBar(
                  color: color,
                  context: context,
                  title: state.error,
                  colorStatus: color.uncompletedColor);
            }

            if (state is SuccessState) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
                (Route<dynamic> route) => false,
              );
            }
          },
          child: Scaffold(
            body: SafeArea(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: CustomRichText(
                        email: otpCubit.userDataLayer.email ?? "",
                        time: "02:00",
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: CustomPinput(
                        onCompleted: (otp) async {
                          try {
                            await otpCubit.verifyUser(otp: otp);
                          } catch (e) {
                            showAlertSnackBar(
                                color: color,
                                context: context,
                                title: e.toString(),
                                colorStatus: color.uncompletedColor);
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
