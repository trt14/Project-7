import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:project_7/src/helper/colors.dart';

// customLoading(BuildContext context) {
//   return Center(
//     child: LoadingAnimationWidget.twistingDots(
//       leftDotColor: const Color(0xFF1A1A3F),
//       rightDotColor: const Color(0xFFEA3799),
//       size: 200,
//     ),
//   );
// }

class CustomLoading extends StatelessWidget {
  const CustomLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.twistingDots(
          leftDotColor: const Color(0xFF1A1A3F),
          rightDotColor: const Color(0xFFEA3799),
          size: 200,
        ),
      ),
    );
  }
}
