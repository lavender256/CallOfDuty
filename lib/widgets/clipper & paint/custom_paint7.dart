import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class CustomPaint7 extends CustomPainter{
  final Color color;

  CustomPaint7({this.color=mainColor});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=3.0..color=color;
    Path path=Path();
    path.lineTo(size.width*.2, 0);
    path.lineTo(0.0, size.height*.2);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}