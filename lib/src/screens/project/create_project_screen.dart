import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/widgits/custom_circle_profile.dart';
import 'package:project_7/src/widgits/custom_text_field.dart';

class CreateProjectScreen extends StatelessWidget {
  const CreateProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    List<DateTime> _dates = [];
    return Scaffold(
      appBar: AppBar(
        title: Text("New Project"),
      ),
      body: Column(
        children: [
          //ProfilePic(img_url: "", color: color.primaryColor),
          CustomTextField(
            title: "Project Name",
            color: color,
          ),
          CustomTextField(
            title: "Bootcamp Name",
            color: color,
          ),
          CustomTextField(
            title: "Description",
            maxLines: 4,
            color: color,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2030));
                  },
                  child: Text("Start date")),
              TextButton(
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2024),
                        lastDate: DateTime(2030));
                  },
                  child: Text("End date"))
            ],
          )
        ],
      ),
    );
  }
}
