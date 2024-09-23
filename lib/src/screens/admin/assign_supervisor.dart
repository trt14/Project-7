import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project_7/src/helper/qr_code_scanner.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/widgits/custom_elevated_btn.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class AssignSupervisor extends StatelessWidget {
  const AssignSupervisor({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController idController = TextEditingController();
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(children: [
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
                        ]),
                      ],
                    ),
                  ),
                  CustomElevatedBTN(text: "Assing", color: Colors.black)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
