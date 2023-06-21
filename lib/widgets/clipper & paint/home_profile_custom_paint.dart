import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';


class HomeProfileCustomPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=2.0..color=mainColor;
    Path path=Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height*.8);
    path.lineTo(size.width*.45, size.height*.8);
    path.lineTo(size.width*.7, size.height);
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