import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class DailyChallengesCard extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final int count;
  final int count2;

  DailyChallengesCard(
      {this.text1, this.text2, this.text3, this.count, this.count2 = 0});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .08,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .015, right: size.width * .02),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: text1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * .009,
                            fontFamily: "segLove"),
                      ),
                      TextSpan(
                        text: text2,
                        style: TextStyle(
                            color: mainColor,
                            fontSize: size.width * .009,
                            fontFamily: "Boston"),
                      ),
                      TextSpan(
                        text: text3,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * .009,
                            fontFamily: "segLove"),
                      )
                    ])),
                Spacer(),
                Container(
                  width: size.width * .02,
                  height: size.width * .02,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://s8.uupload.ir/files/23_zq8g.png"))),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: size.width * .01),
            child: Row(
              children: [
                Container(
                  width: size.width * .01,
                  height: size.width * .01,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
                ),
                SizedBox(
                  width: size.width * .003,
                ),
                Container(
                  width: size.width * .19,
                  height: size.width * .01,
                  color: Colors.white30,
                  child: Stack(alignment: Alignment.center, children: [
                    count2==5?Positioned(left:0,
                        child: Container(
                          width: size.width * .15,
                          height: size.width * .01,
                          color:  Color(0xffd4af37),
                        )):SizedBox.shrink(),
                    Positioned(
                        left: size.width * .006,
                        child: Text(
                          "${count2}/${count}",
                          style: TextStyle(
                              fontFamily: "Carre",
                              color: Colors.white,
                              fontSize: size.width * .007),
                        )),
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
