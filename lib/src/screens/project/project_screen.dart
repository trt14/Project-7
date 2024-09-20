import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_7/src/helper/check_logo_type.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/models/project/member_project_model.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/widgits/custom_circle_profile.dart';
import 'package:project_7/src/widgits/custom_list_tile.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_7/src/widgits/custom_url_icon.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key, required this.userProject});
  final ProjectModel userProject;

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
              userProject.imagesProject!.length != 0
                  ? Center(
                      child: Container(
                          child: CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.height,
                        ),
                        items: userProject.imagesProject!
                            .map((item) => Container(
                                  child: Center(
                                      child: Image.network(item.url,
                                          fit: BoxFit.cover, width: 1000)),
                                ))
                            .toList(),
                      )),
                    )
                  : SizedBox(
                      child: Center(child: Text("Photos not uploaded yet")),
                    ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: userProject.rating! != 0
                    ? RatingBar.builder(
                        initialRating: (userProject.rating! / 2),
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.assignment,
                          color: color.primaryColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    : const SizedBox(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        //ProfilePic(img_url: "", color: color,),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              maxLines: 1,
                              userProject.projectName ?? "null",
                              style: TextStyle(
                                  color: color.primaryColor, fontSize: 20),
                            ),
                            Text(
                              maxLines: 1,
                              userProject.bootcampName ?? "null",
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
                              userProject.startDate ?? "null",
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
                            Text(userProject.endDate ?? "null",
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
                            Text(userProject.presentationDate ?? "null",
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
                  userProject.projectDescription ?? "null",
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
                    itemCount: userProject.membersProject?.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          _dialogBuilder(
                              context: context,
                              member: userProject.membersProject![index]);
                        },
                        child: SizedBox(
                          width: context.getWidth(value: 0.5),
                          child: CustomListTile(
                            title: userProject.membersProject![index].firstName
                                .toString(),
                            description:
                                userProject.membersProject![index].position,
                            color: color,
                          ),
                        ),
                      );
                    }),
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
                      children: List.generate(
                          userProject.linksProject?.length ?? 0, (index) {
                        return CustomUrlIcon(
                            url: userProject.linksProject![index].url,
                            img: getLogo(userProject.linksProject![index].type),
                            width: 25);
                      }))),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder({
  required BuildContext context,
  required MembersProjectModel member,
}) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("${member.firstName} ${member.lastName} "),
        content: SizedBox(
          height: 100,
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("${member.email}")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  member.link?.github != null
                      ? CustomUrlIcon(
                          img: "assets/icons/github.png",
                          url: "https://www.github.com/${member.link!.github}",
                          width: 30,
                        )
                      : const SizedBox(),
                  member.link?.linkedin != null
                      ? CustomUrlIcon(
                          img: "assets/icons/linkedin.png",
                          url:
                              "https://www.linkedin.com/${member.link!.linkedin}",
                          width: 30,
                        )
                      : const SizedBox(),
                  member.link?.bindlink != null
                      ? CustomUrlIcon(
                          img: "assets/icons/bindlink.png",
                          url: "https://www.bind.link/${member.link!.bindlink}",
                          width: 30,
                        )
                      : const SizedBox(),
                  member.link?.resume != null
                      ? CustomUrlIcon(
                          img: "assets/icons/resume.png",
                          url: "${member.link!.resume}",
                          width: 30,
                        )
                      : const SizedBox()
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
