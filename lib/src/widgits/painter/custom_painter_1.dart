import 'dart:ui' as ui;

import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff8F97FF);
    path = Path();
    path.lineTo(size.width * 0.37, -0.43);
    path.cubicTo(size.width * 0.47, -0.4, size.width * 0.55, -0.26,
        size.width * 0.56, -0.13);
    path.cubicTo(size.width * 0.56, size.height * 0.01, size.width * 0.49,
        size.height * 0.14, size.width * 0.4, size.height * 0.22);
    path.cubicTo(size.width * 0.31, size.height * 0.3, size.width / 5,
        size.height / 3, size.width * 0.11, size.height * 0.4);
    path.cubicTo(0, size.height * 0.47, -0.11, size.height * 0.58, -0.19,
        size.height * 0.56);
    path.cubicTo(-0.27, size.height * 0.54, -0.32, size.height * 0.39, -0.36,
        size.height * 0.26);
    path.cubicTo(
        -0.41, size.height * 0.13, -0.44, size.height * 0.02, -0.44, -0.1);
    path.cubicTo(-0.44, -0.23, -0.4, -0.35, -0.32, -0.39);
    path.cubicTo(-0.24, -0.43, -0.12, -0.37, size.width * 0.01, -0.38);
    path.cubicTo(size.width * 0.13, -0.38, size.width * 0.26, -0.46,
        size.width * 0.37, -0.43);
    path.cubicTo(size.width * 0.37, -0.43, size.width * 0.37, -0.43,
        size.width * 0.37, -0.43);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
