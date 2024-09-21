import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/screens/project/project_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';

class PublicScreen extends StatelessWidget {
  const PublicScreen({super.key, required this.result});
  final List<ProjectModel> result;
  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: result.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjectScreen(
                                userProject: result[index],
                              ),
                            ),
                          );
                        },
                        child: CustomCardProject(
                            supervisorName: "",
                            projectName: "${result[index].projectName}",
                            projectDescription:
                                "${result[index].projectDescription}",
                            projectType: "${result[index].type}",
                            projectStatus:
                                result[index].presentationDate != null
                                    ? "COMPLETED"
                                    : "UNCOMPLETED",
                            colorStatus: result[index].presentationDate != null
                                ? color.completedColor
                                : color.uncompletedColor,
                            projectDaysleft: "20 days left",
                            isSelectedTeamMember:
                                result[index].membersProject!.isNotEmpty
                                    ? true
                                    : false),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
