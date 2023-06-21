import 'dart:math';

import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/model/armor.dart';
import 'package:flutter/material.dart';

class ArmorRightCard extends StatefulWidget {
final Armor armor;
final int index;
ArmorRightCard({this.armor,this.index});

  @override
  _ArmorRightCardState createState() => _ArmorRightCardState();
}

class _ArmorRightCardState extends State<ArmorRightCard> {
  bool isHover=false;
 
  @override
  Widget build(BuildContext context) {
    final hoverTransform = Matrix4.identity()..translate(-10, 0, 0);
    final transform = isHover ? hoverTransform : Matrix4.identity();
    var size=MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (value){
        setState(() {
          isHover=true;
        });
      },
      onExit: (value){
        setState(() {
          isHover=false;
        });
      },
      child: AnimatedContainer(
        transform: transform,
        duration: Duration(milliseconds: 300),
        child: Container(
          width: size.width*.22,
          height: size.height*.12,
          child: Stack(alignment: Alignment.center,
            children: [
              Positioned(
                  child: Container(margin: EdgeInsets.only(bottom: size.height*.002,left: widget.armor.width==1?size.width*.03:widget.armor.width==2?size.width*.07:widget.armor.width==3?size.width*.05:widget.armor.width==4?size.width*.1:size.width*.13, ),
                width: size.width*.22,
                height: size.height*.12,
                decoration: BoxDecoration(color: mainColor,
                    image: DecorationImage(image: NetworkImage(widget.armor.imageUrl),fit: BoxFit.cover,alignment: Alignment.topCenter),
                    border: Border.all(color: secondColor,width: 2)
                ),)),
              Positioned(
                  left:widget.armor.width==1?size.width*.031:widget.armor.width==2?size.width*.071:widget.armor.width==3?size.width*.051:widget.armor.width==4?size.width*.101:size.width*.131,
                  child: Container(
                width:size.width*.22,height: size.height*.11,
        color: Colors.black.withOpacity(.4),)),
              Positioned(
                  right: size.width*.005,
                  child: Icon(widget.armor.icon,color: Colors.white,)),
              Positioned(
                  left: widget.armor.width==1?size.width*.045:widget.armor.width==2?size.width*.085:widget.armor.width==3?size.width*.07:widget.armor.width==4?size.width*.115:size.width*.14,
                  child: Text(widget.armor.title,style:TextStyle(color: Colors.white,))),
              widget.armor.isNew?Positioned(top: size.height*.005,
                  left:  widget.armor.width==1?size.width*.02:widget.armor.width==2?size.width*.06:widget.armor.width==3?size.width*.04:widget.armor.width==4?size.width*.09:size.width*.13,
                  child: Transform.rotate(
                    angle: pi/5,
                    child: Container(width: size.width*.02,
                      height: size.width*.02,
                      color: Colors.red,
                      child: Center(child: Transform.rotate(
                          angle: - pi/5,
                          child: Text("New",style: TextStyle(color: Colors.white,fontSize: size.width*.007),)),),
                    ),
                  )):SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
