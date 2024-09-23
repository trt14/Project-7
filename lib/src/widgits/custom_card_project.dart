import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:project_7/src/helper/screen.dart';

class CustomCardProject extends StatelessWidget {
  const CustomCardProject(
      {super.key,
      required this.supervisorName,
      required this.projectName,
      required this.projectDescription,
      required this.projectType,
      required this.projectStatus,
      required this.colorStatus,
      required this.projectDaysleft,
      required this.isSelectedTeamMember,
      this.countTeam = 1,
      this.url});
  final String supervisorName;
  final String projectName;
  final String projectDescription;
  final String projectType;
  final String projectStatus;
  final Color colorStatus;
  final String projectDaysleft;
  final bool isSelectedTeamMember;
  final int? countTeam;
  final String? url;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
        width: context.getWidth(value: 90 / 100),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 20,
              height: context.getHeight(value: 20 / 100),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                  color: colorStatus),
              child: RotatedBox(
                  quarterTurns: -1,
                  child: Center(
                      child: Text(
                    projectStatus,
                    style: const TextStyle(color: Colors.white),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: context.getWidth(value: 80 / 100),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            url != null || url != ""
                                ? CircleAvatar(child: Image.network(url!))
                                : const Icon(Icons.web),
                            Text(
                              projectName,
                                                overflow: TextOverflow.ellipsis,

                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          width: context.getWidth(value: 25 / 100),
                          height: 22,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: colorStatus.withOpacity(10 / 100),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            projectDaysleft,
                            style: TextStyle(
                                color: colorStatus,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      projectDescription,
                      style: TextStyle(color: Colors.black45),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: isSelectedTeamMember == true
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.center,
                      children: [
                        isSelectedTeamMember == true
                            ? SizedBox(
                                height: 30,
                                child: FlutterImageStack.widgets(
                                  extraCountTextStyle: const TextStyle(
                                      color: Color((0xff5c68ff))),

                                  showTotalCount: true,
                                  totalCount: countTeam!,
                                  itemBorderColor: Colors.black26,
                                  itemRadius: 40, // Radius of each images
                                  itemCount: countTeam! > 4
                                      ? countTeam! - 1
                                      : countTeam, // Maximum number of images to be shown in stack
                                  itemBorderWidth: 3,
                                  children: const [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.person),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.person),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.person),
                                    ),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.person),
                                    ),
                                    CircleAvatar()
                                  ], // Border width around the images
                                ),
                              )
                            : Text(""),
                        Row(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 15,
                              color: Colors.black45,
                            ),
                            const Text(
                              "Assgin By:",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.black45),
                            ),
                            Text(
                              supervisorName.length > 15
                                  ? '${supervisorName.substring(0, 12)}...'
                                  : supervisorName,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(70 / 100)),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
