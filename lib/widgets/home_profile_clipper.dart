import 'package:flutter/material.dart';

class HomeProfileClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size)
  {
    Path path=Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height*.8);
    path.lineTo(size.width*.45, size.height*.8);
    path.lineTo(size.width*.7, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}