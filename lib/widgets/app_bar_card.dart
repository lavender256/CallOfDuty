import 'dart:math';

import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/data/data.dart';
import 'package:call_of_duty/screens/armor_screen.dart';
import 'package:call_of_duty/screens/battlepass_screen.dart';
import 'package:call_of_duty/screens/loading_screen.dart';
import 'package:flutter/material.dart';

class AppBarCard extends StatefulWidget {
  final int index;
  final int currentIndex;

  AppBarCard({this.index, this.currentIndex});

  @override
  _AppBarCardState createState() => _AppBarCardState();
}

class _AppBarCardState extends State<AppBarCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => widget.index == 0
                    ? LoadingScreen()
                    : widget.index == 1
                        ? ArmorScreen()
                        : widget.index == 2
                            ? BattlePassScreen()
                            : null)),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(right: size.width * .03),
              width: size.width * .07,
              height: size.height * .08,
              decoration: widget.index == 2
                  ? BoxDecoration(
                      gradient: LinearGradient(colors: [
                      Color(0xffffcf07).withOpacity(.2),
                      mainColor.withOpacity(.3),
                      Color(0xfffff192).withOpacity(.3),
                    ]))
                  : BoxDecoration(color: Colors.transparent),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    appBarList[widget.index].toUpperCase(),
                    style: TextStyle(letterSpacing: 1.2,
                        color: Colors.white, fontWeight: FontWeight.w800),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 24,
                    child: Container(
                        width: 3,
                        height: 10,
                        color: widget.currentIndex == widget.index
                            ? Color(0xfffff192)
                            : Colors.transparent),
                  ),
                  Positioned(
                    top: 5,
                    left: 22,
                    child: Container(
                        width: 3,
                        height: 10,
                        color: widget.currentIndex == widget.index
                            ?   Color(0xffffcf07)
                            : Colors.transparent),
                  ),
                  Positioned(
                    top: 5,
                    right: 45,
                    left: 25,
                    child: Container(
                      width: size.width,
                      height: 3,
                      decoration: widget.currentIndex == widget.index
                          ? BoxDecoration(
                              gradient: LinearGradient(colors: [
                              Color(0xffffcf07),
                              mainColor,
                              Color(0xfffff192),
                            ]))
                          : BoxDecoration(color: Colors.transparent),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 25,
                    left: 45,
                    child: Container(
                      width: size.width,
                      height: 3,
                      decoration: widget.currentIndex == widget.index
                          ? BoxDecoration(
                              gradient: LinearGradient(colors: [
                              Color(0xffffcf07),
                              mainColor,
                              Color(0xfffff192),
                            ]))
                          : BoxDecoration(color: Colors.transparent),
                    ),
                  ),
                ],
              ),
            ),
            widget.index == 2
                ? Container(
                    margin: EdgeInsets.only(right: size.width * .03),
                    width: size.width * .07,
                    height: size.height * .04,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      Color(0xfffff192),
                      mainColor,
                      Color(0xffffcf07),
                    ])),
                    child: Center(
                        child: Text(
                      "Seasons 4".toUpperCase(),
                      style: TextStyle(color: Colors.black.withOpacity(.8)),
                    )),
                  )
                : SizedBox.shrink()
          ],
        ));
  }
}
