
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper4.dart';
import 'package:call_of_duty/widgets/clipper%20&%20paint/clipper5.dart';
import 'package:flutter/material.dart';

class HomeLeftSideCard extends StatelessWidget {
  final String title;
  final String image;
  final Color color;
  final double height;
  final CustomClipper clipper;
  final CustomPainter paint;


  HomeLeftSideCard({this.title, this.image, this.color,this.height,this.clipper,this.paint});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(clipper: clipper,
      child: Container(width: size.width*.118,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(image)
            )
        ),
        child: Stack(alignment: Alignment.center,
          children: [
            Positioned.fill(child: Container(color: Colors.black.withOpacity(.5),)),
            Positioned(
              child: Text(title,style: TextStyle(
              fontSize: size.width*.009,
              color: color,fontWeight: FontWeight.w300),),
            ),
            Positioned.fill(child: CustomPaint(
              painter: paint,
            ))
          ],
        ),
      ),
    );
  }
}
