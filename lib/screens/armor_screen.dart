import 'dart:math';
import 'package:call_of_duty/data/data.dart';
import 'package:call_of_duty/model/armor.dart';
import 'package:call_of_duty/widgets/armor_bottom_side.dart';
import 'package:call_of_duty/widgets/armor_right_card.dart';
import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ArmorScreen extends StatefulWidget {
  @override
  State<ArmorScreen> createState() => _ArmorScreenState();
}

class _ArmorScreenState extends State<ArmorScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned(
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: armorBottomOptions[currentIndex],
                )),
            Positioned(
                top: size.height * .02,
                left: size.width * .025,
                child: Container(
                  width: size.width * .1,
                  height: size.height * .08,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: NetworkImage(
                              "https://s8.uupload.ir/files/22_c7q2.png"))),
                )),
            Positioned(
                top: size.height * .02,
                child: CustomAppBar(
                  currentIndex: 1,
                )),
            Positioned(
                top: size.height * .14,
                right: size.width * .02,
                child: Container(
                    width: size.width * .22,
                    height: size.height * .85,
                    child: ListView.builder(
                        itemCount: armorList.length,
                        itemBuilder: (BuildContext context, int index) {
                          Armor armor = armorList[index];
                          return GestureDetector(
                              onTap: () {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              child: AnimationConfiguration.staggeredList(
                                  position: index,
                                  child: SlideAnimation(
                                      horizontalOffset: 50,
                                      verticalOffset: 20,
                                      duration: Duration(milliseconds: 1000),
                                      child: ArmorRightCard(
                                          armor: armor, index: index))));
                        }))),
          ],
        ),
      ),
    );
  }
}
