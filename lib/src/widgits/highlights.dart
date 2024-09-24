import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:project_7/src/helper/screen.dart';

class Highlights extends StatelessWidget {
  const Highlights({
    super.key,
    this.imageSrc = "",
    this.onPressed,
    required this.projectTitle,
    required this.bootcamp,
    this.color,
  });
  final String projectTitle;
  final String bootcamp;
  final String? imageSrc;
  final Function()? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          SizedBox(
              child: imageSrc != ""
                  ? Image.network(imageSrc!)
                  : Image.asset("assets/images/ddp.png")),
          SizedBox(
            width: context.getWidth(),
            height: context.getHeight(value: .2),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color?.holdingColor),
                          projectTitle),
                      subtitle: Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: color?.txtBlackColor.withOpacity(0.8)),
                          bootcamp),
                    ),
                  ),
                  IconButton(
                      onPressed: onPressed,
                      icon: const Icon(Icons.arrow_outward_sharp))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
