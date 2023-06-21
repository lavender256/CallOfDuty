import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class WeaponCardPaint extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=2.0..color=mainColor;
    Path path=Path();
    path.lineTo(0.0, 0.0);//1
    path.lineTo(0.0, size.height);//2
    path.lineTo(size.width*.65, size.height);//3
    path.lineTo(size.width*.7, size.height*.85);//4
    path.lineTo(size.width*.9, size.height*.85);//5
    path.lineTo(size.width, size.height*.7);//6
    path.lineTo(size.width, 0);//7
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}