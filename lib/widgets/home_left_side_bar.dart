import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/battle_royal_card.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper2.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper4.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper5.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper6.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper7.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/custom_paint4.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/custom_paint5.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/custom_paint7.dart';
import 'package:call_of_duty/widgets/home_left_side_card.dart';
import 'package:call_of_duty/widgets/quick_play_card.dart';
import 'package:flutter/material.dart';

import 'clipper & paint/custom_paint6.dart';


class HomeLeftSideBar extends StatefulWidget {
  @override
  State<HomeLeftSideBar> createState() => _HomeLeftSideBarState();
}

class _HomeLeftSideBarState extends State<HomeLeftSideBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width * .24,
        height: size.height * .73,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            QuickPlayCard(),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
              HomeLeftSideCard( height: size.height*.15,
                clipper: Clipper7(),
                paint: CustomPaint7(),
                title: "Tournament",
                color: mainColor,
                image: "https://s8.uupload.ir/files/28_95xi.jpg",
              ),
              HomeLeftSideCard( height: size.height*.15,
                clipper: Clipper6(),
                paint: CustomPaint6(),
                title: "Party Modes",
                color: mainColor,
                image: "https://s8.uupload.ir/files/35_pqzx.jpg",
              ),
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeLeftSideCard(clipper: Clipper4(),
                  height: size.height*.22,
                  paint: CustomPaint4(),
                  title: "campaign",
                  color: secondColor,
                  image: "https://s8.uupload.ir/files/17_5e9z.jpg",
                ),
                HomeLeftSideCard(clipper: Clipper5(),
                  paint: CustomPaint5(),
                  height: size.height*.22,
                  title: "Multi Player",
                  color: secondColor,
                  image: "https://s8.uupload.ir/files/30_kpt1.jpg",
                ),
              ],),
            BattleRoyalCard()



          ],
        ));
  }
}
