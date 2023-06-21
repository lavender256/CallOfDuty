import 'package:flutter/material.dart';

class WeaponCardClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0.0, 0.0);//1
    path.lineTo(0.0, size.height);//2
    path.lineTo(size.width*.65, size.height);//3
    path.lineTo(size.width*.7, size.height*.85);//4
    path.lineTo(size.width*.9, size.height*.85);//5
    path.lineTo(size.width, size.height*.7);//6
    path.lineTo(size.width, 0);//7
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}