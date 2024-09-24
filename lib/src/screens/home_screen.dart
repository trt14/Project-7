import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/home_cubit/home_cubit.dart';
import 'package:project_7/src/helper/converter.dart';
import 'package:project_7/src/helper/qr_code_scanner.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/screens/admin/assign_supervisor.dart';
import 'package:project_7/src/screens/project/project_screen.dart';
import 'package:project_7/src/screens/project/init_project.dart';
import 'package:project_7/src/screens/review/review_screen.dart';
import 'package:project_7/src/screens/user/profile_screen.dart';
import 'package:project_7/src/widgits/custom_card_project.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_list_tile.dart';
import 'package:project_7/src/widgits/custom_notification_project.dart';

//Done Snackbar

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
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                homeCubit.user?.role?.toLowerCase() != "user"
                    ? Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: FloatingActionButton(
                            backgroundColor: color.secondaryColor,
                            heroTag: 'add',
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const InitProject())).then((value) {
                                homeCubit.update();
                              });
                            }),
                      )
                    : const SizedBox(),
                FloatingActionButton(
                    backgroundColor: color.secondaryColor,
                    heroTag: 'camera',
                    child: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    onPressed: () async {
                      try {
                        String result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QrCodeScanner(
                              nav: 0,
                            ),
                          ),
                        );

                        log("this message in home screen $result");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReviewScreen(
                                      projectId: result,
                                    )));
                      } catch (e) {
                        log(e.toString());
                      }
                    }),
              ],
            ),
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
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  homeCubit.user!.role == "admin"
                      ? CustomElevatedBTN(
                          text: "Assing supervisor",
                          color: Colors.black,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AssignSupervisor(),
                              ),
                            );
                          },
                        )
                      : const SizedBox(),
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
                        children: [
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List<Widget>.generate(
                                      homeCubit.bootCamp.length, (int index) {
                                return Container(
                                  margin: const EdgeInsets.all(19),
                                  child: ChoiceChip(
                                    checkmarkColor: Colors.red,
                                    label: Text(
                                        homeCubit.bootCamp.elementAt(index)),
                                    selected: false,
                                  ),
                                );
                              }).toList())),
                          Column(
                            children: List.generate(
                                homeCubit.userDataLayer.user!.projects!.length,
                                (index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProjectScreen(
                                        userProject: homeCubit.userDataLayer
                                            .user!.projects![index],
                                      ),
                                    ),
                                  ).then((value) {
                                    homeCubit.update();
                                  });
                                },
                                child: CustomCardProject(
                                    countTeam: homeCubit
                                        .userDataLayer
                                        .user!
                                        .projects?[index]
                                        .membersProject
                                        ?.length,
                                    url: homeCubit.userDataLayer.user!.projects?[index].logoUrl ??
                                        "https://cdn.tuwaiq.edu.sa/landing/images/logo/logo-h.png",
                                    supervisorName: "Someone  ",
                                    projectName: homeCubit.userDataLayer.user!
                                            .projects?[index].projectName ??
                                        "TBD",
                                    projectDescription: homeCubit
                                            .userDataLayer
                                            .user!
                                            .projects?[index]
                                            .projectDescription ??
                                        "TBD",
                                    projectType:
                                        "${homeCubit.userDataLayer.user!.projects?[index].type}",
                                    projectStatus: homeCubit
                                                .userDataLayer
                                                .user!
                                                .projects?[index]
                                                .presentationDate !=
                                            null
                                        ? "COMPLETED"
                                        : "UNCOMPLETED",
                                    colorStatus: homeCubit.userDataLayer.user!.projects?[index].presentationDate != null
                                        ? color.completedColor
                                        : color.uncompletedColor,
                                    projectDaysleft: homeCubit.userDataLayer.user!.projects?[index].startDate != null &&
                                            homeCubit.userDataLayer.user!.projects?[index].endDate != null
                                        ? getDaysDifference(homeCubit.userDataLayer.user!.projects![index].startDate!, homeCubit.userDataLayer.user!.projects![index].endDate!) != 0
                                            ? "${getDaysDifference(homeCubit.userDataLayer.user!.projects![index].startDate!, homeCubit.userDataLayer.user!.projects![index].endDate!)} days"
                                            : "Over"
                                        : "not yet",
                                    isSelectedTeamMember: homeCubit.userDataLayer.user!.projects![index].membersProject!.isNotEmpty ? true : false),
                              );
                            }),
                          ),
                        ],
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
