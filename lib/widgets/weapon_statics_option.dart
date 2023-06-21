import 'package:call_of_duty/data/color.dart';
import 'package:flutter/material.dart';

class WeaponStaticsOption extends StatelessWidget {
  final String title;
  final double count;

  WeaponStaticsOption({this.title, this.count});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width*.27,
      height: size.height*.021,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title.toUpperCase(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontFamily: "segLove",letterSpacing: 1.1,fontSize: size.width*.01),),
          Container(width: size.width*.21,
            height: size.height*.017,
            color: Colors.white.withOpacity(.1),
            child: Stack(alignment: Alignment.centerLeft,
              children: [
                Container(width: count,height: size.height*.01,decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffadf7f2),
                      secondColor,
                      Color(0xff15aaff),
                    ])
                ),),
                Positioned(
                    top: 0,
                    left: count,
                    bottom: 0,
                    child: Container(width: 3,color: secondColor,))
              ],
            ),
          )
        ],),
    );
  }
}
