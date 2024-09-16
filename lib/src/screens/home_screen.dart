import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:get_it/get_it.dart';
import 'package:project_7/src/data%20layer/data_layer.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/models/user/user_model.dart';
import 'package:project_7/src/screens/user/profile_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
import 'package:project_7/src/widgits/custom_list_tile.dart';
import 'package:project_7/src/widgits/custom_notification_project.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final user = GetIt.I.get<DataLayer>().user;
    List<ProjectModel>? projects = user?.projects;
    Color color = Colors.black;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  width: context.getWidth(),
                  padding: const EdgeInsets.only(top: 8, left: 8),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          "Welcome back 👋 ",
                          style: TextStyle(
                              color: color.txtBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProfileScreen()));
                        },
                        child: CustomListTile(
                          color: color,
                          title: "${user?.firstName} ${user?.lastName}",
                          description: "${user?.role}",
                          widget: Icon(
                            Icons.person_2_outlined,
                            color: color.primaryColor,
                          ),
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: CustomNotificationProject(
                      color: color,
                      text: "Next your presintation'Project Name' after 5 days",
                      icon: Icon(
                        Icons.alarm,
                        color: color.primaryColor,
                      ))),
              const SizedBox(
                height: 10,
              ),
              ...List.generate(projects!.length, (index) {
                return CustomCardProject(
                    supervisorName: "",
                    projectName: "${projects[index].projectName}",
                    projectDescription: "${projects[index].projectDescription}",
                    projectType: "${projects[index].type}",
                    projectStatus: projects[index].presentationDate != null
                        ? "COMPLETED"
                        : "UNCOMPLETED",
                    colorStatus: projects[index].presentationDate != null
                        ? color.completedColor
                        : color.uncompletedColor,
                    projectDaysleft: "20 days left",
                    isSelectedTeamMember:
                        projects[index].membersProject!.isNotEmpty
                            ? true
                            : false);
              }),
              // CustomCardProject(
              //     supervisorName: "Al Altarouty dmsnab",
              //     projectName: "My Home",
              //     projectDescription:
              //         "jnjknvjenfv efv ervjernvjnerjnvjerrnvjenvjenjvnecvnvcev  vjkenrjvnejrkvn kjer verjvn jkernvjerv ev ejrnvjernvjenv ev erlvn env je ve vje vjer vejnvjenverr",
              //     projectType: "app",
              //     projectStatus: "COMPLETED",
              //     colorStatus: color.completedColor,
              //     projectDaysleft: "20 days left",
              //     isSelectedTeamMember: false),
              // CustomCardProject(
              //     supervisorName: "Al Altarouty dmsnab",
              //     projectName: "My Home",
              //     projectDescription:
              //         "jnjknvjenfv efv ervjernvjnerjnvjerrnvjenvjenjvnecvnvcev  vjkenrjvnejrkvn kjer verjvn jkernvjerv ev ejrnvjernvjenv ev erlvn env je ve vje vjer vejnvjenverr",
              //     projectType: "app",
              //     projectStatus: "UNCOMPLETED",
              //     colorStatus: color.uncompletedColor,
              //     projectDaysleft: "50 days left",
              //     isSelectedTeamMember: true),
              // CustomCardProject(
              //     supervisorName: "Al Altarouty dmsnab",
              //     projectName: "My Home",
              //     projectDescription:
              //         "jnjknvjenfv efv ervjernvjnerjnvjerrnvjenvjenjvnecvnvcev  vjkenrjvnejrkvn kjer verjvn jkernvjerv ev ejrnvjernvjenv ev erlvn env je ve vje vjer vejnvjenverr",
              //     projectType: "app",
              //     projectStatus: "HOLDING",
              //     colorStatus: color.holdingColor,
              //     projectDaysleft: "10 days left",
              //     isSelectedTeamMember: false),
            ],
          ),
        ),
      ),
    );
  }
}
