import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_7/src/data%20layer/data_layer.dart';
import 'package:project_7/src/models/auth/auth_model.dart';
import 'package:project_7/src/networking/networking_api.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_pinput.dart';
import 'package:project_7/src/widgits/custom_rich_text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
   final email = GetIt.I.get<DataLayer>().email;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CustomRichText(
                  email: email ?? "",
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
                      final api = NetworkingApi();

                      AuthModel auth =
                          await api.verifyMethod(email: email??"", otp: otp);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const HomeScreen()));
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
