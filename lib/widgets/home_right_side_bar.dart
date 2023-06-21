import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

import 'home_daily_challenges.dart';
import 'home_mission.dart';
import 'home_profile.dart';

class HomeRightSideBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width*.25,
      height: size.height*.6,
     child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         HomeMission(),
         HomeDailyChallenges()
       ],
     ),
    );
  }
}
