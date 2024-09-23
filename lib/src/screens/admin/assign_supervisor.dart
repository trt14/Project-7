import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_7/src/cubit/assing_supervisor_cubit/assgin_supervisor_cubit.dart';
import 'package:project_7/src/helper/qr_code_scanner.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class AssignSupervisor extends StatelessWidget {
  const AssignSupervisor({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController idController = TextEditingController();
    return BlocProvider(
      create: (context) => AssginSupervisorCubit(),
      child: Builder(builder: (context) {
        final assingCubit = context.read<AssginSupervisorCubit>();
        int? value;
        return Scaffold(
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
                              controller: idController,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.camera),
                            onPressed: () async {
                              try {
                                idController.text = await Navigator.push(
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
                      BlocBuilder<AssginSupervisorCubit, AssginSupervisorState>(
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
                        onPressed: () {},
                      )
                    ],
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

/*
               Container(
                            margin: const EdgeInsets.all(19),
                            child: ChoiceChip(
                              checkmarkColor: Colors.red,
                              label: const Text("user"),
                              selected: true,
                              onSelected: (bool selected) async {
                                // value = selected ? index : null;
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(19),
                            child: ChoiceChip(
                              checkmarkColor: Colors.red,
                              label: const Text("Supervior"),
                              selected: true,
                              onSelected: (bool selected) async {
                                // value = selected ? index : null;
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(19),
                            child: ChoiceChip(
                              checkmarkColor: Colors.red,
                              label: const Text("Admin"),
                              selected: true,
                              onSelected: (bool selected) async {
                                // value = selected ? index : null;
                              },
                            ),
                          ),

*/
