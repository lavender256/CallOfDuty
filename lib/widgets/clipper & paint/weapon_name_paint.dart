import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class WeaponNamePaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint()..style=PaintingStyle.stroke..strokeWidth=2.5..color=secondColor;
    Path path=Path();
    path.lineTo(0, 0);//1
    path.lineTo(0,size.height*.8);//2
    path.lineTo(size.width*.1,size.height);//3
    path.lineTo(size.width*.7,size.height);//4
    path.lineTo(size.width*.8,size.height*.8);//5
    path.lineTo(size.width,size.height*.8);//6
    path.lineTo(size.width,size.height*.25);//7
    path.lineTo(size.width*.6,size.height*.25);//8
    path.lineTo(size.width*.5,0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}
/*
*  path.lineTo(0, 0);//1
    path.lineTo(0,size.height*.8);//2
    path.lineTo(size.width*.1,size.height);//3
    path.lineTo(size.width*.7,size.height);//4
    path.lineTo(size.width*.8,size.height*.8);//5
    path.lineTo(size.width,size.height*.8);//6
    path.lineTo(size.width,size.height*.25);//7
    path.lineTo(size.width*.6,size.height*.25);//8
    path.lineTo(size.width*.5,0);//9*/