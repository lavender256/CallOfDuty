import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper2.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/mission_custom_paint.dart';

class QuickPlayCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  ClipPath(
      clipper: Clipper2(),
      child: Container(width: size.width*.24,
        height: size.height*.17,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://s8.uupload.ir/files/18_cs0b.jpg")
            )
        ),
        child: Stack(
          children: [
            Positioned.fill(child: Container(color: Colors.black.withOpacity(.4),)),
            Positioned.fill(
              child: Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: size.width*.02)
                        ,child: Text("Quick play",style: TextStyle(
                        fontSize: size.width*.015,
                        color: secondColor,fontWeight: FontWeight.w300),)),
                    Padding(
                        padding: EdgeInsets.only(left: size.width*.02)
                        ,child: Text("Play a rotation of selected game modes and map\ntypes.",style: TextStyle(
                        fontSize: size.width*.008,fontFamily: "Carre",
                        color: Colors.white,fontWeight: FontWeight.w500),)),
                    Container(
                      padding: EdgeInsets.only(left: size.width*.02),
                      width: size.width,
                      height: size.height*.04,
                      color: Colors.black.withOpacity(.4),
                      child: Align(
                          alignment:Alignment.centerLeft
                          ,child: Text("Core",style: TextStyle(color: Colors.white),)),
                    )
                  ],
                ),
              ),
            ),
            Positioned.fill(child: CustomPaint(
              painter: MissionInsideCutomPaint(),
            ))
          ],
        ),
      ),
    );
  }
}
