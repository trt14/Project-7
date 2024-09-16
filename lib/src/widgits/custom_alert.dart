import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:project_7/src/helper/colors.dart';

customAlert(BuildContext context) {
  return PanaraInfoDialog.show(
    context,
    title: "Hello",
    message: "This is the PanaraInfoDialog",
    buttonText: "Okay",
    onTapDismiss: () {
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.normal,
    barrierDismissible: false, 
  );
}
