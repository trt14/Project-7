import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';
// TODO: add flutter_svg to pubspec.yaml

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    nameController.text = "Ali Altarouty";
    emailController.text = "ali@ali.com";

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: color.secondaryColor,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: "123")).then((value) {
                    showAlertSnackBar(
                        color: color,
                        context: context,
                        title: "The ID has been copied.",
                        colorStatus: color.completedColor);
                  });
                },
                icon: Icon(
                  Icons.copy,
                  color: color.txtwhiteColor,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: color.txtwhiteColor,
                )),
          ],
          title: Text(
            "Profile",
            style: TextStyle(color: color.txtwhiteColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: context.getWidth(),
                height: context.getHeight(value: 25 / 100),
                decoration: BoxDecoration(
                    color: color.secondaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Center(
                  child: Column(
                    children: [
                      const ProfilePic(),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Ali Altarouty",
                        style: TextStyle(
                            fontSize: 20,
                            color: color.txtwhiteColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                            fontSize: 12,
                            color: color.bgColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "User",
                        style: TextStyle(
                            fontSize: 12,
                            color: color.holdingColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        launchStringUrl("https://google.com");
                      },
                      child: Image.asset(
                        "assets/icons/github.png",
                        width: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchStringUrl("https://google.com");
                      },
                      child: Image.asset(
                        "assets/icons/linkedin.png",
                        width: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchStringUrl("https://google.com");
                      },
                      child: Image.asset(
                        "assets/icons/bindlink.png",
                        width: 30,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchStringUrl("https://google.com");
                      },
                      child: Image.asset(
                        "assets/icons/resume.png",
                        width: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    CustomTextField(
                      title: "Name",
                      color: color,
                      controller: nameController,
                      icon: Icon(
                        Icons.person,
                        color: color.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      title: "Email",
                      color: color,
                      controller: emailController,
                      icon: Icon(
                        Icons.email,
                        color: color.primaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomElevatedBTN(text: "Save", color: color),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            child: Icon(Icons.person),
            // backgroundImage:
            //     NetworkImage("https://i.postimg.cc/0jqKB6mS/Profile-Image.png"),
          ),
          Positioned(
            right: -20,
            bottom: 0,
            child: SizedBox(
              height: 50,
              width: 50,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  backgroundColor: color.bgColor,
                ),
                onPressed: () {},
                child: Icon(
                  Icons.add_a_photo,
                  color: color.txtBlack45Color,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
