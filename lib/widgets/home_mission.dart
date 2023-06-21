import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper2.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/home_mission_clipper.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/mission_custom_paint.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/mission_inside_custom_paint.dart';

class HomeMission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        child: Stack(children: [
          ClipPath(
            clipper: Clipper2(),
            child: Container(
              padding:
              EdgeInsets.only(top: size.height * .02, left: size.width * .01),
              width: size.width * .26,
              height: size.height * .2,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: size.width * .01),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Mission --- ",
                              style: TextStyle(
                                letterSpacing: 1.3,
                                  wordSpacing: 1.3,
                                  fontSize: size.width*.01,
                                  color:secondColor.withOpacity(.8),
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Boston")),
                          TextSpan(
                              text: "Weapon Expert",
                              style: TextStyle(
                                  color:  Color(0xff15aaff),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Boston"))
                        ])),
                  ),
                  SizedBox(
                    height: size.height * .005,
                  ),
                  Container(
                    width: size.width,
                    height: 1,
                    color: secondColor,
                  ),
                  SizedBox(
                    height: size.height * .01,
                  ),
                  Stack(
                    children: [
                      ClipPath(
                        clipper: HomeMissionClipper(),
                        child: Container(
                          padding: EdgeInsets.only(top: size.height * .01),
                          width: size.width,
                          height: size.height * .12,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff15aaff).withOpacity(.4),
                                secondColor.withOpacity(.4),
                                Color(0xffadf7f2).withOpacity(.6),
                              ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * .01),
                                child: Row(
                                  children: [
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                            text: "[3/7] - ",
                                            style: TextStyle(
                                                fontFamily: "Carre",
                                                color: Colors.white,
                                                fontSize: size.width * .009),
                                          ),
                                          TextSpan(
                                            text: "Get  ",
                                            style: TextStyle(
                                                fontFamily: "segLove",
                                                color: Colors.white,
                                                fontSize: size.width * .009),
                                          ),
                                          TextSpan(
                                            text: "35 ",
                                            style: TextStyle(
                                                fontFamily: "Boston",
                                                color: secondColor,
                                                fontSize: size.width * .009),
                                          ),
                                          TextSpan(
                                            text: "Kills with a Shotgun",
                                            style: TextStyle(
                                                fontFamily: "segLove",
                                                color: Colors.white,
                                                fontSize: size.width * .009),
                                          )
                                        ])),
                                    Spacer(),
                                    Container(
                                      width: size.width * .02,
                                      height: size.width * .02,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://s8.uupload.ir/files/26_47qk.png"))),
                                    ),
                                    SizedBox(
                                      width: size.width * .002,
                                    ),
                                    Container(
                                      width: size.width * .02,
                                      height: size.width * .02,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://s8.uupload.ir/files/23_zq8g.png"))),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: size.width * .01),
                                child: Row(
                                  children: [
                                    Container(
                                      width: size.width * .01,
                                      height: size.width * .01,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white)),
                                    ),
                                    SizedBox(
                                      width: size.width * .003,
                                    ),
                                    Container(
                                      width: size.width * .19,
                                      height: size.width * .01,
                                      color: Colors.white30,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Positioned(
                                                left: 0,
                                                child: Container(
                                                  width: size.width * .11,
                                                  height: size.width * .01,
                                                  color: Color(0xff15aaff),
                                                )),
                                            Positioned(
                                                left: size.width * .006,
                                                child: Text(
                                                  "19/35",
                                                  style: TextStyle(
                                                      fontFamily: "Carre",
                                                      color: Colors.white,
                                                      fontSize: size.width * .007),
                                                )),
                                          ]),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned.fill(
                          child: CustomPaint(
                            painter: MissionInsideCustomPaint(),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
              child: CustomPaint(
                painter: MissionInsideCutomPaint(),
              ))
        ]));
  }
}
