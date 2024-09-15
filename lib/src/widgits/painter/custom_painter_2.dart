  import 'package:flutter/material.dart';

class MyPainter2 extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
      Paint paint = Paint();
      Path path = Path();
  

      // Path number 1
  

      paint.color = Color(0xffe0e0e0);
      path = Path();
      path.lineTo(size.width * 0.91, size.height * 1.12);
      path.cubicTo(size.width * 0.88, size.height * 1.1, size.width * 0.88, size.height * 1.05, size.width * 0.91, size.height * 1.03);
      path.cubicTo(size.width * 0.95, size.height, size.width, size.height, size.width * 1.04, size.height * 1.03);
      path.cubicTo(size.width * 1.08, size.height * 1.05, size.width * 1.08, size.height * 1.1, size.width * 1.04, size.height * 1.12);
      path.cubicTo(size.width, size.height * 1.15, size.width * 0.95, size.height * 1.15, size.width * 0.91, size.height * 1.12);
      path.cubicTo(size.width * 0.91, size.height * 1.12, size.width * 0.91, size.height * 1.12, size.width * 0.91, size.height * 1.12);
      canvas.drawPath(path, paint);
  

      // Path number 2
  

      paint.color = Color(0xffe0e0e0);
      path = Path();
      path.lineTo(size.width * 0.17, size.height * 1.12);
      path.cubicTo(size.width * 0.17, size.height * 1.12, size.width * 0.07, size.height * 1.06, size.width * 0.07, size.height * 1.06);
      path.cubicTo(size.width * 0.06, size.height * 1.05, size.width * 0.06, size.height * 1.05, size.width * 0.07, size.height * 1.04);
      path.cubicTo(size.width * 0.07, size.height * 1.04, size.width * 0.63, size.height * 0.66, size.width * 0.63, size.height * 0.66);
      path.cubicTo(size.width * 0.64, size.height * 0.66, size.width * 0.64, size.height * 0.66, size.width * 0.65, size.height * 0.66);
      path.cubicTo(size.width * 0.65, size.height * 0.66, size.width * 0.75, size.height * 0.73, size.width * 0.75, size.height * 0.73);
      path.cubicTo(size.width * 0.75, size.height * 0.73, size.width * 0.75, size.height * 0.74, size.width * 0.75, size.height * 0.74);
      path.cubicTo(size.width * 0.75, size.height * 0.74, size.width * 0.19, size.height * 1.12, size.width * 0.19, size.height * 1.12);
      path.cubicTo(size.width * 0.18, size.height * 1.13, size.width * 0.17, size.height * 1.13, size.width * 0.17, size.height * 1.12);
      path.cubicTo(size.width * 0.17, size.height * 1.12, size.width * 0.17, size.height * 1.12, size.width * 0.17, size.height * 1.12);
      canvas.drawPath(path, paint);
  

      // Path number 3
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.6, size.height * 0.95, size.width * 0.6, size.height * 0.95);
      path.cubicTo(size.width * 0.6, size.height * 0.94, size.width * 0.61, size.height * 0.94, size.width * 0.61, size.height * 0.93);
      path.cubicTo(size.width * 0.61, size.height * 0.92, size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.91);
      path.cubicTo(size.width * 0.61, size.height * 0.91, size.width * 0.52, size.height * 0.86, size.width * 0.52, size.height * 0.86);
      path.cubicTo(size.width * 0.52, size.height * 0.85, size.width * 0.51, size.height * 0.85, size.width * 0.51, size.height * 0.84);
      path.cubicTo(size.width * 0.51, size.height * 0.84, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.37, size.height * 0.82, size.width * 0.37, size.height * 0.82);
      path.cubicTo(size.width * 0.37, size.height * 0.82, size.width * 0.37, size.height * 0.94, size.width * 0.37, size.height * 0.94);
      path.cubicTo(size.width * 0.37, size.height * 0.95, size.width * 0.37, size.height * 0.95, size.width * 0.38, size.height * 0.96);
      path.cubicTo(size.width * 0.38, size.height * 0.96, size.width * 0.45, size.height, size.width * 0.45, size.height);
      path.cubicTo(size.width * 0.47, size.height * 1.02, size.width / 2, size.height * 1.02, size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.51, size.height, size.width * 0.51, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 4
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.6, size.height * 0.95, size.width * 0.6, size.height * 0.95);
      path.cubicTo(size.width * 0.6, size.height * 0.94, size.width * 0.61, size.height * 0.94, size.width * 0.61, size.height * 0.93);
      path.cubicTo(size.width * 0.61, size.height * 0.92, size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.91);
      path.cubicTo(size.width * 0.61, size.height * 0.91, size.width * 0.52, size.height * 0.86, size.width * 0.52, size.height * 0.86);
      path.cubicTo(size.width * 0.52, size.height * 0.85, size.width * 0.51, size.height * 0.85, size.width * 0.51, size.height * 0.84);
      path.cubicTo(size.width * 0.51, size.height * 0.84, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.37, size.height * 0.82, size.width * 0.37, size.height * 0.82);
      path.cubicTo(size.width * 0.37, size.height * 0.82, size.width * 0.37, size.height * 0.94, size.width * 0.37, size.height * 0.94);
      path.cubicTo(size.width * 0.37, size.height * 0.95, size.width * 0.37, size.height * 0.95, size.width * 0.38, size.height * 0.96);
      path.cubicTo(size.width * 0.38, size.height * 0.96, size.width * 0.45, size.height, size.width * 0.45, size.height);
      path.cubicTo(size.width * 0.47, size.height * 1.02, size.width / 2, size.height * 1.02, size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.51, size.height, size.width * 0.51, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 5
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.4, size.height * 0.96);
      path.cubicTo(size.width * 0.4, size.height * 0.96, size.width * 0.4, size.height * 0.97, size.width * 0.4, size.height * 0.97);
      path.cubicTo(size.width * 0.4, size.height * 0.97, size.width * 0.38, size.height * 0.96, size.width * 0.38, size.height * 0.96);
      path.cubicTo(size.width * 0.37, size.height * 0.95, size.width * 0.37, size.height * 0.95, size.width * 0.37, size.height * 0.94);
      path.cubicTo(size.width * 0.37, size.height * 0.94, size.width * 0.37, size.height * 0.82, size.width * 0.37, size.height * 0.82);
      path.cubicTo(size.width * 0.37, size.height * 0.82, size.width * 0.4, size.height * 0.8, size.width * 0.4, size.height * 0.8);
      path.cubicTo(size.width * 0.4, size.height * 0.81, size.width * 0.4, size.height * 0.82, size.width * 0.4, size.height * 0.82);
      path.cubicTo(size.width * 0.4, size.height * 0.82, size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.84);
      path.cubicTo(size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.93, size.width * 0.38, size.height * 0.93);
      path.cubicTo(size.width * 0.38, size.height * 0.94, size.width * 0.38, size.height * 0.95, size.width * 0.39, size.height * 0.95);
      path.cubicTo(size.width * 0.39, size.height * 0.95, size.width * 0.4, size.height * 0.96, size.width * 0.4, size.height * 0.96);
      canvas.drawPath(path, paint);
  

      // Path number 6
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.38, size.height * 0.93);
      path.cubicTo(size.width * 0.38, size.height * 0.94, size.width * 0.38, size.height * 0.95, size.width * 0.39, size.height * 0.95);
      path.cubicTo(size.width * 0.39, size.height * 0.95, size.width * 0.45, size.height, size.width * 0.45, size.height);
      path.cubicTo(size.width * 0.47, size.height, size.width / 2, size.height, size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.6, size.height * 0.94, size.width * 0.6, size.height * 0.94);
      path.cubicTo(size.width * 0.61, size.height * 0.92, size.width * 0.61, size.height * 0.9, size.width * 0.6, size.height * 0.89);
      path.cubicTo(size.width * 0.6, size.height * 0.89, size.width * 0.53, size.height * 0.85, size.width * 0.53, size.height * 0.85);
      path.cubicTo(size.width * 0.53, size.height * 0.85, size.width * 0.52, size.height * 0.84, size.width * 0.52, size.height * 0.83);
      path.cubicTo(size.width * 0.52, size.height * 0.83, size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.84);
      path.cubicTo(size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.93, size.width * 0.38, size.height * 0.93);
      canvas.drawPath(path, paint);
  

      // Path number 7
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.38, size.height * 0.93);
      path.cubicTo(size.width * 0.38, size.height * 0.94, size.width * 0.38, size.height * 0.95, size.width * 0.39, size.height * 0.95);
      path.cubicTo(size.width * 0.39, size.height * 0.95, size.width * 0.45, size.height, size.width * 0.45, size.height);
      path.cubicTo(size.width * 0.47, size.height, size.width / 2, size.height, size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.6, size.height * 0.94, size.width * 0.6, size.height * 0.94);
      path.cubicTo(size.width * 0.61, size.height * 0.92, size.width * 0.61, size.height * 0.9, size.width * 0.6, size.height * 0.89);
      path.cubicTo(size.width * 0.6, size.height * 0.89, size.width * 0.53, size.height * 0.85, size.width * 0.53, size.height * 0.85);
      path.cubicTo(size.width * 0.53, size.height * 0.85, size.width * 0.52, size.height * 0.84, size.width * 0.52, size.height * 0.83);
      path.cubicTo(size.width * 0.52, size.height * 0.83, size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.84);
      path.cubicTo(size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.93, size.width * 0.38, size.height * 0.93);
      canvas.drawPath(path, paint);
  

      // Path number 8
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.55, size.height * 0.86);
      path.cubicTo(size.width * 0.55, size.height * 0.86, size.width * 0.55, size.height * 0.86, size.width * 0.55, size.height * 0.86);
      path.cubicTo(size.width * 0.55, size.height * 0.86, size.width * 0.53, size.height * 0.85, size.width * 0.53, size.height * 0.85);
      path.cubicTo(size.width * 0.53, size.height * 0.85, size.width * 0.52, size.height * 0.84, size.width * 0.52, size.height * 0.83);
      path.cubicTo(size.width * 0.52, size.height * 0.83, size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.84);
      path.cubicTo(size.width * 0.38, size.height * 0.84, size.width * 0.38, size.height * 0.93, size.width * 0.38, size.height * 0.93);
      path.cubicTo(size.width * 0.38, size.height * 0.94, size.width * 0.38, size.height * 0.95, size.width * 0.39, size.height * 0.95);
      path.cubicTo(size.width * 0.39, size.height * 0.95, size.width * 0.4, size.height * 0.96, size.width * 0.4, size.height * 0.96);
      path.cubicTo(size.width * 0.4, size.height * 0.96, size.width * 0.55, size.height * 0.86, size.width * 0.55, size.height * 0.86);
      canvas.drawPath(path, paint);
  

      // Path number 9
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.61, size.height * 0.91);
      path.cubicTo(size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.93, size.width * 0.61, size.height * 0.93);
      path.cubicTo(size.width * 0.61, size.height * 0.94, size.width * 0.6, size.height * 0.94, size.width * 0.6, size.height * 0.95);
      path.cubicTo(size.width * 0.6, size.height * 0.95, size.width * 0.51, size.height, size.width * 0.51, size.height);
      path.cubicTo(size.width / 2, size.height, size.width * 0.49, size.height, size.width * 0.48, size.height);
      path.cubicTo(size.width * 0.48, size.height, size.width * 0.48, size.height, size.width * 0.48, size.height);
      path.cubicTo(size.width * 0.49, size.height, size.width / 2, size.height, size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.6, size.height * 0.94, size.width * 0.6, size.height * 0.94);
      path.cubicTo(size.width * 0.6, size.height * 0.93, size.width * 0.61, size.height * 0.92, size.width * 0.61, size.height * 0.91);
      path.cubicTo(size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.91);
      canvas.drawPath(path, paint);
  

      // Path number 10
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.61, size.height * 0.91);
      path.cubicTo(size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.93, size.width * 0.61, size.height * 0.93);
      path.cubicTo(size.width * 0.61, size.height * 0.94, size.width * 0.6, size.height * 0.94, size.width * 0.6, size.height * 0.95);
      path.cubicTo(size.width * 0.6, size.height * 0.95, size.width * 0.51, size.height, size.width * 0.51, size.height);
      path.cubicTo(size.width / 2, size.height, size.width * 0.49, size.height, size.width * 0.48, size.height);
      path.cubicTo(size.width * 0.48, size.height, size.width * 0.48, size.height, size.width * 0.48, size.height);
      path.cubicTo(size.width * 0.49, size.height, size.width / 2, size.height, size.width * 0.51, size.height);
      path.cubicTo(size.width * 0.51, size.height, size.width * 0.6, size.height * 0.94, size.width * 0.6, size.height * 0.94);
      path.cubicTo(size.width * 0.6, size.height * 0.93, size.width * 0.61, size.height * 0.92, size.width * 0.61, size.height * 0.91);
      path.cubicTo(size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.91, size.width * 0.61, size.height * 0.91);
      canvas.drawPath(path, paint);
  

      // Path number 11
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.15, size.height * 1.05);
      path.cubicTo(size.width * 0.15, size.height * 1.05, size.width * 0.16, size.height * 1.05, size.width * 0.17, size.height * 1.05);
      path.cubicTo(size.width * 0.17, size.height * 1.05, size.width * 0.73, size.height * 0.67, size.width * 0.73, size.height * 0.67);
      path.cubicTo(size.width * 0.73, size.height * 0.66, size.width * 0.74, size.height * 0.65, size.width * 0.74, size.height * 0.64);
      path.cubicTo(size.width * 0.74, size.height * 0.64, size.width * 0.74, size.height * 0.11, size.width * 0.74, size.height * 0.11);
      path.cubicTo(size.width * 0.74, size.height * 0.1, size.width * 0.73, size.height * 0.09, size.width * 0.73, size.height * 0.08);
      path.cubicTo(size.width * 0.72, size.height * 0.08, size.width * 0.71, size.height * 0.08, size.width * 0.71, size.height * 0.09);
      path.cubicTo(size.width * 0.71, size.height * 0.09, size.width * 0.15, size.height * 0.47, size.width * 0.15, size.height * 0.47);
      path.cubicTo(size.width * 0.14, size.height * 0.47, size.width * 0.14, size.height * 0.48, size.width * 0.14, size.height * 0.49);
      path.cubicTo(size.width * 0.14, size.height * 0.49, size.width * 0.14, size.height * 1.03, size.width * 0.14, size.height * 1.03);
      path.cubicTo(size.width * 0.14, size.height * 1.04, size.width * 0.14, size.height * 1.05, size.width * 0.15, size.height * 1.05);
      path.cubicTo(size.width * 0.15, size.height * 1.05, size.width * 0.15, size.height * 1.05, size.width * 0.15, size.height * 1.05);
      canvas.drawPath(path, paint);
  

      // Path number 12
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.17, size.height * 1.05);
      path.cubicTo(size.width * 0.17, size.height * 1.05, size.width * 0.73, size.height * 0.67, size.width * 0.73, size.height * 0.67);
      path.cubicTo(size.width * 0.73, size.height * 0.66, size.width * 0.74, size.height * 0.65, size.width * 0.74, size.height * 0.64);
      path.cubicTo(size.width * 0.74, size.height * 0.64, size.width * 0.74, size.height * 0.11, size.width * 0.74, size.height * 0.11);
      path.cubicTo(size.width * 0.74, size.height * 0.1, size.width * 0.73, size.height * 0.09, size.width * 0.73, size.height * 0.1);
      path.cubicTo(size.width * 0.73, size.height * 0.1, size.width * 0.17, size.height * 0.48, size.width * 0.17, size.height * 0.48);
      path.cubicTo(size.width * 0.16, size.height * 0.49, size.width * 0.16, size.height / 2, size.width * 0.16, size.height / 2);
      path.cubicTo(size.width * 0.16, size.height / 2, size.width * 0.16, size.height * 1.04, size.width * 0.16, size.height * 1.04);
      path.cubicTo(size.width * 0.16, size.height * 1.05, size.width * 0.16, size.height * 1.05, size.width * 0.17, size.height * 1.05);
      path.cubicTo(size.width * 0.17, size.height * 1.05, size.width * 0.17, size.height * 1.05, size.width * 0.17, size.height * 1.05);
      canvas.drawPath(path, paint);
  

      // Path number 13
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.17, size.height * 1.05);
      path.cubicTo(size.width * 0.17, size.height * 1.05, size.width * 0.73, size.height * 0.67, size.width * 0.73, size.height * 0.67);
      path.cubicTo(size.width * 0.73, size.height * 0.66, size.width * 0.74, size.height * 0.65, size.width * 0.74, size.height * 0.64);
      path.cubicTo(size.width * 0.74, size.height * 0.64, size.width * 0.74, size.height * 0.11, size.width * 0.74, size.height * 0.11);
      path.cubicTo(size.width * 0.74, size.height * 0.1, size.width * 0.73, size.height * 0.09, size.width * 0.73, size.height * 0.1);
      path.cubicTo(size.width * 0.73, size.height * 0.1, size.width * 0.17, size.height * 0.48, size.width * 0.17, size.height * 0.48);
      path.cubicTo(size.width * 0.16, size.height * 0.49, size.width * 0.16, size.height / 2, size.width * 0.16, size.height / 2);
      path.cubicTo(size.width * 0.16, size.height / 2, size.width * 0.16, size.height * 1.04, size.width * 0.16, size.height * 1.04);
      path.cubicTo(size.width * 0.16, size.height * 1.05, size.width * 0.16, size.height * 1.05, size.width * 0.17, size.height * 1.05);
      path.cubicTo(size.width * 0.17, size.height * 1.05, size.width * 0.17, size.height * 1.05, size.width * 0.17, size.height * 1.05);
      canvas.drawPath(path, paint);
  

      // Path number 14
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.17, size.height * 1.06);
      path.cubicTo(size.width * 0.16, size.height * 1.07, size.width * 0.15, size.height * 1.07, size.width * 0.15, size.height * 1.06);
      path.cubicTo(size.width * 0.14, size.height * 1.06, size.width * 0.14, size.height * 1.05, size.width * 0.14, size.height * 1.04);
      path.cubicTo(size.width * 0.14, size.height * 1.04, size.width * 0.14, size.height, size.width * 0.14, size.height);
      path.cubicTo(size.width * 0.14, size.height, size.width * 0.16, size.height, size.width * 0.16, size.height);
      path.cubicTo(size.width * 0.16, size.height, size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.06);
      path.cubicTo(size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.07, size.width * 0.17, size.height * 1.06);
      path.cubicTo(size.width * 0.17, size.height * 1.06, size.width * 0.17, size.height * 1.06, size.width * 0.17, size.height * 1.06);
      canvas.drawPath(path, paint);
  

      // Path number 15
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.17, size.height * 1.06);
      path.cubicTo(size.width * 0.16, size.height * 1.07, size.width * 0.15, size.height * 1.07, size.width * 0.15, size.height * 1.06);
      path.cubicTo(size.width * 0.14, size.height * 1.06, size.width * 0.14, size.height * 1.05, size.width * 0.14, size.height * 1.04);
      path.cubicTo(size.width * 0.14, size.height * 1.04, size.width * 0.14, size.height, size.width * 0.14, size.height);
      path.cubicTo(size.width * 0.14, size.height, size.width * 0.16, size.height, size.width * 0.16, size.height);
      path.cubicTo(size.width * 0.16, size.height, size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.06);
      path.cubicTo(size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.07, size.width * 0.17, size.height * 1.06);
      path.cubicTo(size.width * 0.17, size.height * 1.06, size.width * 0.17, size.height * 1.06, size.width * 0.17, size.height * 1.06);
      canvas.drawPath(path, paint);
  

      // Path number 16
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.16, size.height);
      path.cubicTo(size.width * 0.16, size.height, size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.06);
      path.cubicTo(size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.07, size.width * 0.17, size.height * 1.06);
      path.cubicTo(size.width * 0.17, size.height * 1.06, size.width * 0.73, size.height * 0.68, size.width * 0.73, size.height * 0.68);
      path.cubicTo(size.width * 0.73, size.height * 0.67, size.width * 0.74, size.height * 0.67, size.width * 0.74, size.height * 0.66);
      path.cubicTo(size.width * 0.74, size.height * 0.66, size.width * 0.74, size.height * 0.61, size.width * 0.74, size.height * 0.61);
      path.cubicTo(size.width * 0.74, size.height * 0.61, size.width * 0.16, size.height, size.width * 0.16, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 17
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.16, size.height);
      path.cubicTo(size.width * 0.16, size.height, size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.06);
      path.cubicTo(size.width * 0.16, size.height * 1.06, size.width * 0.16, size.height * 1.07, size.width * 0.17, size.height * 1.06);
      path.cubicTo(size.width * 0.17, size.height * 1.06, size.width * 0.73, size.height * 0.68, size.width * 0.73, size.height * 0.68);
      path.cubicTo(size.width * 0.73, size.height * 0.67, size.width * 0.74, size.height * 0.67, size.width * 0.74, size.height * 0.66);
      path.cubicTo(size.width * 0.74, size.height * 0.66, size.width * 0.74, size.height * 0.61, size.width * 0.74, size.height * 0.61);
      path.cubicTo(size.width * 0.74, size.height * 0.61, size.width * 0.16, size.height, size.width * 0.16, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 18
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.18, size.height * 0.94);
      path.cubicTo(size.width * 0.18, size.height * 0.94, size.width * 0.18, size.height * 0.51, size.width * 0.18, size.height * 0.51);
      path.cubicTo(size.width * 0.18, size.height * 0.51, size.width * 0.18, size.height / 2, size.width * 0.18, size.height / 2);
      path.cubicTo(size.width * 0.18, size.height / 2, size.width * 0.71, size.height * 0.14, size.width * 0.71, size.height * 0.14);
      path.cubicTo(size.width * 0.72, size.height * 0.13, size.width * 0.72, size.height * 0.13, size.width * 0.72, size.height * 0.14);
      path.cubicTo(size.width * 0.72, size.height * 0.14, size.width * 0.72, size.height * 0.57, size.width * 0.72, size.height * 0.57);
      path.cubicTo(size.width * 0.72, size.height * 0.58, size.width * 0.72, size.height * 0.58, size.width * 0.71, size.height * 0.59);
      path.cubicTo(size.width * 0.71, size.height * 0.59, size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.95);
      path.cubicTo(size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.94);
      path.cubicTo(size.width * 0.18, size.height * 0.94, size.width * 0.18, size.height * 0.94, size.width * 0.18, size.height * 0.94);
      canvas.drawPath(path, paint);
  

      // Path number 19
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 0.18, size.height * 0.94);
      path.cubicTo(size.width * 0.18, size.height * 0.94, size.width * 0.18, size.height * 0.51, size.width * 0.18, size.height * 0.51);
      path.cubicTo(size.width * 0.18, size.height * 0.51, size.width * 0.18, size.height / 2, size.width * 0.18, size.height / 2);
      path.cubicTo(size.width * 0.18, size.height / 2, size.width * 0.71, size.height * 0.14, size.width * 0.71, size.height * 0.14);
      path.cubicTo(size.width * 0.72, size.height * 0.13, size.width * 0.72, size.height * 0.13, size.width * 0.72, size.height * 0.14);
      path.cubicTo(size.width * 0.72, size.height * 0.14, size.width * 0.72, size.height * 0.57, size.width * 0.72, size.height * 0.57);
      path.cubicTo(size.width * 0.72, size.height * 0.58, size.width * 0.72, size.height * 0.58, size.width * 0.71, size.height * 0.59);
      path.cubicTo(size.width * 0.71, size.height * 0.59, size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.95);
      path.cubicTo(size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.94);
      path.cubicTo(size.width * 0.18, size.height * 0.94, size.width * 0.18, size.height * 0.94, size.width * 0.18, size.height * 0.94);
      canvas.drawPath(path, paint);
  

      // Path number 20
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.45, size.height * 0.82);
      path.cubicTo(size.width * 0.44, size.height * 0.83, size.width * 0.44, size.height * 0.83, size.width * 0.44, size.height * 0.84);
      path.cubicTo(size.width * 0.44, size.height * 0.85, size.width * 0.44, size.height * 0.85, size.width * 0.45, size.height * 0.85);
      path.cubicTo(size.width * 0.45, size.height * 0.84, size.width * 0.46, size.height * 0.84, size.width * 0.46, size.height * 0.83);
      path.cubicTo(size.width * 0.46, size.height * 0.82, size.width * 0.45, size.height * 0.82, size.width * 0.45, size.height * 0.82);
      path.cubicTo(size.width * 0.45, size.height * 0.82, size.width * 0.45, size.height * 0.82, size.width * 0.45, size.height * 0.82);
      canvas.drawPath(path, paint);
  

      // Path number 21
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.16, size.height * 0.49);
      path.cubicTo(size.width * 0.16, size.height / 2, size.width * 0.16, size.height / 2, size.width * 0.16, size.height / 2);
      path.cubicTo(size.width * 0.16, size.height / 2, size.width * 0.16, size.height, size.width * 0.16, size.height);
      path.cubicTo(size.width * 0.16, size.height, size.width * 0.14, size.height, size.width * 0.14, size.height);
      path.cubicTo(size.width * 0.14, size.height, size.width * 0.14, size.height * 0.49, size.width * 0.14, size.height * 0.49);
      path.cubicTo(size.width * 0.14, size.height * 0.49, size.width * 0.14, size.height * 0.48, size.width * 0.14, size.height * 0.48);
      path.cubicTo(size.width * 0.14, size.height * 0.48, size.width * 0.16, size.height * 0.49, size.width * 0.16, size.height * 0.49);
      canvas.drawPath(path, paint);
  

      // Path number 22
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.74, size.height * 0.1);
      path.cubicTo(size.width * 0.74, size.height * 0.1, size.width * 0.73, size.height * 0.1, size.width * 0.73, size.height * 0.1);
      path.cubicTo(size.width * 0.73, size.height * 0.1, size.width * 0.17, size.height * 0.48, size.width * 0.17, size.height * 0.48);
      path.cubicTo(size.width * 0.16, size.height * 0.48, size.width * 0.16, size.height * 0.49, size.width * 0.16, size.height * 0.49);
      path.cubicTo(size.width * 0.16, size.height * 0.49, size.width * 0.14, size.height * 0.48, size.width * 0.14, size.height * 0.48);
      path.cubicTo(size.width * 0.14, size.height * 0.47, size.width * 0.14, size.height * 0.47, size.width * 0.15, size.height * 0.47);
      path.cubicTo(size.width * 0.15, size.height * 0.47, size.width * 0.71, size.height * 0.09, size.width * 0.71, size.height * 0.09);
      path.cubicTo(size.width * 0.71, size.height * 0.08, size.width * 0.72, size.height * 0.08, size.width * 0.73, size.height * 0.08);
      path.cubicTo(size.width * 0.73, size.height * 0.09, size.width * 0.74, size.height * 0.1, size.width * 0.74, size.height * 0.1);
      path.cubicTo(size.width * 0.74, size.height * 0.1, size.width * 0.74, size.height * 0.1, size.width * 0.74, size.height * 0.1);
      canvas.drawPath(path, paint);
  

      // Path number 23
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.77, size.height * 0.17);
      path.cubicTo(size.width * 0.77, size.height * 0.17, size.width * 0.76, size.height * 0.17, size.width * 0.76, size.height * 0.17);
      path.cubicTo(size.width * 0.76, size.height * 0.17, size.width * 0.23, size.height * 0.53, size.width * 0.23, size.height * 0.53);
      path.cubicTo(size.width * 0.23, size.height * 0.54, size.width * 0.23, size.height * 0.54, size.width * 0.23, size.height * 0.55);
      path.cubicTo(size.width * 0.23, size.height * 0.55, size.width * 0.23, size.height * 0.98, size.width * 0.23, size.height * 0.98);
      path.cubicTo(size.width * 0.23, size.height * 0.98, size.width * 0.23, size.height * 0.98, size.width * 0.23, size.height);
      path.cubicTo(size.width * 0.23, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.77, size.height * 0.63, size.width * 0.77, size.height * 0.63);
      path.cubicTo(size.width * 0.78, size.height * 0.63, size.width * 0.78, size.height * 0.62, size.width * 0.78, size.height * 0.61);
      path.cubicTo(size.width * 0.78, size.height * 0.61, size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.17, size.width * 0.77, size.height * 0.17, size.width * 0.77, size.height * 0.17);
      path.cubicTo(size.width * 0.77, size.height * 0.17, size.width * 0.77, size.height * 0.17, size.width * 0.77, size.height * 0.17);
      canvas.drawPath(path, paint);
  

      // Path number 24
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.24, size.height * 0.54);
      path.cubicTo(size.width * 0.24, size.height * 0.54, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.17, size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.61, size.width * 0.78, size.height * 0.61);
      path.cubicTo(size.width * 0.78, size.height * 0.62, size.width * 0.78, size.height * 0.63, size.width * 0.77, size.height * 0.63);
      path.cubicTo(size.width * 0.77, size.height * 0.63, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height * 0.98);
      path.cubicTo(size.width * 0.24, size.height * 0.98, size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.55);
      path.cubicTo(size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54);
      path.cubicTo(size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54);
      canvas.drawPath(path, paint);
  

      // Path number 25
  

      paint.color = Color(0xffe0e0e0);
      path = Path();
      path.lineTo(size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.61, size.width * 0.78, size.height * 0.61);
      path.cubicTo(size.width * 0.78, size.height * 0.62, size.width * 0.77, size.height * 0.62, size.width * 0.77, size.height * 0.63);
      path.cubicTo(size.width * 0.77, size.height * 0.63, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height * 0.98);
      path.cubicTo(size.width * 0.24, size.height * 0.98, size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.55);
      path.cubicTo(size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54);
      path.cubicTo(size.width * 0.24, size.height * 0.54, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      path.lineTo(size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54);
      path.cubicTo(size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.55);
      path.cubicTo(size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.98, size.width * 0.24, size.height * 0.98);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.77, size.height * 0.63, size.width * 0.77, size.height * 0.63);
      path.cubicTo(size.width * 0.78, size.height * 0.63, size.width * 0.78, size.height * 0.62, size.width * 0.78, size.height * 0.61);
      path.cubicTo(size.width * 0.78, size.height * 0.61, size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      canvas.drawPath(path, paint);
  

      // Path number 26
  

      paint.color = Color(0xfff0f0f0);
      path = Path();
      path.lineTo(size.width * 0.23, size.height);
      path.cubicTo(size.width * 0.23, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height);
      path.cubicTo(size.width * 0.24, size.height, size.width * 0.24, size.height, size.width * 0.24, size.height * 0.98);
      path.cubicTo(size.width * 0.24, size.height * 0.98, size.width * 0.24, size.height * 0.58, size.width * 0.24, size.height * 0.58);
      path.cubicTo(size.width * 0.24, size.height * 0.58, size.width * 0.23, size.height * 0.58, size.width * 0.23, size.height * 0.58);
      path.cubicTo(size.width * 0.23, size.height * 0.58, size.width * 0.23, size.height * 0.98, size.width * 0.23, size.height * 0.98);
      path.cubicTo(size.width * 0.23, size.height * 0.98, size.width * 0.23, size.height * 0.98, size.width * 0.23, size.height);
      path.cubicTo(size.width * 0.23, size.height, size.width * 0.23, size.height, size.width * 0.23, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 27
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.78, size.height * 0.18);
      path.cubicTo(size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.17, size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54);
      path.cubicTo(size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.55);
      path.cubicTo(size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.58, size.width * 0.24, size.height * 0.58);
      path.cubicTo(size.width * 0.24, size.height * 0.58, size.width * 0.78, size.height / 5, size.width * 0.78, size.height / 5);
      path.cubicTo(size.width * 0.78, size.height / 5, size.width * 0.78, size.height * 0.18, size.width * 0.78, size.height * 0.18);
      canvas.drawPath(path, paint);
  

      // Path number 28
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54);
      path.cubicTo(size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.54, size.width * 0.24, size.height * 0.55);
      path.cubicTo(size.width * 0.24, size.height * 0.55, size.width * 0.23, size.height * 0.54, size.width * 0.23, size.height * 0.54);
      path.cubicTo(size.width * 0.23, size.height * 0.54, size.width * 0.23, size.height * 0.53, size.width * 0.23, size.height * 0.53);
      path.cubicTo(size.width * 0.23, size.height * 0.53, size.width * 0.76, size.height * 0.17, size.width * 0.76, size.height * 0.17);
      path.cubicTo(size.width * 0.76, size.height * 0.17, size.width * 0.77, size.height * 0.17, size.width * 0.77, size.height * 0.17);
      path.cubicTo(size.width * 0.77, size.height * 0.17, size.width * 0.77, size.height * 0.17, size.width * 0.78, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.17, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      path.cubicTo(size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18, size.width * 0.77, size.height * 0.18);
      canvas.drawPath(path, paint);
  

      // Path number 29
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.23, size.height * 0.58);
      path.cubicTo(size.width * 0.23, size.height * 0.58, size.width * 0.23, size.height * 0.55, size.width * 0.23, size.height * 0.55);
      path.cubicTo(size.width * 0.23, size.height * 0.54, size.width * 0.23, size.height * 0.54, size.width * 0.23, size.height * 0.54);
      path.cubicTo(size.width * 0.23, size.height * 0.54, size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.55);
      path.cubicTo(size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.55);
      path.cubicTo(size.width * 0.24, size.height * 0.55, size.width * 0.24, size.height * 0.58, size.width * 0.24, size.height * 0.58);
      path.cubicTo(size.width * 0.24, size.height * 0.58, size.width * 0.23, size.height * 0.58, size.width * 0.23, size.height * 0.58);
      canvas.drawPath(path, paint);
  

      // Path number 30
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.67, size.height * 0.51);
      path.cubicTo(size.width * 0.67, size.height * 0.51, size.width * 0.35, size.height * 0.72, size.width * 0.35, size.height * 0.72);
      path.cubicTo(size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.73);
      path.cubicTo(size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.84, size.width * 0.35, size.height * 0.84);
      path.cubicTo(size.width * 0.35, size.height * 0.85, size.width * 0.35, size.height * 0.85, size.width * 0.35, size.height * 0.85);
      path.cubicTo(size.width * 0.35, size.height * 0.85, size.width * 0.36, size.height * 0.86, size.width * 0.36, size.height * 0.86);
      path.cubicTo(size.width * 0.36, size.height * 0.86, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.69, size.height * 0.64, size.width * 0.69, size.height * 0.64);
      path.cubicTo(size.width * 0.69, size.height * 0.64, size.width * 0.69, size.height * 0.64, size.width * 0.69, size.height * 0.63);
      path.cubicTo(size.width * 0.69, size.height * 0.63, size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52);
      path.cubicTo(size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.51, size.width * 0.69, size.height * 0.51);
      path.cubicTo(size.width * 0.69, size.height * 0.51, size.width * 0.68, size.height * 0.51, size.width * 0.68, size.height * 0.51);
      path.cubicTo(size.width * 0.67, size.height / 2, size.width * 0.67, size.height / 2, size.width * 0.67, size.height * 0.51);
      path.cubicTo(size.width * 0.67, size.height * 0.51, size.width * 0.67, size.height * 0.51, size.width * 0.67, size.height * 0.51);
      canvas.drawPath(path, paint);
  

      // Path number 31
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 0.69, size.height * 0.52);
      path.cubicTo(size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52);
      path.cubicTo(size.width * 0.69, size.height * 0.52, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.73);
      path.cubicTo(size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.72, size.width * 0.35, size.height * 0.72);
      path.cubicTo(size.width * 0.35, size.height * 0.72, size.width * 0.67, size.height * 0.51, size.width * 0.67, size.height * 0.51);
      path.cubicTo(size.width * 0.67, size.height / 2, size.width * 0.67, size.height / 2, size.width * 0.68, size.height * 0.51);
      path.cubicTo(size.width * 0.68, size.height * 0.51, size.width * 0.69, size.height * 0.51, size.width * 0.69, size.height * 0.51);
      path.cubicTo(size.width * 0.69, size.height * 0.51, size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52);
      path.cubicTo(size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52);
      canvas.drawPath(path, paint);
  

      // Path number 32
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.36, size.height * 0.86, size.width * 0.36, size.height * 0.86);
      path.cubicTo(size.width * 0.36, size.height * 0.86, size.width * 0.35, size.height * 0.85, size.width * 0.35, size.height * 0.85);
      path.cubicTo(size.width * 0.35, size.height * 0.85, size.width * 0.35, size.height * 0.85, size.width * 0.35, size.height * 0.84);
      path.cubicTo(size.width * 0.35, size.height * 0.84, size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.73);
      path.cubicTo(size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.73);
      path.cubicTo(size.width * 0.35, size.height * 0.73, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.75, size.width * 0.37, size.height * 0.75);
      path.cubicTo(size.width * 0.37, size.height * 0.75, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      canvas.drawPath(path, paint);
  

      // Path number 33
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52);
      path.cubicTo(size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.52);
      path.cubicTo(size.width * 0.69, size.height * 0.52, size.width * 0.69, size.height * 0.63, size.width * 0.69, size.height * 0.63);
      path.cubicTo(size.width * 0.69, size.height * 0.64, size.width * 0.69, size.height * 0.64, size.width * 0.69, size.height * 0.64);
      path.cubicTo(size.width * 0.69, size.height * 0.64, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.75, size.width * 0.37, size.height * 0.75);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      canvas.drawPath(path, paint);
  

      // Path number 34
  

      paint.color = Color(0xff455a64);
      path = Path();
      path.lineTo(size.width * 0.58, size.height * 0.56);
      path.cubicTo(size.width * 0.58, size.height * 0.56, size.width * 0.35, size.height * 0.72, size.width * 0.35, size.height * 0.72);
      path.cubicTo(size.width * 0.35, size.height * 0.72, size.width * 0.35, size.height * 0.73, size.width * 0.35, size.height * 0.73);
      path.cubicTo(size.width * 0.35, size.height * 0.73, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.6, size.height * 0.58, size.width * 0.6, size.height * 0.58);
      path.cubicTo(size.width * 0.6, size.height * 0.58, size.width * 0.58, size.height * 0.56, size.width * 0.58, size.height * 0.56);
      canvas.drawPath(path, paint);
  

      // Path number 35
  

      paint.color = Color(0xff37474f);
      path = Path();
      path.lineTo(size.width * 0.6, size.height * 0.58);
      path.cubicTo(size.width * 0.6, size.height * 0.58, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74);
      path.cubicTo(size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.74, size.width * 0.37, size.height * 0.75);
      path.cubicTo(size.width * 0.37, size.height * 0.75, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86, size.width * 0.37, size.height * 0.86);
      path.cubicTo(size.width * 0.37, size.height * 0.86, size.width * 0.6, size.height * 0.7, size.width * 0.6, size.height * 0.7);
      path.cubicTo(size.width * 0.6, size.height * 0.7, size.width * 0.6, size.height * 0.58, size.width * 0.6, size.height * 0.58);
      canvas.drawPath(path, paint);
  

      // Path number 36
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.42, size.height * 0.72);
      path.cubicTo(size.width * 0.42, size.height * 0.72, size.width * 0.54, size.height * 0.64, size.width * 0.54, size.height * 0.64);
      path.cubicTo(size.width * 0.55, size.height * 0.64, size.width * 0.55, size.height * 0.64, size.width * 0.55, size.height * 0.65);
      path.cubicTo(size.width * 0.55, size.height * 0.65, size.width * 0.55, size.height * 0.66, size.width * 0.54, size.height * 0.66);
      path.cubicTo(size.width * 0.54, size.height * 0.66, size.width * 0.42, size.height * 0.75, size.width * 0.42, size.height * 0.75);
      path.cubicTo(size.width * 0.42, size.height * 0.75, size.width * 0.42, size.height * 0.75, size.width * 0.42, size.height * 0.74);
      path.cubicTo(size.width * 0.42, size.height * 0.73, size.width * 0.42, size.height * 0.73, size.width * 0.42, size.height * 0.72);
      path.cubicTo(size.width * 0.42, size.height * 0.72, size.width * 0.42, size.height * 0.72, size.width * 0.42, size.height * 0.72);
      canvas.drawPath(path, paint);
  

      // Path number 37
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.45, size.height * 0.75);
      path.cubicTo(size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75);
      path.cubicTo(size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75);
      path.cubicTo(size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.78);
      path.cubicTo(size.width * 0.45, size.height * 0.78, size.width * 0.45, size.height * 0.78, size.width * 0.45, size.height * 0.78);
      path.cubicTo(size.width * 0.45, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.77);
      path.cubicTo(size.width * 0.44, size.height * 0.77, size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76);
      path.cubicTo(size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76);
      path.cubicTo(size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76);
      path.cubicTo(size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76);
      path.cubicTo(size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76);
      path.cubicTo(size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.76);
      path.cubicTo(size.width * 0.44, size.height * 0.76, size.width * 0.44, size.height * 0.77, size.width * 0.44, size.height * 0.77);
      path.cubicTo(size.width * 0.44, size.height * 0.77, size.width * 0.44, size.height * 0.77, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78);
      path.cubicTo(size.width * 0.44, size.height * 0.78, size.width * 0.44, size.height * 0.78, size.width * 0.45, size.height * 0.78);
      path.cubicTo(size.width * 0.45, size.height * 0.78, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75);
      path.cubicTo(size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75);
      path.cubicTo(size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75);
      path.cubicTo(size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75);
      canvas.drawPath(path, paint);
  

      // Path number 38
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.76);
      path.cubicTo(size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76);
      path.cubicTo(size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76);
      path.cubicTo(size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76);
      path.cubicTo(size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.75, size.width * 0.45, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76);
      path.cubicTo(size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76, size.width * 0.45, size.height * 0.76);
      path.cubicTo(size.width * 0.45, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77, size.width * 0.45, size.height * 0.77);
      path.cubicTo(size.width * 0.45, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      canvas.drawPath(path, paint);
  

      // Path number 39
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75, size.width * 0.46, size.height * 0.75);
      path.cubicTo(size.width * 0.46, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.74);
      path.cubicTo(size.width * 0.47, size.height * 0.74, size.width * 0.47, size.height * 0.74, size.width * 0.47, size.height * 0.74);
      path.cubicTo(size.width * 0.47, size.height * 0.74, size.width * 0.47, size.height * 0.74, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.76);
      path.cubicTo(size.width * 0.47, size.height * 0.76, size.width * 0.47, size.height * 0.77, size.width * 0.47, size.height * 0.77);
      path.cubicTo(size.width * 0.47, size.height * 0.77, size.width * 0.47, size.height * 0.77, size.width * 0.47, size.height * 0.77);
      path.cubicTo(size.width * 0.47, size.height * 0.77, size.width * 0.46, size.height * 0.77, size.width * 0.46, size.height * 0.77);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.cubicTo(size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76, size.width * 0.46, size.height * 0.76);
      path.lineTo(size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      path.cubicTo(size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75, size.width * 0.47, size.height * 0.75);
      canvas.drawPath(path, paint);
  

      // Path number 40
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.75, size.width * 0.48, size.height * 0.75);
      path.cubicTo(size.width * 0.48, size.height * 0.75, size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76);
      path.cubicTo(size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76);
      path.cubicTo(size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76);
      path.cubicTo(size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76);
      path.cubicTo(size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76);
      path.cubicTo(size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.76);
      path.cubicTo(size.width * 0.48, size.height * 0.76, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      path.cubicTo(size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74, size.width * 0.48, size.height * 0.74);
      canvas.drawPath(path, paint);
  

      // Path number 41
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.75);
      path.cubicTo(size.width / 2, size.height * 0.75, size.width * 0.49, size.height * 0.75, size.width * 0.49, size.height * 0.75);
      path.cubicTo(size.width * 0.49, size.height * 0.75, size.width * 0.49, size.height * 0.75, size.width * 0.49, size.height * 0.75);
      path.cubicTo(size.width * 0.49, size.height * 0.75, size.width * 0.49, size.height * 0.75, size.width * 0.49, size.height * 0.75);
      path.cubicTo(size.width * 0.49, size.height * 0.75, size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72);
      path.cubicTo(size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72);
      path.cubicTo(size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72);
      path.cubicTo(size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72);
      path.cubicTo(size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72);
      path.cubicTo(size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.72);
      path.cubicTo(size.width * 0.49, size.height * 0.72, size.width * 0.49, size.height * 0.74, size.width * 0.49, size.height * 0.74);
      path.cubicTo(size.width * 0.49, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      canvas.drawPath(path, paint);
  

      // Path number 42
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width / 2, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.72);
      path.cubicTo(size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72);
      path.cubicTo(size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72);
      path.cubicTo(size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72);
      path.lineTo(size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72);
      path.cubicTo(size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72, size.width / 2, size.height * 0.72);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73);
      path.cubicTo(size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.73, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74, size.width / 2, size.height * 0.74);
      path.cubicTo(size.width / 2, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      canvas.drawPath(path, paint);
  

      // Path number 43
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.71, size.width * 0.51, size.height * 0.71);
      path.cubicTo(size.width * 0.51, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74);
      path.cubicTo(size.width * 0.51, size.height * 0.74, size.width * 0.51, size.height * 0.74, size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74);
      path.cubicTo(size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74, size.width * 0.52, size.height * 0.74);
      path.lineTo(size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73, size.width * 0.51, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72);
      path.cubicTo(size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72);
      path.cubicTo(size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72);
      path.cubicTo(size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72);
      path.cubicTo(size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72);
      path.cubicTo(size.width * 0.52, size.height * 0.72, size.width * 0.52, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      path.cubicTo(size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72, size.width * 0.51, size.height * 0.72);
      canvas.drawPath(path, paint);
  

      // Path number 44
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7);
      path.cubicTo(size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7);
      path.cubicTo(size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7);
      path.cubicTo(size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7);
      path.cubicTo(size.width * 0.52, size.height * 0.7, size.width * 0.52, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.lineTo(size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.73, size.width * 0.53, size.height * 0.73);
      path.cubicTo(size.width * 0.53, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.73);
      path.cubicTo(size.width * 0.52, size.height * 0.73, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71, size.width * 0.52, size.height * 0.71);
      path.cubicTo(size.width * 0.52, size.height * 0.71, size.width * 0.53, size.height * 0.71, size.width * 0.53, size.height * 0.71);
      path.cubicTo(size.width * 0.53, size.height * 0.71, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.71, size.width * 0.53, size.height * 0.71);
      path.cubicTo(size.width * 0.53, size.height * 0.71, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      canvas.drawPath(path, paint);
  

      // Path number 45
  

      paint.color = Color(0xfffafafa);
      path = Path();
      path.lineTo(size.width * 0.54, size.height * 0.71);
      path.cubicTo(size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72);
      path.cubicTo(size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72);
      path.cubicTo(size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72);
      path.cubicTo(size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72);
      path.cubicTo(size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.72);
      path.cubicTo(size.width * 0.54, size.height * 0.72, size.width * 0.54, size.height * 0.71, size.width * 0.54, size.height * 0.71);
      path.cubicTo(size.width * 0.54, size.height * 0.71, size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7);
      path.cubicTo(size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.71);
      path.cubicTo(size.width * 0.53, size.height * 0.71, size.width * 0.53, size.height * 0.71, size.width * 0.53, size.height * 0.71);
      path.cubicTo(size.width * 0.53, size.height * 0.71, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.72);
      path.cubicTo(size.width * 0.53, size.height * 0.72, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7);
      path.cubicTo(size.width * 0.53, size.height * 0.7, size.width * 0.53, size.height * 0.7, size.width * 0.54, size.height * 0.7);
      path.cubicTo(size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7);
      path.cubicTo(size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7);
      path.cubicTo(size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7);
      path.cubicTo(size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.7);
      path.cubicTo(size.width * 0.54, size.height * 0.7, size.width * 0.54, size.height * 0.71, size.width * 0.54, size.height * 0.71);
      canvas.drawPath(path, paint);
  

      // Path number 46
  

      paint.color = Color(0xff455a64);
      path = Path();
      path.lineTo(size.width * 0.66, size.height * 0.63);
      path.cubicTo(size.width * 0.66, size.height * 0.63, size.width * 0.64, size.height * 0.65, size.width * 0.64, size.height * 0.65);
      path.cubicTo(size.width * 0.64, size.height * 0.65, size.width * 0.64, size.height * 0.61, size.width * 0.64, size.height * 0.61);
      path.cubicTo(size.width * 0.64, size.height * 0.61, size.width * 0.64, size.height * 0.6, size.width * 0.64, size.height * 0.6);
      path.cubicTo(size.width * 0.64, size.height * 0.59, size.width * 0.64, size.height * 0.57, size.width * 0.65, size.height * 0.57);
      path.cubicTo(size.width * 0.65, size.height * 0.57, size.width * 0.66, size.height * 0.57, size.width * 0.66, size.height * 0.58);
      path.cubicTo(size.width * 0.66, size.height * 0.59, size.width * 0.66, size.height * 0.59, size.width * 0.66, size.height * 0.6);
      path.cubicTo(size.width * 0.66, size.height * 0.6, size.width * 0.66, size.height * 0.63, size.width * 0.66, size.height * 0.63);
      canvas.drawPath(path, paint);
  

      // Path number 47
  

      paint.color = Color(0xff37474f);
      path = Path();
      path.lineTo(size.width * 0.65, size.height * 0.57);
      path.cubicTo(size.width * 0.64, size.height * 0.57, size.width * 0.64, size.height * 0.58, size.width * 0.64, size.height * 0.59);
      path.cubicTo(size.width * 0.64, size.height * 0.59, size.width * 0.66, size.height * 0.6, size.width * 0.66, size.height * 0.6);
      path.cubicTo(size.width * 0.66, size.height * 0.6, size.width * 0.66, size.height * 0.6, size.width * 0.66, size.height * 0.6);
      path.cubicTo(size.width * 0.66, size.height * 0.59, size.width * 0.66, size.height * 0.59, size.width * 0.66, size.height * 0.58);
      path.cubicTo(size.width * 0.66, size.height * 0.57, size.width * 0.65, size.height * 0.57, size.width * 0.65, size.height * 0.57);
      path.cubicTo(size.width * 0.65, size.height * 0.57, size.width * 0.65, size.height * 0.57, size.width * 0.65, size.height * 0.57);
      canvas.drawPath(path, paint);
  

      // Path number 48
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.54, size.height * 0.44);
      path.cubicTo(size.width * 0.53, size.height * 0.44, size.width * 0.52, size.height * 0.44, size.width / 2, size.height * 0.45);
      path.cubicTo(size.width * 0.48, size.height * 0.46, size.width * 0.46, size.height / 2, size.width * 0.46, size.height * 0.54);
      path.cubicTo(size.width * 0.46, size.height * 0.55, size.width * 0.47, size.height * 0.56, size.width * 0.47, size.height * 0.57);
      path.cubicTo(size.width * 0.47, size.height * 0.57, size.width * 0.49, size.height * 0.58, size.width * 0.49, size.height * 0.58);
      path.cubicTo(size.width / 2, size.height * 0.58, size.width * 0.51, size.height * 0.58, size.width * 0.52, size.height * 0.58);
      path.cubicTo(size.width * 0.54, size.height * 0.56, size.width * 0.56, size.height * 0.52, size.width * 0.56, size.height * 0.49);
      path.cubicTo(size.width * 0.56, size.height * 0.47, size.width * 0.56, size.height * 0.46, size.width * 0.55, size.height * 0.45);
      canvas.drawPath(path, paint);
  

      // Path number 49
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.52, size.height * 0.46);
      path.cubicTo(size.width / 2, size.height * 0.47, size.width * 0.48, size.height * 0.51, size.width * 0.48, size.height * 0.55);
      path.cubicTo(size.width * 0.48, size.height * 0.58, size.width / 2, size.height * 0.59, size.width * 0.52, size.height * 0.58);
      path.cubicTo(size.width * 0.54, size.height * 0.56, size.width * 0.56, size.height * 0.52, size.width * 0.56, size.height * 0.49);
      path.cubicTo(size.width * 0.56, size.height * 0.45, size.width * 0.54, size.height * 0.44, size.width * 0.52, size.height * 0.46);
      path.cubicTo(size.width * 0.52, size.height * 0.46, size.width * 0.52, size.height * 0.46, size.width * 0.52, size.height * 0.46);
      canvas.drawPath(path, paint);
  

      // Path number 50
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.54, size.height * 0.53);
      path.cubicTo(size.width * 0.54, size.height * 0.53, size.width * 0.54, size.height * 0.53, size.width * 0.54, size.height * 0.53);
      path.cubicTo(size.width * 0.54, size.height * 0.55, size.width * 0.53, size.height * 0.56, size.width * 0.52, size.height * 0.56);
      path.cubicTo(size.width * 0.51, size.height * 0.57, size.width / 2, size.height * 0.57, size.width / 2, size.height * 0.57);
      path.cubicTo(size.width / 2, size.height * 0.57, size.width / 2, size.height * 0.56, size.width / 2, size.height * 0.56);
      path.cubicTo(size.width / 2, size.height * 0.54, size.width / 2, size.height * 0.53, size.width * 0.52, size.height * 0.52);
      path.cubicTo(size.width * 0.52, size.height * 0.52, size.width * 0.52, size.height * 0.51, size.width * 0.52, size.height * 0.51);
      path.cubicTo(size.width * 0.53, size.height * 0.51, size.width * 0.53, size.height * 0.51, size.width * 0.54, size.height * 0.51);
      path.cubicTo(size.width * 0.54, size.height * 0.52, size.width * 0.54, size.height * 0.52, size.width * 0.54, size.height * 0.53);
      path.cubicTo(size.width * 0.54, size.height * 0.53, size.width * 0.54, size.height * 0.53, size.width * 0.54, size.height * 0.53);
      canvas.drawPath(path, paint);
  

      // Path number 51
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 0.54, size.height * 0.44);
      path.cubicTo(size.width * 0.54, size.height * 0.44, size.width * 0.55, size.height * 0.45, size.width * 0.55, size.height * 0.45);
      path.cubicTo(size.width * 0.54, size.height * 0.45, size.width * 0.53, size.height * 0.45, size.width * 0.52, size.height * 0.46);
      path.cubicTo(size.width / 2, size.height * 0.47, size.width * 0.49, size.height * 0.49, size.width * 0.48, size.height * 0.51);
      path.cubicTo(size.width * 0.48, size.height * 0.51, size.width * 0.47, size.height / 2, size.width * 0.47, size.height / 2);
      path.cubicTo(size.width * 0.48, size.height * 0.48, size.width * 0.49, size.height * 0.46, size.width / 2, size.height * 0.45);
      path.cubicTo(size.width * 0.52, size.height * 0.44, size.width * 0.53, size.height * 0.44, size.width * 0.54, size.height * 0.44);
      path.cubicTo(size.width * 0.54, size.height * 0.44, size.width * 0.54, size.height * 0.44, size.width * 0.54, size.height * 0.44);
      canvas.drawPath(path, paint);
  

      // Path number 52
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.49, size.height * 0.58);
      path.cubicTo(size.width * 0.49, size.height * 0.58, size.width * 0.47, size.height * 0.57, size.width * 0.47, size.height * 0.57);
      path.cubicTo(size.width * 0.47, size.height * 0.56, size.width * 0.46, size.height * 0.55, size.width * 0.46, size.height * 0.54);
      path.cubicTo(size.width * 0.46, size.height * 0.54, size.width * 0.48, size.height * 0.55, size.width * 0.48, size.height * 0.55);
      path.cubicTo(size.width * 0.48, size.height * 0.56, size.width * 0.48, size.height * 0.57, size.width * 0.49, size.height * 0.58);
      path.cubicTo(size.width * 0.49, size.height * 0.58, size.width * 0.49, size.height * 0.58, size.width * 0.49, size.height * 0.58);
      canvas.drawPath(path, paint);
  

      // Path number 53
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.47, size.height / 2);
      path.cubicTo(size.width * 0.47, size.height / 2, size.width * 0.48, size.height * 0.51, size.width * 0.48, size.height * 0.51);
      path.cubicTo(size.width * 0.48, size.height * 0.52, size.width * 0.48, size.height * 0.53, size.width * 0.48, size.height * 0.55);
      path.cubicTo(size.width * 0.48, size.height * 0.55, size.width * 0.48, size.height * 0.55, size.width * 0.48, size.height * 0.55);
      path.cubicTo(size.width * 0.48, size.height * 0.55, size.width * 0.46, size.height * 0.54, size.width * 0.46, size.height * 0.54);
      path.cubicTo(size.width * 0.46, size.height * 0.52, size.width * 0.46, size.height * 0.51, size.width * 0.47, size.height / 2);
      path.cubicTo(size.width * 0.47, size.height / 2, size.width * 0.47, size.height / 2, size.width * 0.47, size.height / 2);
      canvas.drawPath(path, paint);
  

      // Path number 54
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 0.51, size.height * 0.51);
      path.cubicTo(size.width * 0.51, size.height * 0.51, size.width * 0.51, size.height * 0.51, size.width * 0.51, size.height * 0.51);
      path.cubicTo(size.width * 0.51, size.height * 0.51, size.width * 0.51, size.height / 2, size.width * 0.51, size.height / 2);
      path.cubicTo(size.width * 0.51, size.height * 0.49, size.width * 0.51, size.height * 0.48, size.width * 0.52, size.height * 0.47);
      path.cubicTo(size.width * 0.52, size.height * 0.47, size.width * 0.52, size.height * 0.47, size.width * 0.52, size.height * 0.47);
      path.cubicTo(size.width * 0.53, size.height * 0.47, size.width * 0.53, size.height * 0.47, size.width * 0.53, size.height * 0.48);
      path.cubicTo(size.width * 0.53, size.height * 0.48, size.width * 0.53, size.height * 0.48, size.width * 0.53, size.height * 0.48);
      path.cubicTo(size.width * 0.53, size.height * 0.49, size.width * 0.53, size.height / 2, size.width * 0.52, size.height * 0.51);
      path.cubicTo(size.width * 0.52, size.height * 0.51, size.width * 0.52, size.height * 0.51, size.width * 0.51, size.height * 0.51);
      path.cubicTo(size.width * 0.51, size.height * 0.51, size.width * 0.51, size.height * 0.51, size.width * 0.51, size.height * 0.51);
      canvas.drawPath(path, paint);
  

      // Path number 55
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 0.54, size.height * 0.51);
      path.cubicTo(size.width * 0.53, size.height * 0.51, size.width * 0.53, size.height * 0.51, size.width * 0.52, size.height * 0.51);
      path.cubicTo(size.width * 0.52, size.height * 0.51, size.width * 0.52, size.height * 0.52, size.width * 0.52, size.height * 0.52);
      path.cubicTo(size.width / 2, size.height * 0.53, size.width / 2, size.height * 0.54, size.width / 2, size.height * 0.56);
      path.cubicTo(size.width / 2, size.height * 0.56, size.width / 2, size.height * 0.57, size.width / 2, size.height * 0.57);
      path.cubicTo(size.width / 2, size.height * 0.57, size.width * 0.51, size.height * 0.57, size.width * 0.52, size.height * 0.56);
      path.cubicTo(size.width * 0.53, size.height * 0.56, size.width * 0.54, size.height * 0.55, size.width * 0.54, size.height * 0.53);
      path.cubicTo(size.width * 0.54, size.height * 0.53, size.width * 0.54, size.height * 0.53, size.width * 0.54, size.height * 0.53);
      path.cubicTo(size.width * 0.54, size.height * 0.52, size.width * 0.54, size.height * 0.52, size.width * 0.54, size.height * 0.51);
      path.cubicTo(size.width * 0.54, size.height * 0.51, size.width * 0.54, size.height * 0.51, size.width * 0.54, size.height * 0.51);
      canvas.drawPath(path, paint);
  

      // Path number 56
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.03, size.height, size.width * 1.03, size.height * 0.97, size.width * 1.04, size.height * 0.94);
      path.cubicTo(size.width * 1.06, size.height * 0.92, size.width * 1.07, size.height * 0.9, size.width * 1.09, size.height * 0.9);
      path.cubicTo(size.width * 1.11, size.height * 0.9, size.width * 1.12, size.height * 0.92, size.width * 1.11, size.height * 0.93);
      path.cubicTo(size.width * 1.09, size.height * 0.94, size.width * 1.05, size.height * 0.96, size.width * 1.04, size.height);
      path.cubicTo(size.width * 1.04, size.height, size.width * 1.03, size.height, size.width * 1.03, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 57
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.03, size.height, size.width * 1.03, size.height * 0.97, size.width * 1.04, size.height * 0.94);
      path.cubicTo(size.width * 1.06, size.height * 0.92, size.width * 1.07, size.height * 0.9, size.width * 1.09, size.height * 0.9);
      path.cubicTo(size.width * 1.11, size.height * 0.9, size.width * 1.12, size.height * 0.92, size.width * 1.11, size.height * 0.93);
      path.cubicTo(size.width * 1.09, size.height * 0.94, size.width * 1.05, size.height * 0.96, size.width * 1.04, size.height);
      path.cubicTo(size.width * 1.04, size.height, size.width * 1.03, size.height, size.width * 1.03, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 58
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.03, size.height, size.width * 1.03, size.height, size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.03, size.height, size.width * 1.03, size.height, size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.05, size.height * 0.94, size.width * 1.08, size.height * 0.91, size.width * 1.1, size.height * 0.91);
      path.cubicTo(size.width * 1.1, size.height * 0.91, size.width * 1.1, size.height * 0.91, size.width * 1.1, size.height * 0.91);
      path.cubicTo(size.width * 1.1, size.height * 0.91, size.width * 1.1, size.height * 0.91, size.width * 1.1, size.height * 0.91);
      path.cubicTo(size.width * 1.08, size.height * 0.91, size.width * 1.05, size.height * 0.94, size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.03, size.height, size.width * 1.03, size.height, size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.03, size.height, size.width * 1.03, size.height, size.width * 1.03, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 59
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 1.12, size.height);
      path.cubicTo(size.width * 1.12, size.height, size.width * 1.12, size.height, size.width * 1.12, size.height);
      path.cubicTo(size.width * 1.11, size.height, size.width * 1.11, size.height, size.width * 1.11, size.height);
      path.cubicTo(size.width * 1.1, size.height * 1.02, size.width * 1.11, size.height * 1.03, size.width * 1.1, size.height * 1.04);
      path.cubicTo(size.width * 1.1, size.height * 1.04, size.width * 1.1, size.height * 1.04, size.width * 1.1, size.height * 1.04);
      path.cubicTo(size.width * 1.09, size.height * 1.04, size.width * 1.09, size.height * 1.04, size.width * 1.09, size.height * 1.04);
      path.cubicTo(size.width * 1.09, size.height * 1.04, size.width * 1.08, size.height * 1.04, size.width * 1.08, size.height * 1.04);
      path.cubicTo(size.width * 1.08, size.height * 1.04, size.width * 1.08, size.height * 1.04, size.width * 1.07, size.height * 1.04);
      path.cubicTo(size.width * 1.07, size.height * 1.05, size.width * 1.07, size.height * 1.06, size.width * 1.06, size.height * 1.06);
      path.cubicTo(size.width * 1.06, size.height * 1.07, size.width * 1.05, size.height * 1.07, size.width * 1.04, size.height * 1.08);
      path.cubicTo(size.width * 1.04, size.height * 1.08, size.width * 1.04, size.height * 1.08, size.width * 1.03, size.height * 1.07);
      path.cubicTo(size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07);
      path.cubicTo(size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07);
      path.cubicTo(size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07);
      path.cubicTo(size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07);
      path.cubicTo(size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.06, size.width * 1.03, size.height * 1.06);
      path.cubicTo(size.width * 1.03, size.height * 1.06, size.width * 1.03, size.height * 1.06, size.width * 1.03, size.height * 1.06);
      path.cubicTo(size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.04);
      path.cubicTo(size.width * 1.03, size.height * 1.03, size.width * 1.03, size.height * 1.03, size.width * 1.03, size.height * 1.02);
      path.cubicTo(size.width * 1.03, size.height, size.width * 1.03, size.height, size.width * 1.03, size.height);
      path.cubicTo(size.width * 1.04, size.height, size.width * 1.04, size.height, size.width * 1.04, size.height * 0.98);
      path.cubicTo(size.width * 1.05, size.height * 0.98, size.width * 1.05, size.height * 0.98, size.width * 1.05, size.height * 0.98);
      path.cubicTo(size.width * 1.05, size.height * 0.97, size.width * 1.06, size.height * 0.96, size.width * 1.06, size.height * 0.96);
      path.cubicTo(size.width * 1.07, size.height * 0.96, size.width * 1.08, size.height * 0.97, size.width * 1.09, size.height * 0.97);
      path.cubicTo(size.width * 1.1, size.height * 0.97, size.width * 1.1, size.height * 0.97, size.width * 1.1, size.height * 0.97);
      path.cubicTo(size.width * 1.11, size.height * 0.97, size.width * 1.12, size.height * 0.97, size.width * 1.12, size.height * 0.98);
      path.cubicTo(size.width * 1.13, size.height * 0.98, size.width * 1.13, size.height, size.width * 1.12, size.height);
      path.cubicTo(size.width * 1.12, size.height, size.width * 1.12, size.height, size.width * 1.12, size.height);
      canvas.drawPath(path, paint);
  

      // Path number 60
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 1.03, size.height * 1.05);
      path.cubicTo(size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05);
      path.cubicTo(size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05);
      path.cubicTo(size.width * 1.05, size.height, size.width * 1.1, size.height * 0.98, size.width * 1.12, size.height * 0.98);
      path.cubicTo(size.width * 1.12, size.height * 0.98, size.width * 1.12, size.height * 0.98, size.width * 1.12, size.height * 0.98);
      path.cubicTo(size.width * 1.12, size.height * 0.98, size.width * 1.12, size.height * 0.98, size.width * 1.12, size.height * 0.98);
      path.cubicTo(size.width * 1.1, size.height * 0.98, size.width * 1.05, size.height, size.width * 1.03, size.height * 1.05);
      path.cubicTo(size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05);
      path.cubicTo(size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05, size.width * 1.03, size.height * 1.05);
      canvas.drawPath(path, paint);
  

      // Path number 61
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 1.09, size.height * 1.02);
      path.cubicTo(size.width * 1.09, size.height * 1.02, size.width * 1.09, size.height * 1.02, size.width * 1.09, size.height * 1.02);
      path.cubicTo(size.width * 1.08, size.height, size.width * 1.07, size.height, size.width * 1.06, size.height);
      path.cubicTo(size.width * 1.05, size.height, size.width * 1.05, size.height, size.width * 1.05, size.height);
      path.cubicTo(size.width * 1.05, size.height, size.width * 1.05, size.height, size.width * 1.06, size.height);
      path.cubicTo(size.width * 1.07, size.height, size.width * 1.08, size.height, size.width * 1.1, size.height * 1.02);
      path.cubicTo(size.width * 1.1, size.height * 1.02, size.width * 1.1, size.height * 1.02, size.width * 1.1, size.height * 1.02);
      path.cubicTo(size.width * 1.1, size.height * 1.02, size.width * 1.09, size.height * 1.02, size.width * 1.09, size.height * 1.02);
      path.cubicTo(size.width * 1.09, size.height * 1.02, size.width * 1.09, size.height * 1.02, size.width * 1.09, size.height * 1.02);
      canvas.drawPath(path, paint);
  

      // Path number 62
  

      paint.color = Color(0xffe6e6e6);
      path = Path();
      path.lineTo(size.width * 0.89, size.height * 0.23);
      path.cubicTo(size.width * 0.89, size.height * 0.23, size.width * 0.9, size.height * 0.23, size.width * 0.9, size.height * 0.23);
      path.cubicTo(size.width * 0.9, size.height * 0.23, size.width * 0.9, size.height / 5, size.width * 0.9, size.height / 5);
      path.cubicTo(size.width * 0.9, size.height * 0.19, size.width * 0.91, size.height * 0.19, size.width * 0.92, size.height / 5);
      path.cubicTo(size.width * 0.92, size.height / 5, size.width * 0.92, size.height / 5, size.width * 0.92, size.height / 5);
      path.cubicTo(size.width * 0.94, size.height / 5, size.width * 0.94, size.height * 0.22, size.width * 0.94, size.height * 0.24);
      path.cubicTo(size.width * 0.94, size.height * 0.24, size.width * 0.94, size.height * 0.24, size.width * 0.94, size.height * 0.24);
      path.cubicTo(size.width * 0.95, size.height * 0.24, size.width * 0.95, size.height * 0.24, size.width * 0.95, size.height * 0.24);
      path.cubicTo(size.width * 0.95, size.height * 0.24, size.width * 0.95, size.height * 0.24, size.width * 0.95, size.height * 0.24);
      path.cubicTo(size.width * 0.96, size.height / 4, size.width * 0.97, size.height * 0.26, size.width * 0.97, size.height * 0.28);
      path.cubicTo(size.width * 0.97, size.height * 0.28, size.width * 0.97, size.height * 0.28, size.width * 0.97, size.height * 0.28);
      path.cubicTo(size.width * 0.97, size.height * 0.28, size.width * 0.98, size.height * 0.28, size.width * 0.98, size.height * 0.28);
      path.cubicTo(size.width, size.height * 0.29, size.width, size.height * 0.3, size.width, size.height * 0.3);
      path.cubicTo(size.width, size.height * 0.31, size.width, size.height * 0.31, size.width * 0.98, size.height * 0.31);
      path.cubicTo(size.width * 0.98, size.height * 0.31, size.width * 0.89, size.height / 4, size.width * 0.89, size.height / 4);
      path.cubicTo(size.width * 0.89, size.height / 4, size.width * 0.89, size.height * 0.24, size.width * 0.88, size.height * 0.23);
      path.cubicTo(size.width * 0.88, size.height * 0.22, size.width * 0.89, size.height * 0.22, size.width * 0.89, size.height * 0.23);
      path.cubicTo(size.width * 0.89, size.height * 0.23, size.width * 0.89, size.height * 0.23, size.width * 0.89, size.height * 0.23);
      canvas.drawPath(path, paint);
  

      // Path number 63
  

      paint.color = Color(0xffe6e6e6);
      path = Path();
      path.lineTo(size.width, size.height / 5);
      path.cubicTo(size.width, size.height / 5, size.width, size.height * 0.22, size.width, size.height * 0.22);
      path.cubicTo(size.width, size.height * 0.22, size.width, size.height * 0.22, size.width, size.height * 0.22);
      path.cubicTo(size.width, size.height * 0.22, size.width, size.height / 5, size.width, size.height / 5);
      path.cubicTo(size.width, size.height / 5, size.width, size.height / 5, size.width * 1.02, size.height / 5);
      path.cubicTo(size.width * 1.02, size.height / 5, size.width * 1.03, size.height / 5, size.width * 1.03, size.height / 5);
      path.cubicTo(size.width * 1.03, size.height / 5, size.width * 1.03, size.height / 5, size.width * 1.04, size.height / 5);
      path.cubicTo(size.width * 1.05, size.height / 5, size.width * 1.06, size.height * 0.22, size.width * 1.06, size.height * 0.24);
      path.cubicTo(size.width * 1.06, size.height * 0.24, size.width * 1.06, size.height * 0.24, size.width * 1.06, size.height * 0.24);
      path.cubicTo(size.width * 1.06, size.height / 4, size.width * 1.06, size.height / 4, size.width * 1.06, size.height / 4);
      path.cubicTo(size.width * 1.06, size.height / 4, size.width * 1.07, size.height * 0.26, size.width * 1.07, size.height * 0.26);
      path.cubicTo(size.width * 1.07, size.height * 0.26, size.width * 1.08, size.height * 0.27, size.width * 1.08, size.height * 0.27);
      path.cubicTo(size.width * 1.08, size.height * 0.28, size.width * 1.07, size.height * 0.28, size.width * 1.07, size.height * 0.28);
      path.cubicTo(size.width * 1.07, size.height * 0.28, size.width, size.height * 0.23, size.width, size.height * 0.23);
      path.cubicTo(size.width, size.height * 0.22, size.width, size.height * 0.22, size.width, size.height / 5);
      path.cubicTo(size.width, size.height / 5, size.width, size.height / 5, size.width, size.height / 5);
      path.cubicTo(size.width, size.height / 5, size.width, size.height / 5, size.width, size.height / 5);
      canvas.drawPath(path, paint);
  

      // Path number 64
  

      paint.color = Color(0xffffa8a7);
      path = Path();
      path.lineTo(size.width * 0.94, size.height * 0.64);
      path.cubicTo(size.width * 0.93, size.height * 0.66, size.width * 0.92, size.height * 0.68, size.width * 0.92, size.height * 0.68);
      path.cubicTo(size.width * 0.9, size.height * 0.69, size.width * 0.87, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.85, size.height * 0.7, size.width * 0.85, size.height * 0.7, size.width * 0.84, size.height * 0.7);
      path.cubicTo(size.width * 0.84, size.height * 0.69, size.width * 0.84, size.height * 0.69, size.width * 0.84, size.height * 0.69);
      path.cubicTo(size.width * 0.84, size.height * 0.7, size.width * 0.84, size.height * 0.7, size.width * 0.84, size.height * 0.7);
      path.cubicTo(size.width * 0.84, size.height * 0.7, size.width * 0.84, size.height * 0.7, size.width * 0.84, size.height * 0.71);
      path.cubicTo(size.width * 0.84, size.height * 0.71, size.width * 0.83, size.height * 0.71, size.width * 0.83, size.height * 0.71);
      path.cubicTo(size.width * 0.82, size.height * 0.7, size.width * 0.81, size.height * 0.71, size.width * 0.82, size.height * 0.72);
      path.cubicTo(size.width * 0.82, size.height * 0.73, size.width * 0.83, size.height * 0.73, size.width * 0.85, size.height * 0.73);
      path.cubicTo(size.width * 0.86, size.height * 0.73, size.width * 0.87, size.height * 0.73, size.width * 0.87, size.height * 0.73);
      path.cubicTo(size.width * 0.89, size.height * 0.72, size.width * 0.91, size.height * 0.72, size.width * 0.92, size.height * 0.71);
      path.cubicTo(size.width * 0.93, size.height * 0.71, size.width * 0.93, size.height * 0.71, size.width * 0.94, size.height * 0.7);
      path.cubicTo(size.width * 0.96, size.height * 0.68, size.width * 0.97, size.height * 0.65, size.width * 0.98, size.height * 0.64);
      path.cubicTo(size.width * 0.98, size.height * 0.64, size.width * 0.97, size.height * 0.6, size.width * 0.97, size.height * 0.6);
      path.cubicTo(size.width * 0.96, size.height * 0.6, size.width * 0.95, size.height * 0.62, size.width * 0.94, size.height * 0.64);
      path.cubicTo(size.width * 0.94, size.height * 0.64, size.width * 0.94, size.height * 0.64, size.width * 0.94, size.height * 0.64);
      canvas.drawPath(path, paint);
  

      // Path number 65
  

      paint.color = Color(0xff455a64);
      path = Path();
      path.lineTo(size.width * 0.98, size.height * 0.6);
      path.cubicTo(size.width * 0.97, size.height * 0.6, size.width * 0.96, size.height * 0.61, size.width * 0.95, size.height * 0.62);
      path.cubicTo(size.width * 0.94, size.height * 0.63, size.width * 0.92, size.height * 0.67, size.width * 0.92, size.height * 0.67);
      path.cubicTo(size.width * 0.92, size.height * 0.67, size.width * 0.93, size.height * 0.69, size.width * 0.95, size.height * 0.69);
      path.cubicTo(size.width * 0.95, size.height * 0.69, size.width * 0.97, size.height * 0.65, size.width * 0.97, size.height * 0.65);
      path.cubicTo(size.width * 0.97, size.height * 0.65, size.width, size.height * 0.62, size.width * 0.98, size.height * 0.6);
      path.cubicTo(size.width * 0.98, size.height * 0.6, size.width * 0.98, size.height * 0.6, size.width * 0.98, size.height * 0.6);
      canvas.drawPath(path, paint);
  

      // Path number 66
  

      paint.color = Color(0xffffa8a7);
      path = Path();
      path.lineTo(size.width * 1.02, size.height * 1.04);
      path.cubicTo(size.width * 1.02, size.height * 1.04, size.width * 0.02, size.height * 1.04, size.width * 0.02, size.height * 1.04);
      path.cubicTo(size.width * 0.02, size.height * 1.04, size.width * 0.02, size.height * 0.04, size.width * 0.02, size.height * 0.04);
      path.cubicTo(size.width * 0.02, size.height * 0.04, size.width * 1.02, size.height * 0.04, size.width * 1.02, size.height * 0.04);
      path.cubicTo(size.width * 1.02, size.height * 0.04, size.width * 1.02, size.height * 1.04, size.width * 1.02, size.height * 1.04);
      canvas.drawPath(path, paint);
  

      // Path number 67
  

      paint.color = Color(0xff37474f);
      path = Path();
      path.lineTo(size.width * 1.04, size.height * 0.72);
      path.cubicTo(size.width * 1.04, size.height * 0.74, size.width * 1.03, size.height * 0.9, size.width * 1.03, size.height * 0.9);
      path.cubicTo(size.width * 1.03, size.height * 0.91, size.width * 1.04, size.height * 0.92, size.width * 1.04, size.height * 0.94);
      path.cubicTo(size.width * 1.04, size.height * 0.97, size.width * 1.04, size.height * 1.05, size.width * 1.04, size.height * 1.05);
      path.cubicTo(size.width * 1.03, size.height * 1.06, size.width * 1.02, size.height * 1.06, size.width * 1.02, size.height * 1.06);
      path.cubicTo(size.width * 1.02, size.height * 1.06, size.width, size.height * 0.94, size.width, size.height * 0.91);
      path.cubicTo(size.width, size.height * 0.89, size.width, size.height * 0.8, size.width, size.height * 0.8);
      path.cubicTo(size.width, size.height * 0.8, size.width * 0.98, size.height * 0.9, size.width * 0.98, size.height * 0.9);
      path.cubicTo(size.width * 0.98, size.height * 0.91, size.width * 0.98, size.height * 0.92, size.width * 0.98, size.height * 0.94);
      path.cubicTo(size.width * 0.98, size.height * 0.95, size.width * 0.98, size.height * 1.02, size.width * 0.98, size.height * 1.02);
      path.cubicTo(size.width * 0.97, size.height * 1.03, size.width * 0.96, size.height * 1.03, size.width * 0.96, size.height * 1.02);
      path.cubicTo(size.width * 0.96, size.height * 1.02, size.width * 0.95, size.height * 0.91, size.width * 0.95, size.height * 0.9);
      path.cubicTo(size.width * 0.95, size.height * 0.89, size.width * 0.95, size.height * 0.72, size.width * 0.95, size.height * 0.72);
      path.cubicTo(size.width * 0.95, size.height * 0.72, size.width * 1.04, size.height * 0.72, size.width * 1.04, size.height * 0.72);
      canvas.drawPath(path, paint);
  

      // Path number 68
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 1.02, size.height * 1.06);
      path.cubicTo(size.width * 1.02, size.height * 1.06, size.width * 1.02, size.height * 1.06, size.width * 1.02, size.height * 1.06);
      path.cubicTo(size.width * 1.02, size.height * 1.06, size.width, size.height * 1.08, size.width, size.height * 1.09);
      path.cubicTo(size.width, size.height * 1.09, size.width, size.height * 1.1, size.width, size.height * 1.11);
      path.cubicTo(size.width, size.height * 1.11, size.width, size.height * 1.12, size.width, size.height * 1.12);
      path.cubicTo(size.width, size.height * 1.11, size.width * 1.02, size.height * 1.11, size.width * 1.02, size.height * 1.1);
      path.cubicTo(size.width * 1.03, size.height * 1.1, size.width * 1.03, size.height * 1.09, size.width * 1.03, size.height * 1.09);
      path.cubicTo(size.width * 1.03, size.height * 1.09, size.width * 1.04, size.height * 1.08, size.width * 1.04, size.height * 1.08);
      path.cubicTo(size.width * 1.04, size.height * 1.07, size.width * 1.04, size.height * 1.07, size.width * 1.04, size.height * 1.07);
      path.cubicTo(size.width * 1.04, size.height * 1.06, size.width * 1.04, size.height * 1.06, size.width * 1.03, size.height * 1.06);
      path.cubicTo(size.width * 1.03, size.height * 1.06, size.width * 1.03, size.height * 1.06, size.width * 1.03, size.height * 1.06);
      path.cubicTo(size.width * 1.03, size.height * 1.06, size.width * 1.03, size.height * 1.07, size.width * 1.03, size.height * 1.07);
      path.cubicTo(size.width * 1.02, size.height * 1.07, size.width * 1.02, size.height * 1.06, size.width * 1.02, size.height * 1.06);
      path.cubicTo(size.width * 1.02, size.height * 1.06, size.width * 1.02, size.height * 1.06, size.width * 1.02, size.height * 1.06);
      canvas.drawPath(path, paint);
  

      // Path number 69
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 0.96, size.height * 1.03);
      path.cubicTo(size.width * 0.96, size.height * 1.03, size.width * 0.96, size.height * 1.03, size.width * 0.95, size.height * 1.03);
      path.cubicTo(size.width * 0.95, size.height * 1.04, size.width * 0.95, size.height * 1.04, size.width * 0.94, size.height * 1.04);
      path.cubicTo(size.width * 0.94, size.height * 1.05, size.width * 0.92, size.height * 1.05, size.width * 0.92, size.height * 1.06);
      path.cubicTo(size.width * 0.92, size.height * 1.06, size.width * 0.92, size.height * 1.06, size.width * 0.92, size.height * 1.07);
      path.cubicTo(size.width * 0.92, size.height * 1.07, size.width * 0.93, size.height * 1.07, size.width * 0.94, size.height * 1.07);
      path.cubicTo(size.width * 0.95, size.height * 1.07, size.width * 0.96, size.height * 1.06, size.width * 0.96, size.height * 1.06);
      path.cubicTo(size.width * 0.97, size.height * 1.06, size.width * 0.97, size.height * 1.06, size.width * 0.98, size.height * 1.06);
      path.cubicTo(size.width * 0.98, size.height * 1.05, size.width * 0.98, size.height * 1.05, size.width * 0.98, size.height * 1.04);
      path.cubicTo(size.width * 0.98, size.height * 1.04, size.width * 0.98, size.height * 1.03, size.width * 0.97, size.height * 1.03);
      path.cubicTo(size.width * 0.97, size.height * 1.03, size.width * 0.97, size.height * 1.03, size.width * 0.97, size.height * 1.03);
      path.cubicTo(size.width * 0.97, size.height * 1.03, size.width * 0.96, size.height * 1.03, size.width * 0.96, size.height * 1.03);
      path.cubicTo(size.width * 0.96, size.height * 1.03, size.width * 0.96, size.height * 1.03, size.width * 0.96, size.height * 1.03);
      canvas.drawPath(path, paint);
  

      // Path number 70
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width, size.height * 0.8);
      path.cubicTo(size.width * 0.98, size.height * 0.79, size.width * 0.97, size.height * 0.79, size.width * 0.97, size.height * 0.78);
      path.cubicTo(size.width * 0.97, size.height * 0.78, size.width * 0.97, size.height * 0.79, size.width * 0.98, size.height * 0.8);
      path.cubicTo(size.width * 0.98, size.height * 0.8, size.width * 0.98, size.height * 0.89, size.width * 0.98, size.height * 0.89);
      path.cubicTo(size.width * 0.98, size.height * 0.89, size.width, size.height * 0.8, size.width, size.height * 0.8);
      canvas.drawPath(path, paint);
  

      // Path number 71
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 1.03, size.height * 0.61);
      path.cubicTo(size.width * 1.03, size.height * 0.61, size.width * 1.04, size.height * 0.61, size.width * 1.04, size.height * 0.64);
      path.cubicTo(size.width * 1.04, size.height * 0.64, size.width * 1.04, size.height * 0.69, size.width * 1.04, size.height * 0.69);
      path.cubicTo(size.width * 1.04, size.height * 0.69, size.width * 1.04, size.height * 0.76, size.width * 1.04, size.height * 0.76);
      path.cubicTo(size.width * 1.02, size.height * 0.78, size.width * 0.97, size.height * 0.78, size.width * 0.95, size.height * 0.76);
      path.cubicTo(size.width * 0.95, size.height * 0.76, size.width * 0.95, size.height * 0.67, size.width * 0.95, size.height * 0.64);
      path.cubicTo(size.width * 0.95, size.height * 0.62, size.width * 0.96, size.height * 0.61, size.width * 0.98, size.height * 0.6);
      path.cubicTo(size.width * 0.98, size.height * 0.6, size.width, size.height * 0.6, size.width, size.height * 0.6);
      path.cubicTo(size.width, size.height * 0.6, size.width * 1.03, size.height * 0.61, size.width * 1.03, size.height * 0.61);
      canvas.drawPath(path, paint);
  

      // Path number 72
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width, size.height * 0.54);
      path.cubicTo(size.width, size.height * 0.56, size.width, size.height * 0.57, size.width * 0.98, size.height * 0.57);
      path.cubicTo(size.width * 0.97, size.height * 0.57, size.width * 0.96, size.height * 0.56, size.width * 0.96, size.height * 0.54);
      path.cubicTo(size.width * 0.95, size.height * 0.51, size.width * 0.97, size.height * 0.51, size.width * 0.98, size.height * 0.51);
      path.cubicTo(size.width, size.height * 0.51, size.width, size.height * 0.53, size.width, size.height * 0.54);
      path.cubicTo(size.width, size.height * 0.54, size.width, size.height * 0.54, size.width, size.height * 0.54);
      canvas.drawPath(path, paint);
  

      // Path number 73
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 1.02, size.height * 0.56);
      path.cubicTo(size.width * 1.02, size.height * 0.56, size.width * 1.02, size.height * 0.58, size.width * 1.02, size.height * 0.58);
      path.cubicTo(size.width * 1.02, size.height * 0.58, size.width, size.height * 0.59, size.width, size.height * 0.59);
      path.cubicTo(size.width, size.height * 0.59, size.width, size.height * 0.57, size.width, size.height * 0.57);
      path.cubicTo(size.width, size.height * 0.57, size.width * 1.02, size.height * 0.56, size.width * 1.02, size.height * 0.56);
      canvas.drawPath(path, paint);
  

      // Path number 74
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 1.02, size.height * 0.52);
      path.cubicTo(size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.53);
      path.cubicTo(size.width * 1.03, size.height * 0.53, size.width * 1.03, size.height * 0.54, size.width * 1.02, size.height * 0.56);
      path.cubicTo(size.width * 1.02, size.height * 0.56, size.width, size.height * 0.56, size.width, size.height * 0.56);
      path.cubicTo(size.width, size.height * 0.56, size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.52);
      canvas.drawPath(path, paint);
  

      // Path number 75
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 1.02, size.height * 0.53);
      path.cubicTo(size.width * 1.02, size.height * 0.53, size.width * 1.03, size.height * 0.53, size.width * 1.03, size.height * 0.53);
      path.cubicTo(size.width * 1.03, size.height * 0.52, size.width * 1.03, size.height * 0.52, size.width * 1.02, size.height * 0.52);
      path.cubicTo(size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.53);
      path.cubicTo(size.width * 1.02, size.height * 0.53, size.width * 1.02, size.height * 0.53, size.width * 1.02, size.height * 0.53);
      canvas.drawPath(path, paint);
  

      // Path number 76
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 1.02, size.height * 0.53);
      path.cubicTo(size.width * 1.02, size.height * 0.53, size.width * 1.03, size.height * 0.52, size.width * 1.03, size.height * 0.52);
      path.cubicTo(size.width * 1.03, size.height * 0.52, size.width * 1.02, size.height * 0.51, size.width * 1.02, size.height * 0.52);
      path.cubicTo(size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.53);
      path.cubicTo(size.width * 1.02, size.height * 0.53, size.width * 1.02, size.height * 0.53, size.width * 1.02, size.height * 0.53);
      canvas.drawPath(path, paint);
  

      // Path number 77
  

      paint.color = Color(0xffffa8a7);
      path = Path();
      path.lineTo(size.width, size.height * 0.56);
      path.cubicTo(size.width, size.height * 0.56, size.width * 1.02, size.height * 0.55, size.width * 1.02, size.height * 0.55);
      path.cubicTo(size.width * 1.02, size.height * 0.55, size.width * 1.03, size.height * 0.55, size.width * 1.03, size.height * 0.56);
      path.cubicTo(size.width * 1.03, size.height * 0.56, size.width * 1.03, size.height * 0.57, size.width * 1.02, size.height * 0.57);
      path.cubicTo(size.width, size.height * 0.58, size.width, size.height * 0.57, size.width, size.height * 0.57);
      path.cubicTo(size.width, size.height * 0.57, size.width, size.height * 0.61, size.width, size.height * 0.61);
      path.cubicTo(size.width, size.height * 0.63, size.width * 0.98, size.height * 0.63, size.width, size.height * 0.61);
      path.cubicTo(size.width, size.height * 0.61, size.width, size.height * 0.6, size.width, size.height * 0.6);
      path.cubicTo(size.width * 0.98, size.height * 0.6, size.width * 0.98, size.height * 0.6, size.width * 0.97, size.height * 0.6);
      path.cubicTo(size.width * 0.97, size.height * 0.6, size.width * 0.96, size.height * 0.59, size.width * 0.96, size.height * 0.58);
      path.cubicTo(size.width * 0.96, size.height * 0.57, size.width * 0.96, size.height * 0.56, size.width * 0.96, size.height * 0.53);
      path.cubicTo(size.width * 0.96, size.height / 2, size.width, size.height / 2, size.width, size.height * 0.52);
      path.cubicTo(size.width * 1.02, size.height * 0.53, size.width, size.height * 0.56, size.width, size.height * 0.56);
      path.cubicTo(size.width, size.height * 0.56, size.width, size.height * 0.56, size.width, size.height * 0.56);
      canvas.drawPath(path, paint);
  

      // Path number 78
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 0.98, size.height * 0.53);
      path.cubicTo(size.width, size.height * 0.53, size.width, size.height * 0.53, size.width, size.height * 0.53);
      path.cubicTo(size.width, size.height * 0.53, size.width, size.height * 0.53, size.width, size.height * 0.53);
      path.cubicTo(size.width, size.height * 0.53, size.width, size.height * 0.53, size.width, size.height * 0.54);
      path.cubicTo(size.width, size.height * 0.55, size.width, size.height * 0.56, size.width, size.height * 0.56);
      path.cubicTo(size.width, size.height * 0.56, size.width * 1.02, size.height * 0.55, size.width * 1.02, size.height * 0.55);
      path.cubicTo(size.width * 1.02, size.height * 0.55, size.width * 1.02, size.height * 0.55, size.width * 1.02, size.height * 0.55);
      path.cubicTo(size.width * 1.02, size.height * 0.54, size.width * 1.02, size.height * 0.54, size.width * 1.02, size.height * 0.54);
      path.cubicTo(size.width * 1.02, size.height * 0.53, size.width * 1.02, size.height * 0.53, size.width * 1.02, size.height * 0.53);
      path.cubicTo(size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.52);
      path.cubicTo(size.width * 1.02, size.height * 0.52, size.width * 1.02, size.height * 0.51, size.width * 1.02, size.height * 0.51);
      path.cubicTo(size.width * 1.02, size.height * 0.51, size.width * 1.02, size.height * 0.51, size.width * 1.02, size.height * 0.51);
      path.cubicTo(size.width, size.height * 0.51, size.width, size.height / 2, size.width, size.height / 2);
      path.cubicTo(size.width, size.height / 2, size.width, size.height / 2, size.width, size.height / 2);
      path.cubicTo(size.width * 0.98, size.height / 2, size.width * 0.97, size.height / 2, size.width * 0.97, size.height * 0.49);
      path.cubicTo(size.width * 0.97, size.height * 0.49, size.width * 0.97, size.height * 0.49, size.width * 0.97, size.height * 0.49);
      path.cubicTo(size.width * 0.97, size.height * 0.49, size.width * 0.97, size.height * 0.49, size.width * 0.97, size.height / 2);
      path.cubicTo(size.width * 0.96, size.height / 2, size.width * 0.97, size.height / 2, size.width * 0.97, size.height / 2);
      path.cubicTo(size.width * 0.96, size.height * 0.51, size.width * 0.96, size.height / 2, size.width * 0.96, size.height / 2);
      path.cubicTo(size.width * 0.95, size.height / 2, size.width * 0.95, size.height / 2, size.width * 0.95, size.height / 2);
      path.cubicTo(size.width * 0.95, size.height / 2, size.width * 0.95, size.height / 2, size.width * 0.95, size.height / 2);
      path.cubicTo(size.width * 0.95, size.height / 2, size.width * 0.95, size.height * 0.51, size.width * 0.95, size.height * 0.51);
      path.cubicTo(size.width * 0.95, size.height * 0.51, size.width * 0.95, size.height * 0.51, size.width * 0.96, size.height * 0.52);
      path.cubicTo(size.width * 0.96, size.height * 0.52, size.width * 0.96, size.height * 0.53, size.width * 0.97, size.height * 0.53);
      path.cubicTo(size.width * 0.97, size.height * 0.53, size.width * 0.98, size.height * 0.53, size.width * 0.98, size.height * 0.53);
      path.cubicTo(size.width * 0.98, size.height * 0.53, size.width * 0.98, size.height * 0.53, size.width * 0.98, size.height * 0.53);
      canvas.drawPath(path, paint);
  

      // Path number 79
  

      paint.color = Color(0xfff28f8f);
      path = Path();
      path.lineTo(size.width, size.height * 0.6);
      path.cubicTo(size.width, size.height * 0.6, size.width, size.height * 0.59, size.width, size.height * 0.59);
      path.cubicTo(size.width, size.height * 0.59, size.width, size.height * 0.58, size.width, size.height * 0.58);
      path.cubicTo(size.width, size.height * 0.58, size.width, size.height * 0.59, size.width, size.height * 0.59);
      path.cubicTo(size.width, size.height * 0.6, size.width, size.height * 0.6, size.width, size.height * 0.6);
      path.cubicTo(size.width, size.height * 0.6, size.width, size.height * 0.6, size.width, size.height * 0.6);
      canvas.drawPath(path, paint);
  

      // Path number 80
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width, size.height * 0.55);
      path.cubicTo(size.width, size.height * 0.55, size.width, size.height * 0.56, size.width, size.height * 0.56);
      path.cubicTo(size.width, size.height * 0.56, size.width, size.height * 0.56, size.width, size.height * 0.55);
      path.cubicTo(size.width, size.height * 0.55, size.width, size.height * 0.55, size.width, size.height * 0.55);
      path.cubicTo(size.width, size.height * 0.55, size.width, size.height * 0.55, size.width, size.height * 0.55);
      path.cubicTo(size.width, size.height * 0.55, size.width, size.height * 0.55, size.width, size.height * 0.55);
      canvas.drawPath(path, paint);
  

      // Path number 81
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width, size.height * 0.54);
      path.cubicTo(size.width, size.height * 0.54, size.width, size.height * 0.54, size.width, size.height * 0.54);
      path.cubicTo(size.width, size.height * 0.54, size.width, size.height * 0.54, size.width, size.height * 0.54);
      path.cubicTo(size.width, size.height * 0.54, size.width, size.height * 0.54, size.width, size.height * 0.54);
      path.cubicTo(size.width, size.height * 0.54, size.width, size.height * 0.54, size.width, size.height * 0.54);
      canvas.drawPath(path, paint);
  

      // Path number 82
  

      paint.color = Color(0xfff28f8f);
      path = Path();
      path.lineTo(size.width, size.height * 0.58);
      path.cubicTo(size.width, size.height * 0.58, size.width * 0.98, size.height * 0.58, size.width * 0.98, size.height * 0.58);
      path.cubicTo(size.width * 0.98, size.height * 0.58, size.width * 0.98, size.height * 0.58, size.width * 0.98, size.height * 0.58);
      path.cubicTo(size.width, size.height * 0.58, size.width, size.height * 0.58, size.width, size.height * 0.58);
      path.cubicTo(size.width, size.height * 0.58, size.width, size.height * 0.58, size.width, size.height * 0.58);
      canvas.drawPath(path, paint);
  

      // Path number 83
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 0.96, size.height * 0.54);
      path.cubicTo(size.width * 0.96, size.height * 0.54, size.width * 0.97, size.height * 0.54, size.width * 0.97, size.height * 0.54);
      path.cubicTo(size.width * 0.97, size.height * 0.54, size.width * 0.97, size.height * 0.53, size.width * 0.96, size.height * 0.54);
      path.cubicTo(size.width * 0.96, size.height * 0.54, size.width * 0.96, size.height * 0.54, size.width * 0.96, size.height * 0.54);
      path.cubicTo(size.width * 0.96, size.height * 0.54, size.width * 0.96, size.height * 0.54, size.width * 0.96, size.height * 0.54);
      canvas.drawPath(path, paint);
  

      // Path number 84
  

      paint.color = Color(0xff263238);
      path = Path();
      path.lineTo(size.width * 0.97, size.height * 0.55);
      path.cubicTo(size.width * 0.97, size.height * 0.56, size.width * 0.96, size.height * 0.56, size.width * 0.97, size.height * 0.55);
      path.cubicTo(size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55);
      path.cubicTo(size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55);
      path.cubicTo(size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55);
      path.cubicTo(size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55, size.width * 0.97, size.height * 0.55);
      canvas.drawPath(path, paint);
  

      // Path number 85
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.92, size.height * 0.78);
      path.cubicTo(size.width * 0.92, size.height * 0.79, size.width * 0.93, size.height * 0.79, size.width * 0.93, size.height * 0.8);
      path.cubicTo(size.width * 0.92, size.height * 0.79, size.width * 0.92, size.height * 0.79, size.width * 0.92, size.height * 0.78);
      path.cubicTo(size.width * 0.92, size.height * 0.78, size.width * 0.92, size.height * 0.78, size.width * 0.92, size.height * 0.78);
      path.lineTo(size.width * 0.95, size.height * 0.78);
      path.cubicTo(size.width * 0.95, size.height * 0.74, size.width * 0.93, size.height * 0.7, size.width * 0.91, size.height * 0.69);
      path.cubicTo(size.width * 0.9, size.height * 0.68, size.width * 0.89, size.height * 0.68, size.width * 0.88, size.height * 0.68);
      path.cubicTo(size.width * 0.88, size.height * 0.68, size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69);
      path.cubicTo(size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69);
      path.cubicTo(size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69, size.width * 0.86, size.height * 0.69);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.71, size.width * 0.86, size.height * 0.71);
      path.cubicTo(size.width * 0.85, size.height * 0.71, size.width * 0.85, size.height * 0.71, size.width * 0.85, size.height * 0.71);
      path.cubicTo(size.width * 0.85, size.height * 0.71, size.width * 0.73, size.height * 0.63, size.width * 0.73, size.height * 0.63);
      path.cubicTo(size.width * 0.73, size.height * 0.63, size.width * 0.72, size.height * 0.64, size.width * 0.72, size.height * 0.64);
      path.cubicTo(size.width * 0.72, size.height * 0.64, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.66, size.width * 0.72, size.height * 0.66);
      path.cubicTo(size.width * 0.72, size.height * 0.66, size.width * 0.74, size.height * 0.7, size.width * 0.74, size.height * 0.7);
      path.cubicTo(size.width * 0.74, size.height * 0.7, size.width * 0.75, size.height * 0.72, size.width * 0.75, size.height * 0.72);
      path.cubicTo(size.width * 0.75, size.height * 0.72, size.width * 0.76, size.height * 0.71, size.width * 0.76, size.height * 0.71);
      path.cubicTo(size.width * 0.76, size.height * 0.71, size.width * 0.77, size.height * 0.72, size.width * 0.77, size.height * 0.72);
      path.cubicTo(size.width * 0.77, size.height * 0.72, size.width * 0.78, size.height * 0.74, size.width * 0.78, size.height * 0.74);
      path.cubicTo(size.width * 0.78, size.height * 0.74, size.width * 0.79, size.height * 0.74, size.width * 0.79, size.height * 0.74);
      path.cubicTo(size.width * 0.79, size.height * 0.74, size.width * 0.81, size.height * 0.73, size.width * 0.81, size.height * 0.73);
      path.cubicTo(size.width * 0.81, size.height * 0.73, size.width * 0.82, size.height * 0.74, size.width * 0.82, size.height * 0.74);
      path.cubicTo(size.width * 0.82, size.height * 0.74, size.width * 0.83, size.height * 0.77, size.width * 0.83, size.height * 0.77);
      path.cubicTo(size.width * 0.83, size.height * 0.77, size.width * 0.85, size.height * 0.78, size.width * 0.85, size.height * 0.78);
      path.cubicTo(size.width * 0.85, size.height * 0.79, size.width * 0.85, size.height * 0.8, size.width * 0.86, size.height * 0.8);
      path.cubicTo(size.width * 0.86, size.height * 0.8, size.width * 0.86, size.height * 0.81, size.width * 0.86, size.height * 0.81);
      path.cubicTo(size.width * 0.87, size.height * 0.83, size.width * 0.88, size.height * 0.85, size.width * 0.89, size.height * 0.87);
      path.cubicTo(size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87);
      path.cubicTo(size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87);
      path.cubicTo(size.width * 0.9, size.height * 0.87, size.width * 0.91, size.height * 0.87, size.width * 0.91, size.height * 0.87);
      path.cubicTo(size.width * 0.91, size.height * 0.87, size.width * 0.91, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.93, size.height * 0.86, size.width * 0.93, size.height * 0.86, size.width * 0.94, size.height * 0.86);
      path.cubicTo(size.width * 0.95, size.height * 0.85, size.width * 0.96, size.height * 0.83, size.width * 0.96, size.height * 0.8);
      path.cubicTo(size.width * 0.96, size.height * 0.79, size.width * 0.96, size.height * 0.79, size.width * 0.95, size.height * 0.78);
      path.cubicTo(size.width * 0.95, size.height * 0.78, size.width * 0.95, size.height * 0.78, size.width * 0.95, size.height * 0.78);
      canvas.drawPath(path, paint);
  

      // Path number 86
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.92, size.height * 0.81);
      path.cubicTo(size.width * 0.91, size.height * 0.81, size.width * 0.9, size.height * 0.8, size.width * 0.9, size.height * 0.79);
      path.cubicTo(size.width * 0.9, size.height * 0.78, size.width * 0.91, size.height * 0.77, size.width * 0.92, size.height * 0.78);
      path.cubicTo(size.width * 0.92, size.height * 0.78, size.width * 0.93, size.height * 0.79, size.width * 0.93, size.height * 0.8);
      path.cubicTo(size.width * 0.93, size.height * 0.81, size.width * 0.92, size.height * 0.82, size.width * 0.92, size.height * 0.81);
      path.cubicTo(size.width * 0.92, size.height * 0.81, size.width * 0.92, size.height * 0.81, size.width * 0.92, size.height * 0.81);
      path.lineTo(size.width * 0.94, size.height * 0.79);
      path.cubicTo(size.width * 0.93, size.height * 0.75, size.width * 0.92, size.height * 0.71, size.width * 0.89, size.height * 0.7);
      path.cubicTo(size.width * 0.88, size.height * 0.69, size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69);
      path.cubicTo(size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69);
      path.cubicTo(size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69, size.width * 0.86, size.height * 0.69);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.7);
      path.cubicTo(size.width * 0.86, size.height * 0.7, size.width * 0.86, size.height * 0.71, size.width * 0.86, size.height * 0.71);
      path.cubicTo(size.width * 0.85, size.height * 0.71, size.width * 0.85, size.height * 0.71, size.width * 0.85, size.height * 0.71);
      path.cubicTo(size.width * 0.85, size.height * 0.72, size.width * 0.85, size.height * 0.72, size.width * 0.85, size.height * 0.73);
      path.cubicTo(size.width * 0.85, size.height * 0.73, size.width * 0.72, size.height * 0.64, size.width * 0.72, size.height * 0.64);
      path.cubicTo(size.width * 0.72, size.height * 0.64, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.65);
      path.cubicTo(size.width * 0.72, size.height * 0.65, size.width * 0.72, size.height * 0.66, size.width * 0.72, size.height * 0.66);
      path.cubicTo(size.width * 0.72, size.height * 0.66, size.width * 0.74, size.height * 0.7, size.width * 0.74, size.height * 0.7);
      path.cubicTo(size.width * 0.74, size.height * 0.7, size.width * 0.75, size.height * 0.72, size.width * 0.75, size.height * 0.72);
      path.cubicTo(size.width * 0.75, size.height * 0.72, size.width * 0.76, size.height * 0.71, size.width * 0.76, size.height * 0.71);
      path.cubicTo(size.width * 0.76, size.height * 0.71, size.width * 0.77, size.height * 0.72, size.width * 0.77, size.height * 0.72);
      path.cubicTo(size.width * 0.77, size.height * 0.72, size.width * 0.78, size.height * 0.74, size.width * 0.78, size.height * 0.74);
      path.cubicTo(size.width * 0.78, size.height * 0.74, size.width * 0.79, size.height * 0.74, size.width * 0.79, size.height * 0.74);
      path.cubicTo(size.width * 0.79, size.height * 0.74, size.width * 0.81, size.height * 0.73, size.width * 0.81, size.height * 0.73);
      path.cubicTo(size.width * 0.81, size.height * 0.73, size.width * 0.82, size.height * 0.74, size.width * 0.82, size.height * 0.74);
      path.cubicTo(size.width * 0.82, size.height * 0.74, size.width * 0.83, size.height * 0.77, size.width * 0.83, size.height * 0.77);
      path.cubicTo(size.width * 0.83, size.height * 0.77, size.width * 0.85, size.height * 0.78, size.width * 0.85, size.height * 0.78);
      path.cubicTo(size.width * 0.85, size.height * 0.79, size.width * 0.85, size.height * 0.8, size.width * 0.86, size.height * 0.8);
      path.cubicTo(size.width * 0.86, size.height * 0.8, size.width * 0.86, size.height * 0.81, size.width * 0.86, size.height * 0.81);
      path.cubicTo(size.width * 0.87, size.height * 0.83, size.width * 0.88, size.height * 0.85, size.width * 0.89, size.height * 0.87);
      path.cubicTo(size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87);
      path.cubicTo(size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87, size.width * 0.9, size.height * 0.87);
      path.cubicTo(size.width * 0.9, size.height * 0.87, size.width * 0.91, size.height * 0.87, size.width * 0.91, size.height * 0.87);
      path.cubicTo(size.width * 0.91, size.height * 0.87, size.width * 0.91, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.93, size.height * 0.86, size.width * 0.94, size.height * 0.84, size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.8, size.width * 0.94, size.height * 0.79);
      path.cubicTo(size.width * 0.94, size.height * 0.79, size.width * 0.94, size.height * 0.79, size.width * 0.94, size.height * 0.79);
      canvas.drawPath(path, paint);
  

      // Path number 87
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.93, size.height * 0.8);
      path.cubicTo(size.width * 0.93, size.height * 0.81, size.width * 0.92, size.height * 0.82, size.width * 0.92, size.height * 0.81);
      path.cubicTo(size.width * 0.91, size.height * 0.81, size.width * 0.9, size.height * 0.8, size.width * 0.9, size.height * 0.79);
      path.cubicTo(size.width * 0.9, size.height * 0.78, size.width * 0.91, size.height * 0.77, size.width * 0.92, size.height * 0.78);
      path.cubicTo(size.width * 0.92, size.height * 0.78, size.width * 0.92, size.height * 0.78, size.width * 0.92, size.height * 0.78);
      path.cubicTo(size.width * 0.92, size.height * 0.79, size.width * 0.92, size.height * 0.79, size.width * 0.93, size.height * 0.8);
      path.cubicTo(size.width * 0.93, size.height * 0.8, size.width * 0.93, size.height * 0.8, size.width * 0.93, size.height * 0.8);
      path.cubicTo(size.width * 0.93, size.height * 0.8, size.width * 0.93, size.height * 0.8, size.width * 0.93, size.height * 0.8);
      canvas.drawPath(path, paint);
  

      // Path number 88
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 0.96, size.height * 0.8);
      path.cubicTo(size.width * 0.96, size.height * 0.83, size.width * 0.95, size.height * 0.85, size.width * 0.94, size.height * 0.86);
      path.cubicTo(size.width * 0.93, size.height * 0.86, size.width * 0.93, size.height * 0.86, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.93, size.height * 0.86, size.width * 0.94, size.height * 0.84, size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.8, size.width * 0.94, size.height * 0.79);
      path.cubicTo(size.width * 0.93, size.height * 0.75, size.width * 0.92, size.height * 0.71, size.width * 0.89, size.height * 0.7);
      path.cubicTo(size.width * 0.88, size.height * 0.69, size.width * 0.87, size.height * 0.69, size.width * 0.87, size.height * 0.69);
      path.cubicTo(size.width * 0.87, size.height * 0.69, size.width * 0.88, size.height * 0.68, size.width * 0.88, size.height * 0.68);
      path.cubicTo(size.width * 0.89, size.height * 0.68, size.width * 0.9, size.height * 0.68, size.width * 0.91, size.height * 0.69);
      path.cubicTo(size.width * 0.93, size.height * 0.7, size.width * 0.95, size.height * 0.74, size.width * 0.95, size.height * 0.78);
      path.cubicTo(size.width * 0.96, size.height * 0.79, size.width * 0.96, size.height * 0.79, size.width * 0.96, size.height * 0.8);
      path.cubicTo(size.width * 0.96, size.height * 0.8, size.width * 0.96, size.height * 0.8, size.width * 0.96, size.height * 0.8);
      canvas.drawPath(path, paint);
  

      // Path number 89
  

      paint.color = Color(0xff8f97ff);
      path = Path();
      path.lineTo(size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.84, size.width * 0.93, size.height * 0.86, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.93, size.height * 0.86, size.width * 0.93, size.height * 0.86, size.width * 0.94, size.height * 0.86);
      path.cubicTo(size.width * 0.95, size.height * 0.85, size.width * 0.96, size.height * 0.83, size.width * 0.96, size.height * 0.8);
      path.cubicTo(size.width * 0.96, size.height * 0.8, size.width * 0.96, size.height * 0.8, size.width * 0.96, size.height * 0.8);
      path.cubicTo(size.width * 0.96, size.height * 0.8, size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81);
      canvas.drawPath(path, paint);
  

      // Path number 90
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.84, size.width * 0.93, size.height * 0.86, size.width * 0.92, size.height * 0.87);
      path.cubicTo(size.width * 0.93, size.height * 0.86, size.width * 0.93, size.height * 0.86, size.width * 0.94, size.height * 0.86);
      path.cubicTo(size.width * 0.95, size.height * 0.85, size.width * 0.96, size.height * 0.83, size.width * 0.96, size.height * 0.8);
      path.cubicTo(size.width * 0.96, size.height * 0.8, size.width * 0.96, size.height * 0.8, size.width * 0.96, size.height * 0.8);
      path.cubicTo(size.width * 0.96, size.height * 0.8, size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81);
      path.cubicTo(size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81, size.width * 0.94, size.height * 0.81);
      canvas.drawPath(path, paint);
  

      // Path number 91
  

      paint.color = Color(0xffffffff).withOpacity(0);
      path = Path();
      path.lineTo(size.width * 0.91, size.height * 0.86);
      path.cubicTo(size.width * 0.9, size.height * 0.86, size.width * 0.9, size.height * 0.86, size.width * 0.89, size.height * 0.85);
      path.cubicTo(size.width * 0.87, size.height * 0.84, size.width * 0.85, size.height * 0.79, size.width * 0.85, size.height * 0.75);
      path.cubicTo(size.width * 0.85, size.height * 0.73, size.width * 0.86, size.height * 0.71, size.width * 0.87, size.height * 0.71);
      path.cubicTo(size.width * 0.88, size.height * 0.7, size.width * 0.89, size.height * 0.7, size.width * 0.89, size.height * 0.71);
      path.cubicTo(size.width * 0.92, size.height * 0.72, size.width * 0.93, size.height * 0.77, size.width * 0.93, size.height * 0.81);
      path.cubicTo(size.width * 0.93, size.height * 0.83, size.width * 0.93, size.height * 0.85, size.width * 0.92, size.height * 0.85);
      path.cubicTo(size.width * 0.91, size.height * 0.86, size.width * 0.91, size.height * 0.86, size.width * 0.91, size.height * 0.86);
      path.cubicTo(size.width * 0.91, size.height * 0.86, size.width * 0.91, size.height * 0.86, size.width * 0.91, size.height * 0.86);
      path.lineTo(size.width * 0.88, size.height * 0.71);
      path.cubicTo(size.width * 0.88, size.height * 0.71, size.width * 0.87, size.height * 0.71, size.width * 0.87, size.height * 0.71);
      path.cubicTo(size.width * 0.86, size.height * 0.72, size.width * 0.86, size.height * 0.73, size.width * 0.86, size.height * 0.75);
      path.cubicTo(size.width * 0.86, size.height * 0.79, size.width * 0.87, size.height * 0.84, size.width * 0.89, size.height * 0.85);
      path.cubicTo(size.width * 0.9, size.height * 0.86, size.width * 0.91, size.height * 0.86, size.width * 0.92, size.height * 0.85);
      path.cubicTo(size.width * 0.93, size.height * 0.85, size.width * 0.93, size.height * 0.83, size.width * 0.93, size.height * 0.81);
      path.cubicTo(size.width * 0.93, size.height * 0.77, size.width * 0.91, size.height * 0.73, size.width * 0.89, size.height * 0.71);
      path.cubicTo(size.width * 0.89, size.height * 0.71, size.width * 0.89, size.height * 0.71, size.width * 0.88, size.height * 0.71);
      path.cubicTo(size.width * 0.88, size.height * 0.71, size.width * 0.88, size.height * 0.71, size.width * 0.88, size.height * 0.71);
      canvas.drawPath(path, paint);
  

      // Path number 92
  

      paint.color = Color(0xffffffff);
      path = Path();
      path.lineTo(size.width * 0.85, size.height * 0.71);
      path.cubicTo(size.width * 0.85, size.height * 0.72, size.width * 0.85, size.height * 0.72, size.width * 0.85, size.height * 0.73);
      path.cubicTo(size.width * 0.85, size.height * 0.73, size.width * 0.72, size.height * 0.64, size.width * 0.72, size.height * 0.64);
      path.cubicTo(size.width * 0.72, size.height * 0.64, size.width * 0.73, size.height * 0.63, size.width * 0.73, size.height * 0.63);
      path.cubicTo(size.width * 0.73, size.height * 0.63, size.width * 0.85, size.height * 0.71, size.width * 0.85, size.height * 0.71);
      canvas.drawPath(path, paint);
  

      // Path number 93
  

      paint.color = Color(0xffffa8a7);
      path = Path();
      path.lineTo(size.width * 1.03, size.height * 0.72);
      path.cubicTo(size.width * 1.03, size.height * 0.7, size.width * 1.04, size.height * 0.67, size.width * 1.04, size.height * 0.65);
      path.cubicTo(size.width * 1.05, size.height * 0.63, size.width * 1.04, size.height * 0.61, size.width * 1.03, size.height * 0.61);
      path.cubicTo(size.width * 1.02, size.height * 0.61, size.width, size.height * 0.7, size.width, size.height * 0.7);
      path.cubicTo(size.width, size.height * 0.7, size.width * 0.97, size.height * 0.72, size.width * 0.96, size.height * 0.73);
      path.cubicTo(size.width * 0.96, size.height * 0.73, size.width * 0.95, size.height * 0.73, size.width * 0.95, size.height * 0.73);
      path.cubicTo(size.width * 0.95, size.height * 0.73, size.width * 0.94, size.height * 0.73, size.width * 0.94, size.height * 0.73);
      path.cubicTo(size.width * 0.94, size.height * 0.73, size.width * 0.93, size.height * 0.72, size.width * 0.93, size.height * 0.72);
      path.cubicTo(size.width * 0.93, size.height * 0.73, size.width * 0.93, size.height * 0.73, size.width * 0.94, size.height * 0.73);
      path.cubicTo(size.width * 0.94, size.height * 0.73, size.width * 0.94, size.height * 0.73, size.width * 0.94, size.height * 0.73);
      path.cubicTo(size.width * 0.94, size.height * 0.74, size.width * 0.93, size.height * 0.74, size.width * 0.93, size.height * 0.74);
      path.cubicTo(size.width * 0.92, size.height * 0.74, size.width * 0.92, size.height * 0.74, size.width * 0.92, size.height * 0.75);
      path.cubicTo(size.width * 0.93, size.height * 0.76, size.width * 0.94, size.height * 0.76, size.width * 0.95, size.height * 0.76);
      path.cubicTo(size.width * 0.96, size.height * 0.75, size.width * 0.97, size.height * 0.75, size.width * 0.97, size.height * 0.75);
      path.cubicTo(size.width * 0.98, size.height * 0.74, size.width, size.height * 0.74, size.width, size.height * 0.74);
      path.cubicTo(size.width, size.height * 0.73, size.width * 1.02, size.height * 0.73, size.width * 1.03, size.height * 0.72);
      path.cubicTo(size.width * 1.03, size.height * 0.72, size.width * 1.03, size.height * 0.72, size.width * 1.03, size.height * 0.72);
      canvas.drawPath(path, paint);
  

      // Path number 94
  

      paint.color = Color(0xff455a64);
      path = Path();
      path.lineTo(size.width * 1.03, size.height * 0.61);
      path.cubicTo(size.width * 1.03, size.height * 0.61, size.width * 1.04, size.height * 0.61, size.width * 1.04, size.height * 0.61);
      path.cubicTo(size.width * 1.05, size.height * 0.62, size.width * 1.05, size.height * 0.63, size.width * 1.05, size.height * 0.65);
      path.cubicTo(size.width * 1.04, size.height * 0.67, size.width * 1.04, size.height * 0.68, size.width * 1.03, size.height * 0.7);
      path.cubicTo(size.width * 1.03, size.height * 0.7, size.width * 1.02, size.height * 0.71, size.width, size.height * 0.69);
      path.cubicTo(size.width, size.height * 0.69, size.width * 1.02, size.height * 0.64, size.width * 1.02, size.height * 0.64);
      path.cubicTo(size.width * 1.02, size.height * 0.64, size.width * 1.02, size.height * 0.61, size.width * 1.03, size.height * 0.61);
      path.cubicTo(size.width * 1.03, size.height * 0.61, size.width * 1.03, size.height * 0.61, size.width * 1.03, size.height * 0.61);
      canvas.drawPath(path, paint);
    }
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return true;
    }
  }
