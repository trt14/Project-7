import 'package:flutter/material.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/networking/networking_api.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/painter/custom_painter_1.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return Scaffold(
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
                  try {
                    final api = NetworkingApi();
                    // int code =await api.loginMethod(email: emailController.text);
                    // if(code == 200) {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => OtpScreen(email: emailController.text,)));
                    // }
                    const token =
                        "ZDZmMmM5MTM4ZDMwNGVkODdmOTQ2MTE5MzM1OWE5MjdmYTIzYjgyYmU4OGRlNjJkMmFiOThhMzEyYjE0MGJlNWI5NjIyMjNhNjFhMzI2MjJkYmVhN2MwNjVjNjk2YmM2OGJjZjQ4ZDUzYjA1MTIzOTQ1MDhjNGViZWE5OWRiYTk3ZjViNGZmZTUyZDc3OTZlNzBmOTYxMGEyMWIxMThiZDQxOTEyMjcyYWJiY2RkZTg4ZGZkMDY0ZmM0YWQ0OWEyMzA5ZGI3OTc4MTdmNzQwNzkzZmEzN2RiMzJjZjMwMzkwMTY3NTJhYjM3NWM0Mzg4YTA4MGY3MDBiMmQ4NDA4MGU5ZDBkOWY3OWE5NGY5Yjc4MTU1Y2JiMWFlY2VhZjc1Y2RkNDcxNjliN2UzOWJhN2IzMjYyZjU5YmRkYzljMjJiMjIyYjhjZDUyNmMxOGEzMmQ5ODgzMzFjY2U3YzA2YzUwZGZhMjQwYjQyMGZhYzQ1MmFmYTFiNTMyOWU2MmY3MWIxNzM3ZWRkYmRlMjY1MjI0NGEwNmJkMzc2M2FiNGI3ZWE2OGZjNmY5ZmExOWYyNDA1NmIxOThkNmZkOGRiNzUyNWZlOWM0NjJhNzBiOTc3OTk2NTJhYzMxMmM5ZWVhNjljZWEyM2Y4Njc2OTA5Zjk0ZjcyODgzNWZiNTZlNWVkNjg2NDQ4ZDE1ZmZmNzhmYTM2NjY4ZTg3NzE3NTRkZWRiZDIyOWU1NzlhZmU0MzU0NzM3NzE3MjQyMTU5Y2EzNWIyYjM1M2I4NmUyYTg3YWI1NWQxMGI3ODBmZjFkZjk3YWVmMjdkNDdjYjU5Y2MxOGRhMTcxYWY5Yjg0YTNhMDdhYzI4NjQ0YmYyMjAxYmRhNWFhNTQ3ODQzMDY3OTFiZDFjOTYyM2UwOGVjMjM5MGU3NjM5NTQyNmNlZjhmMDgxZTcxODI1MDhiMzI3ZWVhNDA2NjlkMzM2MWQ4OGI5N2JiMTIwMmZhNGFjZjUwNmE4MDczNGI3Y2I3NTQ3YTdmNWI3ODlhYzc3Yzg3NjA0NzA4MTViY2MzNmRkNTJmNWViYTY3ZjEyZjA0ZmI4MjBiMDM4ZDIxYzlkMzhjYzczYjdhMGY1MDU2YWY2ODcwN2U0NmQ2MWExM2M3YTNkOWE4MjZkYTBmZmFjZDQ0ZjIwMmU4YTFiMDMzODdmMzQzMTJhZjAzZWY5YjBhYWQyNjBiM2FmNWQzMWY0NTk1ZTI0NTk5NWY1ZTg0NGM1NGQ2ZTM5ZWYyYTkzY2NjOTNlNWM0NjQ5MmMxMGViZjVjYzI2NWQ0N2YzNzdlMWE4ZmJiMWFjZWM5MTEyMjQyZmQyMTFjMjc3NTBmNmZhMWI3OWI4MDU1ZjUzNjJlZDZjOTg4NzVlZjgwYTQxZjcwMjIzZWM3YjYyYWU2NmEzNzM3YThjZDBmOGM5YmYzMTlhZTkwMWZhNDIwYTVhMzEyNjRmOGJkNDllZGYxYWUzNGFmMzI2ZTk1NTQzYzE5YzIyNjFkM2E0ZGE0MTY4MTQ4MWY2YThmNzBhMjIwMDg1NmM4ZTM3MzBhNjExYmE1NjczMWNhMTUwNzYwNDQ0Y2E1MGQxYTY2NTlmNzBiZWYxOGYxY2MyNGZhOGVhM2U3Zjg3MWM5YWRhZWFiODMzMDhjNDNiZGZhYjRiMjVkZGY3YzFkMDQyYmUzMjdiM2UwNTQ3NDhhYjY4YjY1ZWY3NjczMDg3YTU4Yzk1MjE5Mzc4OWU4N2EwN2VjMDIwYzA1YThjNzVjNTQxOGQ4ZDZiNGE2NmMyODQzM2VlZWNmMDVkNmJmN2Q5Y2RhZTljMmEyN2Q2ZjQ0OWNlNGQzNmMxZWI5OWY4YjhhMDgwOTUwZDRkNzFhNmM1MGUwZDZjOTFhNzFjYTAxOWFlN2I2YjAxNjhmYTkwMzczZDljNDFhYjIzZDQ2Y2Q5ZDBmODA3ZTE5NzNhMjYyODk4MmY5ZTlmYzI3NWMzN2ZhMTVjNmEwYjUzM2E3MjViYTE4NWUwZTNjODFjNWFiMWU2NjAwOTllZTg5ZmUyMjcwZjlkYWViNjcwMWU2NGU2ZmU5NTg3M2ZiZWNiNjBlNzZjZjkyOTAyNjJlNjc3NzBmZWRhN2NkYTliNzE0MmFkOTQ5YWJhMzM5MGI4YjEzMWQyZWE4Y2NhZTRhYjdkZDgzNjg0ZTBjOTI5ZDhmYzk5MDU5ZDgyNDU0MjdmNzE4MGVlYw==";

                   final user = await api.getUserProfile(token: token);
                    if (context.mounted) {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen(user:  user)));
                    }
                  } catch (e) {
                    print(e);
                  }
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
    );
  }
}
