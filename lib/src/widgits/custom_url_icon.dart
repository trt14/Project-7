import 'package:flutter/material.dart';
import 'package:project_7/src/helper/functions.dart';

class CustomUrlIcon extends StatelessWidget {
  const CustomUrlIcon(
      {super.key, required this.url, required this.img, required this.width});
  final String url;
  final String img;
  final double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchStringUrl(url);
      },
      child: Image.asset(
        img,
        width: width,
      ),
    );
  }
}
