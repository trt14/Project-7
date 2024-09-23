import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/assing_supervisor_cubit/assgin_supervisor_cubit.dart';
import 'package:project_7/src/helper/functions.dart';
import 'package:project_7/src/helper/qr_code_scanner.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_loading.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';
import 'package:project_7/src/helper/colors.dart';

class AssignSupervisor extends StatelessWidget {
  const AssignSupervisor({super.key});
  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;

    return BlocProvider(
      create: (context) => AssginSupervisorCubit(),
      child: Builder(builder: (context) {
        final assingCubit = context.read<AssginSupervisorCubit>();
        int? value;
        return BlocListener<AssginSupervisorCubit, AssginSupervisorState>(
          listener: (context, state) {
            if (state is LoadingState) {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      SizedBox(child: customLoading(context)));
            }

            if (state is FailedState) {
              Navigator.pop(context);
              showAlertSnackBar(
                  color: color,
                  context: context,
                  title: state.error.toString(),
                  colorStatus: color.uncompletedColor);
            }
            if (state is SuccessState) {
              Navigator.pop(context);
              showAlertSnackBar(
                  color: color,
                  context: context,
                  title: "change role was sucess :)",
                  colorStatus: color.uncompletedColor);
            }
          },
          child: Scaffold(
            body: SafeArea(
              bottom: false,
              child: Center(
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: context.getWidth(value: .8),
                              child: CustomTextField(
                                title: "userId",
                                color: Colors.white,
                                controller: assingCubit.idController,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.camera),
                              onPressed: () async {
                                try {
                                  assingCubit.idController.text =
                                      await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QrCodeScanner(
                                        nav: 1,
                                      ),
                                    ),
                                  );
                                } catch (e) {
                                  log(e.toString());
                                }
                              },
                            )
                          ],
                        ),
                        BlocBuilder<AssginSupervisorCubit,
                            AssginSupervisorState>(
                          builder: (context, state) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Row(
                                    children: List.generate(
                                        assingCubit.role.length, (int index) {
                                      return Container(
                                        margin: const EdgeInsets.all(19),
                                        child: ChoiceChip(
                                          checkmarkColor: Colors.red,
                                          label: Text(assingCubit.role[index]),
                                          selected: value == index,
                                          onSelected: (bool selected) async {
                                            value = selected ? index : null;
                                            await assingCubit.selectRole();
                                          },
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        CustomElevatedBTN(
                          text: "Assign",
                          color: Colors.black,
                          onPressed: () async {
                            try {
                              if (value != null &&
                                  assingCubit.idController.text.isNotEmpty) {
                                await assingCubit.updateRole(index: value!);
                              } else {
                                showAlertSnackBar(
                                    color: color,
                                    context: context,
                                    title: "the id and role is required",
                                    colorStatus: color.uncompletedColor);
                              }
                            } catch (e) {
                              log(e.toString());
                            }
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
