// import 'package:flutter/material.dart';

// class EditProjectScreen extends StatelessWidget {
//   const EditProjectScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//                             height: context.getHeight(value: 0.5),
//                             color: color.bgColor,
//                             child: Center(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: <Widget>[
//                                   Text(
//                                     "Edit Project",
//                                     style: TextStyle(fontSize: 20),
//                                   ),
//                                   CustomTextField(
//                                     title: "Project Name",
//                                     color: color,
//                                     controller:
//                                         projectCubit.editProjectNameController,
//                                   ),
//                                   CustomTextField(
//                                     title: "Project Description",
//                                     color: color,
//                                     controller:
//                                         projectCubit.editProjectDescrController,
//                                   ),
//                                   projectCubit.userDataLayer.user!.role !=
//                                           "user"
//                                       ? Row(
//                                           children: [
//                                             Column(
//                                               children: [
//                                                 BlocBuilder<ProjectCubit,
//                                                     ProjectState>(
//                                                   builder: (context, state) {
//                                                     return Text(userProject
//                                                         .startDate
//                                                         .toString());
//                                                   },
//                                                 ),
//                                                 TextButton(
//                                                     onPressed: () async {
//                                                       DateTime? newDate =
//                                                           await showDatePicker(
//                                                         context: context,
//                                                         initialDate:
//                                                             initialStartDate,
//                                                         firstDate:
//                                                             initialStartDate,
//                                                         lastDate: DateTime.now()
//                                                             .add(const Duration(
//                                                                 days: 365 * 5)),
//                                                       );
//                                                       if (newDate != null) {
//                                                         userProject.startDate =
//                                                             DateFormat(
//                                                                     'yyyy-MM-dd')
//                                                                 .format(
//                                                                     newDate);
//                                                         log("date :${userProject.startDate}");
//                                                         await projectCubit.showDate();
//                                                       }
//                                                     },
//                                                     child: const Text(
//                                                         "Start Date")),
//                                               ],
//                                             ),
//                                             TextButton(
//                                                 onPressed: () async {
//                                                   DateTime? newDate =
//                                                       await showDatePicker(
//                                                     context: context,
//                                                     initialDate: initialEndDate,
//                                                     firstDate: initialEndDate,
//                                                     lastDate: DateTime.now()
//                                                         .add(const Duration(
//                                                             days: 365 * 5)),
//                                                   );
//                                                   if (newDate != null) {
//                                                     userProject.endDate =
//                                                         DateFormat('yyyy-MM-dd')
//                                                             .format(newDate);
//                                                     log("date :${userProject.endDate}");
//                                                   }
//                                                 },
//                                                 child: const Text("End Date")),
//                                             TextButton(
//                                                 onPressed: () async {
//                                                   DateTime? newDate =
//                                                       await showDatePicker(
//                                                     context: context,
//                                                     initialDate:
//                                                         initialPresDate,
//                                                     firstDate: initialPresDate,
//                                                     lastDate: DateTime.now()
//                                                         .add(const Duration(
//                                                             days: 365 * 5)),
//                                                   );
//                                                   if (newDate != null) {
//                                                     userProject
//                                                             .presentationDate =
//                                                         DateFormat('yyyy-MM-dd')
//                                                             .format(newDate);
//                                                     log("date :${userProject.presentationDate}");
//                                                   }
//                                                 },
//                                                 child: const Text(
//                                                     "Preseintation Date")),
//                                           ],
//                                         )
//                                       : const SizedBox(),
//                                   ElevatedButton(
//                                       child: const Text('Edit'),
//                                       onPressed: () async {
//                                         userProject = await projectCubit
//                                             .editProjectNameAndDescription(
//                                                 project: userProject);
//                                       }),
//                                 ],
//                               ),
//                             ),
//                           );,
//     );
//   }
// }

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_7/src/cubit/project_cubit/project_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/models/project/project_model.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class EditProjectScreen extends StatelessWidget {
  EditProjectScreen({super.key, required this.userProject});
  ProjectModel userProject;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectCubit(),
      child: Builder(builder: (context) {
        Color color = Colors.black;

        final projectCubit = context.read<ProjectCubit>();
        String userRole = projectCubit.userDataLayer.user!.role.toString();

        projectCubit.editProjectBootcampController.text =
            userProject.bootcampName.toString();
        projectCubit.editProjectDescrController.text =
            userProject.projectDescription.toString();
        projectCubit.editProjectNameController.text =
            userProject.projectName.toString();
        projectCubit.editProjectTypeController.text =
            userProject.type.toString();

        projectCubit.startDate = userProject.startDate.toString();
        projectCubit.endDate = userProject.endDate.toString();
        projectCubit.presDate = userProject.presentationDate.toString();
        projectCubit.editDate = userProject.timeEndEdit.toString();

        projectCubit.edit = userProject.allowEdit!;
        projectCubit.rate = userProject.allowRating!;
        projectCubit.isPublic = userProject.isPublic!;
        return BlocListener<ProjectCubit, ProjectState>(
          listener: (context, state) {
            if (state is LoadingState) {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      SizedBox(child: customLoading(context)));
            }

            if (state is FailedState) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.toString())));
            }

            if (state is NotificationSteps) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(state.msg),
                backgroundColor: Colors.green,
              ));
            }

            if (state is SuccessState) {
              Navigator.pop(context);
              Navigator.pop(context);
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Edit Project"),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/project.png",
                    width: context.getWidth(value: 0.65),
                  ),
                  Text("Project ID : ${userProject.projectId}"),
                  CustomTextField(
                    title: "Project Name",
                    color: color,
                    controller: projectCubit.editProjectNameController,
                  ),
                  CustomTextField(
                    title: "Project Description",
                    color: color,
                    controller: projectCubit.editProjectDescrController,
                    maxLines: 4,
                  ),
                  userRole != "user"
                      ? Column(
                          children: [
                            CustomTextField(
                              title: "Bootcamp Name",
                              color: color,
                              controller:
                                  projectCubit.editProjectBootcampController,
                            ),
                            CustomTextField(
                              title: "project type",
                              color: color,
                              controller:
                                  projectCubit.editProjectTypeController,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    BlocBuilder<ProjectCubit, ProjectState>(
                                      builder: (context, state) {
                                        if (state is ShowDateState ||
                                            state is ProjectInitial) {
                                          return Text(projectCubit.startDate);
                                        }
                                        return const Text("");
                                      },
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime.now().add(
                                                const Duration(days: 365 * 5)),
                                          );
                                          if (newDate != null) {
                                            projectCubit.startDate =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(newDate);
                                            log("date :${projectCubit.startDate}");
                                            projectCubit.showDate();
                                          }
                                        },
                                        child: const Text("Start Date")),
                                  ],
                                ),
                                Column(
                                  children: [
                                    BlocBuilder<ProjectCubit, ProjectState>(
                                      builder: (context, state) {
                                        if (state is ShowDateState ||
                                            state is ProjectInitial) {
                                          return Text(projectCubit.endDate);
                                        }
                                        return const Text("");
                                      },
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime.now().add(
                                                const Duration(days: 365 * 5)),
                                          );
                                          if (newDate != null) {
                                            projectCubit.endDate =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(newDate);
                                            log("date :${projectCubit.endDate}");
                                            projectCubit.showDate();
                                          }
                                        },
                                        child: const Text("End Date")),
                                  ],
                                ),
                                Column(
                                  children: [
                                    BlocBuilder<ProjectCubit, ProjectState>(
                                      builder: (context, state) {
                                        if (state is ShowDateState ||
                                            state is ProjectInitial) {
                                          return Text(projectCubit.presDate);
                                        }
                                        return const Text("");
                                      },
                                    ),
                                    TextButton(
                                        onPressed: () async {
                                          DateTime? newDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate: DateTime.now().add(
                                                const Duration(days: 365 * 5)),
                                          );
                                          if (newDate != null) {
                                            projectCubit.presDate =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(newDate);
                                            log("date :${projectCubit.presDate}");
                                            projectCubit.showDate();
                                          }
                                        },
                                        child: const Text("Presintation Date")),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Allow user to Edit:"),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                        BlocBuilder<ProjectCubit, ProjectState>(
                                      builder: (context, state) {
                                        return Switch(
                                            value: projectCubit.edit,
                                            onChanged: (bool value) {
                                              projectCubit.edit = value;
                                              projectCubit.toggleSwitch(
                                                  projectCubit.edit);
                                            });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Allow user to Rating:"),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                        BlocBuilder<ProjectCubit, ProjectState>(
                                      builder: (context, state) {
                                        return Switch(
                                            value: projectCubit.rate,
                                            onChanged: (bool value) {
                                              projectCubit.rate = value;
                                              projectCubit.toggleSwitch(
                                                  projectCubit.rate);
                                            });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Public :"),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child:
                                        BlocBuilder<ProjectCubit, ProjectState>(
                                      builder: (context, state) {
                                        return Switch(
                                            value: projectCubit.isPublic,
                                            onChanged: (bool value) {
                                              projectCubit.isPublic = value;
                                              projectCubit.toggleSwitch(
                                                  projectCubit.isPublic);
                                            });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Column(
                                children: [
                                  BlocBuilder<ProjectCubit, ProjectState>(
                                    builder: (context, state) {
                                      if (state is ShowDateState ||
                                          state is ProjectInitial) {
                                        return Text(projectCubit.editDate);
                                      }
                                      return const Text("");
                                    },
                                  ),
                                  TextButton(
                                      onPressed: () async {
                                        DateTime? newDate =
                                            await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime.now().add(
                                              const Duration(days: 365 * 5)),
                                        );
                                        if (newDate != null) {
                                          projectCubit.editDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(newDate);
                                          log("date :${projectCubit.editDate}");
                                          projectCubit.showDate();
                                        }
                                      },
                                      child: const Text("End edit of edit")),
                                ],
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedBTN(
                      text: "Edit Project",
                      color: color.primaryColor,
                      onPressed: () async {
                        DateTime startDateAsDate =
                            DateTime.parse(projectCubit.startDate);
                        DateTime endDateAsDate =
                            DateTime.parse(projectCubit.endDate);
                        DateTime preDateAsDate =
                            DateTime.parse(projectCubit.presDate);

                        if (userRole != "user") {
                          if (endDateAsDate.isBefore(startDateAsDate)) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                  "The start date should be before end date"),
                              backgroundColor: Colors.red,
                            ));
                          } else if (preDateAsDate.isBefore(endDateAsDate)) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                  "The presintation date should be after end date"),
                              backgroundColor: Colors.red,
                            ));
                          } else {
                            userProject = await projectCubit
                                .editProjectNameAndDescription(
                                    project: userProject);
                          }
                        } else {
                          userProject =
                              await projectCubit.editProjectNameAndDescription(
                                  project: userProject);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
