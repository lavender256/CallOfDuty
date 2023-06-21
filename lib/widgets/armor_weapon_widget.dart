import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/data/data.dart';
import 'package:call_of_duty/model/weapon.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/custom_paint10.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/weapon_name_paint.dart';
import 'package:call_of_duty/widgets/weapon_card.dart';
import 'package:call_of_duty/widgets/weapon_statics_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'clipper & paint/clipper2.dart';
import 'clipper & paint/clipper8.dart';
import 'clipper & paint/clipper9.dart';
import 'clipper & paint/custom_paint8.dart';
import 'clipper & paint/custom_paint9.dart';
import 'clipper & paint/daily_challenge_custom_paint.dart';
import 'clipper & paint/home_profile_custom_paint.dart';
import 'clipper & paint/mission_custom_paint.dart';
import 'clipper & paint/mission_inside_custom_paint.dart';
import 'clipper & paint/weapon_name_clipper.dart';

class ArmorWeaponWidget extends StatefulWidget {
  @override
  State<ArmorWeaponWidget> createState() => _ArmorWeaponWidgetState();
}

class _ArmorWeaponWidgetState extends State<ArmorWeaponWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(color: Colors.black,
          image: DecorationImage(
              image: NetworkImage(weaponList[currentIndex].imageUrl2), fit: BoxFit.fitHeight)),
      child: Stack(
        children: [Positioned.fill(child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black, Colors.black,Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,Colors.black,Colors.black
              ])
          ),
        )),
          Positioned(
              left: size.width * .03,
              top: size.height * .16,
              child: Container(
                width: size.width * .25,
                height: size.height * .85,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: weaponList.length,
                    itemBuilder: (BuildContext context, int index) {
                      Weapon weapon = weaponList[index];
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: AnimationConfiguration.staggeredList(
                            position: index,
                            child:SlideAnimation(
                                duration: Duration(milliseconds: 500),
                                horizontalOffset: -50,
                                child: WeaponCard(
                                  weapon: weapon,
                                ))));
                    }),
              )),
          Positioned(bottom: size.height*.02,
            left: size.width*.285,
            child: Container(
              width: size.width * .29,
              height: size.height * .19,
              decoration: BoxDecoration(border: Border.all(color: secondColor,width: 2)),
              child:BlurryContainer(
                blur: 15,
                borderRadius: BorderRadius.zero,
                child: Column(crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WeaponStaticsOption(
                      title: "damage",
                      count: size.width * .11,
                    ),
                    WeaponStaticsOption(
                      title: "Precision",
                      count: size.width * .18,
                    ),
                    WeaponStaticsOption(
                      title: "Cadence",
                      count: size.width * .08,
                    ),
                    WeaponStaticsOption(
                      title: "Stability",
                      count: size.width * .13,
                    ),
                    WeaponStaticsOption(
                      title: "first rate",
                      count: size.width * .12,
                    ),
                    WeaponStaticsOption(
                      title: "control",
                      count: size.width * .14,
                    ),
                  ],
                ),
              )
            ),
          ),
          Positioned(
              left: size.width*.285,
              top: size.height * .16,
              child: Container(height: size.height*.16,
          width: size.width*.15,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipPath(
                        clipper: WeaponNameClipper(),
                        child: Container(
                          child: Stack(children: [
                            Positioned.fill(child: BlurryContainer(
                              blur: 2,
                              borderRadius: BorderRadius.zero,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: size.width*.005,vertical: size.height*.02),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text(weaponList[currentIndex].name,style: TextStyle(color: secondColor,fontSize: size.width*.013),),
                                  SizedBox(height: size.height*.008,),
                                  Text('a fully automatic 9 mm submachine gun.\na perfect balance of stability,mobility and lethality',style: TextStyle(color: Colors.white,fontSize: size.width*.007,fontFamily: "Carre"),)
                                ],),
                              ),
                            )),
                            Positioned.fill(
                              child: CustomPaint(
                                  painter:WeaponNamePaint()
                              ),
                            ),
                          ],),
                        ),
                      ),
                    ),

                  ],
                ),
          ))
        ],
      ),
    );
  }
}
