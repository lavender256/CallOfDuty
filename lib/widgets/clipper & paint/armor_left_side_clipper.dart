import 'package:flutter/material.dart';

class ArmorLeftSideClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width*.5, size.height);
    path.lineTo(size.width*.6, size.height*.8);
    path.lineTo(size.width, size.height*.8);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}