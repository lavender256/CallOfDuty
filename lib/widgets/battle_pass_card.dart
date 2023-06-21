import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/model/battlepass.dart';
import 'package:flutter/material.dart';
import 'package:frino_icons/frino_icons.dart';
import 'package:iconsax/iconsax.dart';

class BattlePassCard extends StatefulWidget {
final BattlePass battlePass;
final bool isSelect;
BattlePassCard({this.battlePass,this.isSelect});

  @override
  State<BattlePassCard> createState() => _BattlePassCardState();
}

class _BattlePassCardState extends State<BattlePassCard> {
  @override
  Widget build(BuildContext context) { var size = MediaQuery.of(context).size;
     return Container(
      width: widget.isSelect?size.width * .13:size.width * .1085,
      margin: EdgeInsets.only(right: size.width * .003),
     child: Column(crossAxisAlignment: CrossAxisAlignment.end,
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         widget.battlePass.isFree?Container(width: size.width,
         height: size.height*.04,
         color: secondColor,
           child: Center(child: Text("Free",style: TextStyle(color: Colors.white),),),
         ):SizedBox.shrink(),
         Container(width: size.width,
         height:  widget.isSelect?size.height * .32:size.height * .25,
         decoration: BoxDecoration(border: Border.all(color: mainColor,width: 3),
             image: DecorationImage(alignment: Alignment.topCenter,
                 image: NetworkImage(widget.battlePass.image),fit: BoxFit.cover
             )
         ),
         child: Stack(children: [
           Positioned(
               top: 0,right: 0
               ,child: Container(width: size.width*.017,
           height: size.width*.017,
             decoration: BoxDecoration(
               border: Border.all(color: mainColor,width: 2)
             ),
             child: Center(child: Icon(FrinoIcons.f_check,color: mainColor,),),
           ))
         ],),
         )
       ],
     ),
    );
  }
}
