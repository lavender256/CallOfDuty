import 'package:flutter/material.dart';

class CharacterNameClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(size.width*.1,0); //1
    path.lineTo(0,size.height*.1); //2
    path.lineTo(0, size.height*.6); //3
    path.lineTo(size.width*.25, size.height);//4
    path.lineTo(size.width*.75, size.height); //5
    path.lineTo(size.width, size.height*.6); //6
    path.lineTo(size.width, size.height*.1); //7
    path.lineTo(size.width*.9, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}