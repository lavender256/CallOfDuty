import 'dart:math';

import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/custom_paint9.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'clipper & paint/clipper9.dart';

class IDSign extends StatefulWidget {
  final bool isRightUser;

  IDSign({this.isRightUser = true});

  /// is Right
  @override
  _IDSignState createState() => _IDSignState();
}

class _IDSignState extends State<IDSign> {
  bool isSelected = true;
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: widget.isRightUser ? size.width * .14 : size.width * .13,
      height: size.height * .14,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 8,
            left: widget.isRightUser ? size.width * .015 : null,
            right: widget.isRightUser ? null : size.width * .016,
            child: Transform.rotate(
              angle: widget.isRightUser ? pi / 8 : -pi / 8,
              child: Container(
                color: !widget.isRightUser ? mainColor : secondColor,
                width: 2,
                height: size.height * .07,
              ),
            ),
          ),
          Positioned(
            left: widget.isRightUser ? 0 : null,
            bottom: 10,
            right: widget.isRightUser ? null : 0,
            child: Container(
              width: size.width * .01,
              height: 2,
              color: !widget.isRightUser ? mainColor : secondColor,
            ),
          ),
          Positioned(
            left: widget.isRightUser ? size.width * .022 : null,
            top: size.height * .06,
            right: widget.isRightUser ? null : size.width * .024,
            child: Container(
              width: size.width * .01,
              height: 2,
              color: !widget.isRightUser ? mainColor : secondColor,
            ),
          ),
          Positioned(
            left: widget.isRightUser ? 0 : null,
            bottom: 8,
            right: widget.isRightUser ? null : 0,
            child: Container(
              width: size.width * .004,
              height: size.width * .004,
              decoration: BoxDecoration(
                  color: !widget.isRightUser ? mainColor : secondColor,
                  shape: BoxShape.circle),
            ),
          ),
          Positioned(
            left: widget.isRightUser ? size.width * .032 : size.width * .025,
            child: RotatedBox(
              quarterTurns: widget.isRightUser ? 4 : 2,
              child: ClipPath(
                clipper: widget.isRightUser ? Clipper9() : Clipper9(),
                child: Container(
                    width: size.width * .07,
                    height: size.height * .06,
                    decoration: BoxDecoration(
                        gradient: !widget.isRightUser?LinearGradient(colors: [
                          Color(0xffffffb7).withOpacity(.6),
                          mainColor.withOpacity(.6),
                          Color(0xffffcf07).withOpacity(.6),
                        ]):LinearGradient(colors: [
                          Color(0xffadf7f2).withOpacity(.6),
                          secondColor.withOpacity(.6),
                          Color(0xff15aaff).withOpacity(.6),
                        ])),
                    child: Stack(
                      children: [
                        Center(
                            child: RotatedBox(
                                quarterTurns: widget.isRightUser ? 4 : 2,
                                child: Text(
                                    widget.isRightUser
                                        ? "CallOfMosi"
                                        : 'Katrina',
                                    style: TextStyle(
                                        color: Colors.white,letterSpacing: widget.isRightUser
                                        ?1:1.2,fontSize: size.width*.008,
                                        fontWeight: FontWeight.w100,
                                        fontFamily: "Boston")))),
                        Positioned.fill(
                            child: RotatedBox(
                              quarterTurns: 4,
                              child: Container(
                                  width: size.width * .07,
                                  height: size.height * .06,
                                  child: CustomPaint(
                                    painter: CustomPaint9(
                                        color: !widget.isRightUser
                                            ?  Color(0xffd4af37)
                                            :  Color(0xff15aaff)),
                                  )),
                            )),
                      ],
                    )),
              ),
            ),
          ),
          Positioned(
            right: widget.isRightUser ? size.width * .01 : null,
            left: widget.isRightUser ? null : 0,
            child: MouseRegion(
              onEnter: (value) {
                setState(() {
                  isHover = true;
                });
              },
              onExit: (value) {
                setState(() {
                  isHover = false;
                });
              },
              child: Container(
                width: size.width * .035,
                height: size.width * .035,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: !widget.isRightUser ? mainColor : secondColor,
                        width: 2),
                    image: DecorationImage(
                        image: NetworkImage(widget.isRightUser
                            ? "https://s8.uupload.ir/files/0_1vbk.jpg"
                            : "https://s8.uupload.ir/files/1_wd8o.jpg"),
                        fit: BoxFit.cover)),
                child: isHover
                    ? Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                            color: !widget.isRightUser?mainColor.withOpacity(.5):secondColor.withOpacity(.5),
                              shape: BoxShape.circle),
                        )),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Icon(
                          isSelected
                              ? Iconsax.volume_mute
                              : Iconsax.volume_cross,
                          color: isSelected ? Colors.white : Colors.white,
                        ))
                  ],
                )
                    : SizedBox.shrink(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
