import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_7/src/cubit/init_project/init_project_cubit.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/models/project/init_project_model.dart';
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
        String? date;
        bool edit = true;
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
            if (state is SuccessState) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("init project was success")));
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Allow memeber to Edit:"),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Switch(
                              value: edit,
                              onChanged: (bool value) {
                                edit = value;
                              }),
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
                            date = DateFormat('dd/MM/yyyy').format(newDate);
                            log("date :$date");
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
                        initProjectCubit.initProjectEvetn(InitProjectModel(
                            edit: edit.toString(),
                            timeEndEdit: date ?? "",
                            userId: initProjectCubit.idController.text));
                      },
                    ),
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
