import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';

class CustomElevatedBTN extends StatelessWidget {
  const CustomElevatedBTN({super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(color.primaryColor)),
        onPressed: () {},
        child: Text(
          "Save",
          style: TextStyle(color: color.txtwhiteColor),
        ));
  }
}
