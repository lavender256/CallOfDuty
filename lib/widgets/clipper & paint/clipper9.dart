import 'package:flutter/material.dart';

class Clipper9 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0.0, size.height*.2);//1
    path.lineTo(0.0, size.height*.8);//2
    path.lineTo(size.width*.4, size.height*.8);//3
    path.lineTo(size.width*.5, size.height);//4
    path.lineTo(size.width, size.height);//5
    path.lineTo(size.width, 0);//6
    path.lineTo(size.width*.3, 0);//7
    path.lineTo(size.width*.2, size.height*.2);//8
    path.lineTo(0.0, size.height*.2);//
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}