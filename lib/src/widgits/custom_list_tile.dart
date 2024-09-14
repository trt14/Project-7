import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      this.widget,
      required this.color,
      required this.title,
      this.description = ""});
  final Color color;
  final Widget? widget;
  final String title;
  final String? description;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color.bgColor,
        child: widget,
      ),
      title: Text(title),
      subtitle: Text(description!),
    );
  }
}
