import 'dart:math';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/model/weapon.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper2.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/daily_challange_inside_custom_paint.dart';
import 'clipper & paint/daily_challenge_custom_paint.dart';
import 'clipper & paint/home_rightside_clipper.dart';
import 'clipper & paint/mission_custom_paint.dart';
import 'clipper & paint/weapon_card_paint.dart';
import 'clipper & paint/weapon_card_clipper.dart';

class WeaponCard extends StatelessWidget {
  final Weapon weapon;

  WeaponCard({this.weapon});
  @override
  Widget build(BuildContext context) {var size=MediaQuery.of(context).size;
  return ClipPath(
    clipper: WeaponCardClipper(),
    child: Container(margin: EdgeInsets.only(bottom: size.height*.005),
        width: size.width,
        height: size.height*.16,
        child: Stack(
          children: [
            BlurryContainer(blur: 4,
              borderRadius: BorderRadius.zero,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width*.075,
                    height: size.height,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(weapon.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: size.width*.011),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(width: size.width*.021,
                              height: size.width*.021,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: mainColor,width: 1),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(weapon.icon1)
                                  )
                              ),
                            ),
                            Container(width: size.width*.021,
                              height: size.width*.021,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: mainColor,width: 1),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(weapon.icon2)
                                  )
                              ),
                            ),
                            Container(width: size.width*.021,
                              height: size.width*.021,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: mainColor,width: 1),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(weapon.icon3)
                                  )
                              ),
                            ),
                          ],),
                        Text(
                          'Level ${weapon.level}',style: TextStyle(color: mainColor,fontWeight: FontWeight.w800,fontSize: size.width*.008),),
                      ],
                    ),
                  ),
                  Container(width: size.width*.14,
                    height: size.height*.15,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: NetworkImage(weapon.imageUrl)
                        )
                    ),
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: CustomPaint(
                painter: WeaponCardPaint(),
              ),
            ),
          ],
        )
    ),
  );
  }
}
