import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:project_7/src/helper/colors.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Colors.black;
    return Scaffold(
        body: Center(
      child: LoadingAnimationWidget.threeArchedCircle(
        color: color.primaryColor,
        size: 200,
      ),
    ));
  }
}
