import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_7/src/cubit/init_project/init_project_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/models/project/init_project_model.dart';
import 'package:project_7/src/screens/home_screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class InitProject extends StatelessWidget {
  const InitProject({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InitProjectCubit(),
      child: Builder(builder: (context) {
        Color color = Colors.black;

        final initProjectCubit = context.read<InitProjectCubit>();
        return BlocListener<InitProjectCubit, InitProjectState>(
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text("New Project"),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/project.png",
                    width: context.getWidth(value: 0.65),
                  ),
                  CustomTextField(
                    title: "User ID",
                    color: color,
                    controller: initProjectCubit.idController,
                  ),
                  CustomTextField(
                    title: "Project Name",
                    color: color,
                    controller: initProjectCubit.projectNameController,
                  ),
                  CustomTextField(
                    title: "Project Description",
                    color: color,
                    controller: initProjectCubit.projectDescController,
                    maxLines: 4,
                  ),
                  CustomTextField(
                    title: "Bootcamp Name",
                    color: color,
                    controller: initProjectCubit.bootcampController,
                  ),
                  CustomTextField(
                    title: "project type",
                    color: color,
                    controller: initProjectCubit.typeController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now()
                                  .add(const Duration(days: 365 * 5)),
                            );
                            if (newDate != null) {
                              initProjectCubit.startDate =
                                  DateFormat('dd/MM/yyyy').format(newDate);
                              log("date :${initProjectCubit.startDate}");
                            }
                          },
                          child: const Text("Start Date")),
                      TextButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now()
                                  .add(const Duration(days: 365 * 5)),
                            );
                            if (newDate != null) {
                              initProjectCubit.endDate =
                                  DateFormat('dd/MM/yyyy').format(newDate);
                              log("date :${initProjectCubit.endDate}");
                            }
                          },
                          child: const Text("End Date")),
                      TextButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime.now()
                                  .add(const Duration(days: 365 * 5)),
                            );
                            if (newDate != null) {
                              initProjectCubit.presDate =
                                  DateFormat('dd/MM/yyyy').format(newDate);
                              log("date :${initProjectCubit.presDate}");
                            }
                          },
                          child: const Text("Presintation Date")),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Allow user to Edit:"),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              BlocBuilder<InitProjectCubit, InitProjectState>(
                            builder: (context, state) {
                              return Switch(
                                  value: initProjectCubit.edit,
                                  onChanged: (bool value) {
                                    initProjectCubit.edit = value;
                                    initProjectCubit
                                        .toggleSwitch(initProjectCubit.edit);
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Allow user to Rating:"),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              BlocBuilder<InitProjectCubit, InitProjectState>(
                            builder: (context, state) {
                              return Switch(
                                  value: initProjectCubit.rate,
                                  onChanged: (bool value) {
                                    initProjectCubit.rate = value;
                                    initProjectCubit
                                        .toggleSwitch(initProjectCubit.rate);
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Public :"),
                        Align(
                          alignment: Alignment.centerLeft,
                          child:
                              BlocBuilder<InitProjectCubit, InitProjectState>(
                            builder: (context, state) {
                              return Switch(
                                  value: initProjectCubit.isPublic,
                                  onChanged: (bool value) {
                                    initProjectCubit.isPublic = value;
                                    initProjectCubit.toggleSwitch(
                                        initProjectCubit.isPublic);
                                  });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now()
                                .add(const Duration(days: 365 * 5)),
                          );
                          if (newDate != null) {
                            initProjectCubit.editDate =
                                DateFormat('dd/MM/yyyy').format(newDate);
                            log("date :${initProjectCubit.editDate}");
                          }
                        },
                        child: const Text("End edit of edit")),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: CustomElevatedBTN(
                      text: "Create Project",
                      color: color.primaryColor,
                      onPressed: () {
                        // if (initProjectCubit.editDate.isEmpty ||
                        //     initProjectCubit.endDate.isEmpty ||
                        //     initProjectCubit.startDate.isEmpty ||
                        //     initProjectCubit.presDate.isEmpty) {
                        //   print("hiii");
                        // } else {
                        initProjectCubit.initProjectEvetn(
                            project: InitProjectModel(
                                edit: initProjectCubit.edit.toString(),
                                timeEndEdit: initProjectCubit.editDate ?? "",
                                userId: initProjectCubit.idController.text));
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
