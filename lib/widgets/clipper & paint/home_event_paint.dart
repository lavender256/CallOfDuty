import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class HomeEventPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=3.0..color=mainColor;
    Path path=Path();
    path.lineTo(0.0, 0.0);//1
    path.lineTo(0.0, size.height);//2
    path.lineTo(size.width, size.height);//3
    path.lineTo(size.width, size.height*.2);//4
    path.lineTo(size.width*.8, 0);//5
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}