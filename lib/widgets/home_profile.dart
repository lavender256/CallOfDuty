import 'dart:math';

import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper3.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/home_mission_clipper.dart';
import 'package:call_of_duty/widgets/home_profile_clipper.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';

import 'clipper & paint/home_profile_custom_paint.dart';

class HomeProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.25,
      height: size.height*.17,
      child: Stack(alignment: Alignment.center,
        children: [
          Positioned(
            right: 0,
            child: ClipPath(
              clipper: HomeProfileClipper(),
              child: Container(padding: EdgeInsets.only(bottom: size.height*.04,left: size.width*.035,top: size.height*.02),
                width: size.width*.25,
                height: size.height*.17,
                decoration: BoxDecoration(color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Lavender256",style: TextStyle(color: mainColor,fontSize: size.width*.014,fontWeight: FontWeight.w700),),
                  Text("Rank 232",style: TextStyle(color: secondColor,fontSize: size.width*.015,fontWeight: FontWeight.w700),),
                  Container(
                    width: size.width*.125,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Social",style: TextStyle(color: Colors.white),),
                        Container(
                          width: size.width*.007,
                          height: size.width*.007,
                          color: Colors.green,),
                        SizedBox(width: size.width*.005,),
                        Icon(FrinoIcons.f_group,color: Colors.white,),
                        Text("1 / 20",style: TextStyle(color: Colors.white,fontFamily: "Carre"),), SizedBox(width: size.width*.005,),
                        Icon(FrinoIcons.f_male,color: Colors.white,size: size.width*.01,),
                        Text("0",style: TextStyle(color: Colors.white),),
                      ],),
                  )
                ],),
              ),
            ),
          ),
          Positioned.fill(
            child: CustomPaint(
              painter: HomeProfileCustomPaint(),

            ),
              ),
          Positioned(
            right: size.width*.02,
            top: size.height*.02,
            child:Container(width: size.width*.07,
            height: size.height*.13,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://s8.uupload.ir/files/27_oeyk.png")
                )
              ),
            )
          )
        ],
      )
    );
  }
}
