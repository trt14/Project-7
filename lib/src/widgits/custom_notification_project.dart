import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/screen.dart';

class CustomNotificationProject extends StatelessWidget {
  const CustomNotificationProject(
      {super.key, required this.color, required this.text, required this.icon});
  final Color color;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.getWidth(value: 90 / 100),
      height: context.getWidth(value: 0.15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color.bgColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(color: color.primaryColor),
          ),
        ],
      ),
    );
  }
}
