import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/model/battlepass.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/battle_pass_clipper.dart';
import 'clipper & paint/battle_pass_paint.dart';

class BattlePassStatusCard extends StatelessWidget {
final BattlePass battlePass;

BattlePassStatusCard({this.battlePass});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(
        clipper: BattlePassClipper(),
        child: Container(
            width: size.width * .08,
            height: size.height * .16,
            decoration:BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover,
              alignment: Alignment.topCenter,
              image: NetworkImage(battlePass.image))
            ),
            child: Stack(alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: CustomPaint(
                      painter: BattlePassPaint(color: mainColor),
                    ),
                  ),
                  Positioned.fill(bottom: 7,right: 7,left: 7,top: 7,
                    child: CustomPaint(
                      painter: BattlePassPaint(color: mainColor),
                    ),
                  ),
                  Positioned.fill(bottom: 4,right: 4,left: 4,top: 4,
                    child: CustomPaint(
                      painter: BattlePassPaint(color: Colors.black),
                    ),
                  ),


                  Positioned.fill(
                    child: CustomPaint(
                      painter: BattlePassPaint(color: mainColor),
                    ),
                  )
                ])));
  }
}
