import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class BattlePassPaint extends CustomPainter{
  final Color color;

  BattlePassPaint({this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=3.0..color=color;
    Path path=Path();
    path.lineTo(size.width*.1,0); //1
    path.lineTo(0,size.height*.1); //2
    path.lineTo(0, size.height*.6); //3
    path.lineTo(size.width*.3, size.height);//4
    path.lineTo(size.width*.7, size.height); //5
    path.lineTo(size.width, size.height*.6); //6
    path.lineTo(size.width, size.height*.1); //7
    path.lineTo(size.width*.9, 0); //8
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}