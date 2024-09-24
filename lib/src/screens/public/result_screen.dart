import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/converter.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/screens/project/project_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
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
                            supervisorName: "Someone",
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
                            projectDaysleft: result[index].startDate != null &&
                                    result[index].endDate != null
                                ? getDaysDifference(result[index].startDate!,
                                            result[index].endDate!) !=
                                        0
                                    ? "${getDaysDifference(result[index].startDate!, result[index].endDate!)} days"
                                    : "Over"
                                : "not yet",
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
