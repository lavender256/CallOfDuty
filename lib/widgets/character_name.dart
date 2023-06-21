import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/model/character.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/character_name_paint.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/character_name_clipper.dart';

class CharacterName extends StatelessWidget {
final String name;
final String service;
CharacterName({this.name, this.service});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return ClipPath( clipper: CharacterNameClipper(),
      child: Container(
        width: size.width*.2,
        height: size.height*.22,
        child: Stack(
          children: [
            Positioned.fill(child: BlurryContainer(padding: EdgeInsets.only(bottom: size.height*.07,top: size.height*.02),
              blur: 15,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(name,style: TextStyle(color: mainColor,fontSize: size.width*.025,)),
                  Text(service,style: TextStyle(color: Colors.white,fontSize: size.width*.013,),textAlign: TextAlign.center)
                ],
              ),
            )),
            Positioned.fill(
              child: CustomPaint(
                painter: CharacterNamePaint(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
