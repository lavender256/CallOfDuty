import 'package:flutter/material.dart';

class HomeEventClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0.0, 0.0);//1
    path.lineTo(0.0, size.height);//2
    path.lineTo(size.width, size.height);//3
    path.lineTo(size.width, size.height*.2);//4
    path.lineTo(size.width*.8, 0);//5
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}