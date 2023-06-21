import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/model/battlepass.dart';
import 'package:call_of_duty/widgets/battle_pass_status_card.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/battle_pass_paint.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper8.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/battle_pass_clipper.dart';
import 'clipper & paint/home_mission_clipper.dart';
import 'clipper & paint/mission_inside_custom_paint.dart';

class BattlePassStatus extends StatelessWidget {
  final BattlePass battlePass;

  BattlePassStatus({this.battlePass});

  @override
  Widget build(BuildContext context) {var size = MediaQuery.of(context).size;
   return Container(
     height:size.height*.16,
     width: size.width*.22,
     child: Stack(alignment: Alignment.center,
       children: [
        Positioned(
           bottom: size.height*.03,
           left: size.width*.065,
           child: ClipPath(
             clipper: HomeMissionClipper(),
             child: Container(
               padding: EdgeInsets.symmetric(horizontal: size.width*.02,vertical: size.height*.02),
               width: size.width*.15,
             height: size.height*.09,
               color: secondColor.withOpacity(.5),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text("Battlepass  complete",style: TextStyle(color: Colors.white,fontSize: size.width*.01),),
                   Text("pass resets 33d 10h 2m",style: TextStyle(color: Colors.white,fontSize: size.width*.009,fontFamily: 'Carre'),)
                 ],
               ),
             ),
           ),
         ),
       Positioned(
             bottom: size.height*.03,
             left: size.width*.065,
             child: Container(
               width: size.width*.15,
               height: size.height*.09,
               child: CustomPaint(
                 painter: MissionInsideCustomPaint(),
               ),
         )),
         Positioned(
             left: 0,
             child:  !battlePass.isGun?BattlePassStatusCard(battlePass:battlePass):Container(width: size.width*.09,
           height: size.height*.16,
           decoration: BoxDecoration(
               image: DecorationImage(fit: BoxFit.fitWidth,
                   image: NetworkImage("https://s8.uupload.ir/files/43_ch8.png"))
           ),))
       ],
     ),
   );

  }
}
