import 'package:flutter/material.dart';
import 'package:project_7/src/helper/colors.dart';
import 'package:url_launcher/url_launcher.dart';

launchStringUrl(String s_url) async {
  Uri url = Uri.parse(s_url);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

showAlertSnackBar(
    {required BuildContext context,
    required Color color,
    required String title,
    required Color colorStatus}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Center(
      child: Text(
        title,
        style: TextStyle(color: color.txtwhiteColor),
      ),
    ),
    backgroundColor: colorStatus,
  ));
}
