import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class MissionInsideCustomPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=2.0..color=secondColor;
    Path path=Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height*.15);
    path.lineTo(size.width*.6, size.height*.15);
    path.lineTo(size.width*.5, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
   return true;
  }

}