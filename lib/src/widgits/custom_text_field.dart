import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_7/src/helper/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.title,
      this.controller,
      this.icon,
      this.isPassword = false,
      this.keyboardType,
      this.inputFormatters,
      this.color,
      this.errorText});
  final String title;
  final TextEditingController? controller;
  final Widget? icon;
  final bool? isPassword;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? errorText;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      color: color?.primaryColor, fontWeight: FontWeight.w500),
                )),
            TextField(
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
                obscureText: isPassword!,
                controller: controller,
                decoration: InputDecoration(
                  errorText: errorText,
                  labelStyle: TextStyle(color: color!.primaryColor),
                  filled: true,
                  fillColor: color!.txtwhiteColor.withOpacity(15 / 100),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: color!.primaryColor,
                    ),
                  ),
                  hintText: "Enter your ${title.toLowerCase()}",
                  suffixIcon: icon,
                  border: const OutlineInputBorder(),
                )),
          ],
        ),
      ),
    );
  }
}