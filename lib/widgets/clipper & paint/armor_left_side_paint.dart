import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class ArmorLeftSidePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..color=mainColor..strokeWidth=3.0;
    Path path=Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width*.5, size.height);
    path.lineTo(size.width*.6, size.height*.8);
    path.lineTo(size.width, size.height*.8);
    path.lineTo(size.width, 0);
    path.close();
    return canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}