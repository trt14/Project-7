import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_7/src/helper/screen.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class InitProject extends StatelessWidget {
  const InitProject({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    String? date;
    bool edit = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Project"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/project.png",
            width: context.getWidth(value: 0.65),
          ),
          CustomTextField(
            title: "User ID",
            color: color,
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
                    lastDate: DateTime.now().add(const Duration(days: 365 * 5)),
                  );
                  if (newDate != null) {
                    date = DateFormat('dd/MM/yyyy').format(newDate);
                    log("date :$date");
                  }
                },
                child: const Text("End edit of edit")),
          ),
        ],
      ),
    );
  }
}
