import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/screen.dart';

class CustomElevatedBTN extends StatelessWidget {
  const CustomElevatedBTN(
      {super.key, required this.text, required this.color, this.onPressed});
  final String text;
  final Color color;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            fixedSize: WidgetStateProperty.all(
                Size.fromWidth(context.getWidth(value: 0.5))),
            backgroundColor: WidgetStateProperty.all(color.primaryColor)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: color.txtwhiteColor),
        ));
  }
}
