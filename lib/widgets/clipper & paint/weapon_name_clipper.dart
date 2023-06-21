import 'package:flutter/material.dart';

class WeaponNameClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
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
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}