import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper4.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper8.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/custom_paint4.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/custom_paint8.dart';

class BattleRoyalCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  ClipPath(clipper: Clipper8(),
      child: Container(width: size.width*.24,
        height: size.height*.17,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://s8.uupload.ir/files/19_rzhu.jpg")
            )
        ),
        child: Stack(
          children: [
            Positioned.fill(child: Container(color: Colors.black.withOpacity(.2),)),

            Positioned.fill(
              child: Container(
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: size.width*.02)
                        ,child: Text("battle Royal",style: TextStyle(
                        fontSize: size.width*.015,
                        color: mainColor,fontWeight: FontWeight.w300),)),
                    Padding(
                        padding: EdgeInsets.only(left: size.width*.02)
                        ,child: Text("Supported up to 100 players on its first map called\nverdansk",style: TextStyle(
                        fontSize: size.width*.008,fontFamily: "Carre",
                        color: Colors.white,fontWeight: FontWeight.w300),)),
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
              painter: CustomPaint8(),
            ))
          ],
        ),
      ),
    );
  }
}
