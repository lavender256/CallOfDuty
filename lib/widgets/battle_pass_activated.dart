import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class BattlePassActivated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .1,
      height: size.height * .08,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              width: size.width * .1,
              height: size.height * .045,
              color: mainColor.withOpacity(.5),
              child: Center(
                child: Text(
                  "Battle pass activated",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: size.width * .007,
                  ),
                ),
              )),
          Container(
              width: size.width * .07,
              height: size.height * .035,
              color: mainColor.withOpacity(.5),
              child: Center(
                child: Text(
                  "Current Tier : 100",
                  style: TextStyle(fontFamily: "Carre",
                    color: Colors.white,
                    fontSize: size.width * .007,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
