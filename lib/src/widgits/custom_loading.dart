import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:project_7/src/helper/colors.dart';

customLoading(BuildContext context) {
  Color color = Colors.black;

  return Center(
    child: LoadingAnimationWidget.twistingDots(
      leftDotColor: const Color(0xFF1A1A3F),
      rightDotColor: color.secondaryColor,
      size: 200,
    ),
  );
}
