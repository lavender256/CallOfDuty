import 'package:call_of_duty/data/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsOptions extends StatelessWidget {
final String title;
final String icon;
final double count;

StatsOptions({this.title, this.icon, this.count});

  @override
  Widget build(BuildContext context) {    var size=MediaQuery.of(context).size;
    return Container(

      width: size.width*.065,height: size.height*.069,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
          children: [
           Container(
             width: size.width*.02,
             height: size.width*.02,
             decoration: BoxDecoration(
               image: DecorationImage(fit:BoxFit.cover,image: NetworkImage(icon)),
             ),
           ),SizedBox(width: size.width*.005,),Text(title.toUpperCase(),style: TextStyle(color: Colors.white,letterSpacing: 1.2),),
          ],
          ),
          Text(count.toString(),style: TextStyle(color: Colors.white,fontSize: size.width*.012),)
        ],
      ),
    );
  }
}
