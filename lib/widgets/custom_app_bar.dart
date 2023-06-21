import 'package:call_of_duty/data/data.dart';
import 'package:call_of_duty/widgets/app_bar_card.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  final int currentIndex;

  CustomAppBar({this.currentIndex});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * .13,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: size.width * .17),
            width: size.width * .6,
            height: size.height * .12,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: appBarList.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return AppBarCard(
                    index: index,
                    currentIndex:widget.currentIndex,
                  );
                }),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width*.03),
            width: size.width*.23,
            height: size.height,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width*.07,
                  height: size.height*.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("204",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: size.width*.013),),
                      Container(width: size.width*.04,
                        height: size.width*.04,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://s8.uupload.ir/files/10_oqi4.png")
                            )
                        ),
                      )
                    ],),
                ),
                Container(
                  width: size.width*.08,
                  height: size.height*.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("345",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: size.width*.013),),
                      Container(width: size.width*.045,
                        height: size.width*.045,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://s8.uupload.ir/files/11_0txy.png")
                            )
                        ),
                      )
                    ],),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
