import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:project_7/helper/screen.dart';
import 'package:project_7/helper/colors.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "My Projects :",
                  style: TextStyle(fontSize: 30, color: color.primaryColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomCardProject(
                  supervisorName: "Al Altarouty dmsnab",
                  projectName: "My Home",
                  projectDescription:
                      "jnjknvjenfv efv ervjernvjnerjnvjerrnvjenvjenjvnecvnvcev  vjkenrjvnejrkvn kjer verjvn jkernvjerv ev ejrnvjernvjenv ev erlvn env je ve vje vjer vejnvjenverr",
                  projectType: "app",
                  projectStatus: "COMPLETED",
                  colorStatus: color.completedColor,
                  projectDaysleft: "20 days left",
                  isSelectedTeamMember: false),
              CustomCardProject(
                  supervisorName: "Al Altarouty dmsnab",
                  projectName: "My Home",
                  projectDescription:
                      "jnjknvjenfv efv ervjernvjnerjnvjerrnvjenvjenjvnecvnvcev  vjkenrjvnejrkvn kjer verjvn jkernvjerv ev ejrnvjernvjenv ev erlvn env je ve vje vjer vejnvjenverr",
                  projectType: "app",
                  projectStatus: "UNCOMPLETED",
                  colorStatus: color.uncompletedColor,
                  projectDaysleft: "50 days left",
                  isSelectedTeamMember: true),
              CustomCardProject(
                  supervisorName: "Al Altarouty dmsnab",
                  projectName: "My Home",
                  projectDescription:
                      "jnjknvjenfv efv ervjernvjnerjnvjerrnvjenvjenjvnecvnvcev  vjkenrjvnejrkvn kjer verjvn jkernvjerv ev ejrnvjernvjenv ev erlvn env je ve vje vjer vejnvjenverr",
                  projectType: "app",
                  projectStatus: "HOLDING",
                  colorStatus: color.holdingColor,
                  projectDaysleft: "10 days left",
                  isSelectedTeamMember: false),
            ],
          ),
        ),
      ),
    );
  }
}
