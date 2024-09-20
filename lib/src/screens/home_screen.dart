import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/home_cubit/home_cubit.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/screens/project/create_project_screen.dart';
import 'package:project_7/src/screens/project/init_project.dart';
import 'package:project_7/src/screens/user/profile_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
import 'package:project_7/src/widgits/custom_list_tile.dart';
import 'package:project_7/src/widgits/custom_notification_project.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Builder(builder: (context) {
        Color color = Colors.black;
        final homeCubit = context.read<HomeCubit>();
        log("${homeCubit.user?.role}");

        return SafeArea(
          child: Scaffold(
            floatingActionButton: homeCubit.user?.role?.toLowerCase() != "user"
                ? FloatingActionButton(
                    backgroundColor: color.secondaryColor,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const InitProject()))
                          .then((value) {
                        homeCubit.update();
                      });
                    })
                : null,
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
                          const SizedBox(
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
                                              const ProfileScreen()))
                                  .then((value) => homeCubit.update());
                            },
                            child: BlocBuilder<HomeCubit, HomeState>(
                              builder: (context, state) {
                                return CustomListTile(
                                  color: color,
                                  title:
                                      "${homeCubit.user?.firstName} ${homeCubit.user?.lastName}",
                                  description: "${homeCubit.user?.role}",
                                  widget: Icon(
                                    Icons.person_2_outlined,
                                    color: color.primaryColor,
                                  ),
                                );
                              },
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
                          text:
                              "Next your presintation'Project Name' after 5 days",
                          icon: Icon(
                            Icons.alarm,
                            color: color.primaryColor,
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<HomeCubit, HomeState>(
                    builder: (context, state) {
                      return Column(
                        children:
                            List.generate(homeCubit.projects.length, (index) {
                          return CustomCardProject(
                              supervisorName: "",
                              projectName:
                                  "${homeCubit.projects[index].projectName}",
                              projectDescription:
                                  "${homeCubit.projects[index].projectDescription}",
                              projectType: "${homeCubit.projects[index].type}",
                              projectStatus:
                                  homeCubit.projects[index].presentationDate !=
                                          null
                                      ? "COMPLETED"
                                      : "UNCOMPLETED",
                              colorStatus:
                                  homeCubit.projects[index].presentationDate !=
                                          null
                                      ? color.completedColor
                                      : color.uncompletedColor,
                              projectDaysleft: "20 days left",
                              isSelectedTeamMember: homeCubit.projects[index]
                                      .membersProject!.isNotEmpty
                                  ? true
                                  : false);
                        }),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
