import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper7.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/custom_paint7.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/home_event_paint.dart';
import 'package:flutter/material.dart';
import 'clipper & paint/home_event_clipper.dart';

class HomeEvent extends StatelessWidget {
  final bool isRight;

  HomeEvent({this.isRight = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(clipper: isRight?Clipper7():HomeEventClipper(),
      child: Container(
          width: size.width * .11,
          height: size.width * .07,
          decoration: BoxDecoration(
              image: DecorationImage(alignment: Alignment.bottomCenter,
                  fit: BoxFit.cover,
                  image: AssetImage(isRight
                      ? "assets/images/33.jpg"
                      : "assets/images/34.jpg"))),
          child: Stack(alignment: Alignment.center,
            children: [  Positioned.fill(child: Container(color:Colors.black.withOpacity(.5),)),
              Positioned.fill(child: Container(color:Colors.black.withOpacity(.5),)),
              Positioned.fill(
                child: CustomPaint(
                  painter:isRight?CustomPaint7(color: secondColor):HomeEventPaint(),
                )),
              Positioned(
                  bottom: 0,
                  child: Container(height: size.height*.08,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(isRight?"operator skin":"Vehicle skin",style: TextStyle(color: Colors.white,fontSize: size.width*.008),),
                    Text("Unlocked: Level${isRight?250:300}",style: TextStyle(color: isRight?secondColor:mainColor,fontSize: size.width*.007),),
                  ],
                ),
              ))
            ],
          )),
    );
  }
}
/*
 ClipPath(clipper: isRight?Clipper7():HomeEventClipper(),
      child: Container(width: size.width*.1,
        height: size.width*.06,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(isRight?"assets/images/33.jpg":"assets/images/34.jpg")
            )
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                bottom: 0,
                child: Container(width: size.width*.1,
                  height: size.width*.06,
                  child: CustomPaint(
                    painter:isRight?CustomPaint7(color: secondColor):HomeEventPaint(),
                  ),
                )),
            Positioned(
                top: 0,
                child: Container(width: size.width*.08,
            height: size.width*.05,
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.fitWidth,
                 image: AssetImage("assets/images/31.png")
               )
             ),
            )),
            Positioned.fill(child: Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(isRight?"operator skin\n${"Mara"}":"Vehicle skin\n${"floor it"}",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: size.width*.007),),
                  Text("Unlocked: Level${isRight?250:300}",style: TextStyle(color: isRight?secondColor:mainColor,fontSize: size.width*.007),),
                ],
              ),
            ))
        ,

        ],),
      ),
    );*/
