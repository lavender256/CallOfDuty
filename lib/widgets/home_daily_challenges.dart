import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper2.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/daily_challenge_custom_paint.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';

import 'clipper & paint/daily_challange_inside_custom_paint.dart';
import 'daily_challenge_card.dart';
import 'clipper & paint/home_rightside_clipper.dart';

class HomeDailyChallenges extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Stack(
      children: [
        ClipPath(
          clipper: Clipper2(),
          child: Container(
            padding: EdgeInsets.only(top: size.height*.02,left: size.width*.01),
            width: size.width*.25,
            height: size.height*.38,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.5),
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding( padding: EdgeInsets.symmetric(horizontal: size.width*.01),
                    child: Row(children: [
                      Text("Daily Challenges",style: TextStyle(color: mainColor.withOpacity(.8)),),
                      Spacer(),
                      Icon(FrinoIcons.f_refresh,color: Colors.white54,size: size.width*.012,),
                      SizedBox(width: size.width*.01,),
                      Text("12 h 6m",style: TextStyle(color: Colors.white54,fontFamily: "Carre"),)
                    ],)),
                SizedBox(height: size.height*.005,),
                Container(width: size.width,
                  height: 1,
                  color: mainColor,
                ),
                SizedBox(height: size.height*.01,),
                Stack(
                  children: [
                    ClipPath(
                      clipper: HomeRightSideClipper(),
                      child: Container(
                        padding: EdgeInsets.only(top: size.height*.02),
                        height: size.height*.28,width: size.width*.25,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xffd4af37).withOpacity(.4),
                              mainColor.withOpacity(.4),
                              Color(0xfffff192).withOpacity(.6),
                            ])
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DailyChallengesCard(text1: "Get ",text2: "5 ",text3: "Headshot with Light Guns ",count: 6,count2: 5,),
                            DailyChallengesCard(text1: "Call in ",text2: "5 ",text3: "Personal Radars",count: 10,),
                            DailyChallengesCard(text1: "Get ",text2: "10 ",text3: "Melee Kills while using a gun",count: 35,),
                          ],),
                      ),
                    ),
                    Positioned.fill(child: CustomPaint(painter: DailyChallengeInsideCustomPaint(),))
                  ],
                )

              ],
            ),
          ),
        ),
        Positioned.fill(child: CustomPaint(
          painter: DailyChallengeCustomPaint(),
        ))
      ],
    );
  }
}
