import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/data/data.dart';
import 'package:call_of_duty/model/battlepass.dart';
import 'package:flutter/material.dart';

class BattlePassTitle extends StatelessWidget {
final BattlePass battlePass;


BattlePassTitle({this.battlePass});

  @override
  Widget build(BuildContext context) {   var size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.22,
    height: size.height*.2,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("${battlePass.rank} - ${battlePass.title2}",style: TextStyle(color: mainColor,fontSize: size.width*.01),),
          Text(battlePass.title,style: TextStyle(color: Colors.white,fontSize: size.width*.04,letterSpacing: 1.5),),
          Container(width: size.width*.17,
          height: size.height*.07,
            child: Stack(
              children: [
            Positioned(left: 0
,              child: Container(width: size.width*.1,
                height: size.height*.07,
                color: Colors.orange.withOpacity(.2),),
            ),
                Positioned(
                  child: Container(width: size.width*.16,
                  height: size.height*.07,
                    child: Row(
                      children: [
                      Container(width: size.width*.03,
                        height: size.height*.07,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage("https://s8.uupload.ir/files/26_47qk.png"))
                        ),
                      ),
                      SizedBox(width: size.width*.008,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(battlePass.desc1,style: TextStyle(fontFamily: 'segLove',fontSize: size.width*.008,color: Colors.white),),
                          Text(battlePass.desc2,style: TextStyle(fontFamily: 'Carre',fontSize: size.width*.008,color: Colors.white),)
                        ],
                      )
                    ],),
                  ),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}
