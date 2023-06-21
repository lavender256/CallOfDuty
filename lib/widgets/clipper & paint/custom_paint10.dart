import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class CustomPaint10 extends CustomPainter{
  final Color color;

  CustomPaint10({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=2.5..color=color;
    Path path=Path();
    path.lineTo(0.0, 0);//1
    path.lineTo(0.0, size.height*.8);//2
    path.lineTo(size.width*.4, size.height*.8);//3
    path.lineTo(size.width*.5, size.height);//4
    path.lineTo(size.width, size.height);//5
    path.lineTo(size.width, 0);//6
    path.lineTo(size.width*.3, 0);//7
    path.lineTo(size.width*.2, size.height*.2);//8
    path.lineTo(0.0, size.height*.2);//
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}