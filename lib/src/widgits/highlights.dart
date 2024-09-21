
import 'package:flutter/material.dart';
import 'package:project_7/src/helper/screen.dart';

class Highlights extends StatelessWidget {
  const Highlights({
    super.key,
    this.imageSrc = "",
    this.onPressed,
    required this.projectTitle,
    required this.bootcamp,
  });
  final String projectTitle;
  final String bootcamp;
  final String? imageSrc;
  final Function()? onPressed;
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
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          projectTitle),
                      subtitle: Text(
                          style: const TextStyle(fontWeight: FontWeight.bold),
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
