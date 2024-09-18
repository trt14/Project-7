import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/widgits/custom_circle_profile.dart';
import 'package:project_7/src/widgits/custom_list_tile.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/login.png",
                      width: context.getWidth(value: 0.8),
                      height: context.getHeight(value: 0.4),
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: 5 / 2,
                    minRating: 0,
                    direction: Axis.vertical,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.assignment,
                      color: color.primaryColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //ProfilePic(img_url: "", color: color),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maxLines: 1,
                              "Title of Project",
                              style: TextStyle(
                                  color: color.primaryColor, fontSize: 20),
                            ),
                            Text(
                              maxLines: 1,
                              "Bootcamp title",
                              style: TextStyle(
                                  color: color.primaryColor, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 15,
                              color: color.secondaryColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Start Date :",
                              style: TextStyle(
                                  color: color.secondaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "22/12/1993",
                              style: TextStyle(
                                  color: color.secondaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 15,
                              color: color.secondaryColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "End Date  :",
                              style: TextStyle(
                                  color: color.secondaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("22/12/1993",
                                style: TextStyle(
                                    color: color.secondaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.circle_outlined,
                              size: 15,
                              color: color.secondaryColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Presintation Date  :",
                              style: TextStyle(
                                  color: color.secondaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("22/12/1993",
                                style: TextStyle(
                                    color: color.secondaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  maxLines: 20,
                  "This character description generator will generate a fairly random description of a belonging to a random race. However, some aspects of the descriptions will remain the same, this is done to keep the general structure the same, while still randomizing the important details.\nThe generator does take into account which race is randomly picked, and changes some of the details accordingly. For example, if the character is an elf, they will have a higher chance of looking good and clean, they will, of course, have an elvish name, and tend to be related to more elvish related towns and people.",
                  style: TextStyle(color: color.txtBlack45Color, fontSize: 14),
                ),
              ),
              Divider(
                thickness: 0.5,
                color: color.txtBlack45Color,
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  width: context.getWidth(),
                  alignment: Alignment.center,
                  color: color.secondaryColor,
                  child: Text(
                    "My team",
                    style: TextStyle(color: color.txtwhiteColor, fontSize: 25),
                  )),
              Container(
                padding: const EdgeInsets.all(8),
                width: context.getWidth(),
                height: 100,
                color: color.txtwhiteColor,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _dialogBuilder(
                              context: context, name: "ali altarouty");
                        },
                        child: SizedBox(
                          width: context.getWidth(value: 0.5),
                          child: CustomListTile(
                            title: "Ali Altarouty",
                            description: "Position",
                            color: color,
                          ),
                        ),
                      );
                    }),
                // child: Row(
                //   children: [
                //     Container(
                //       width: context.getWidth(value: 0.2),
                //       color: Colors.red,
                //       child: CustomListTile(
                //         title: "Ali Altarouty",
                //         description: "Position",
                //         color: color,
                //       ),
                //     )
                //   ],
                // )),
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  width: context.getWidth(),
                  alignment: Alignment.center,
                  color: color.secondaryColor,
                  child: Text(
                    "Links",
                    style: TextStyle(color: color.txtwhiteColor, fontSize: 25),
                  )),
              Container(
                  padding: const EdgeInsets.all(8),
                  width: context.getWidth(),
                  height: 100,
                  color: color.bgColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/icons/apk.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/app-store.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/playstore.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/figma.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/pinterest.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/github.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/video.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/connections.png",
                        width: 25,
                      ),
                      Image.asset(
                        "assets/icons/teaching.png",
                        width: 25,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder({
  required BuildContext context,
  required String name,
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(name),
        content: SizedBox(
          height: 100,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 10,
                  ),
                  Text("tarooti14@gmail.com")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
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
            ],
          ),
        ),
      );
    },
  );
}
