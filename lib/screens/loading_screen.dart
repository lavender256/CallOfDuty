import 'dart:async';

import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/screens/home_screen.dart';
import 'package:call_of_duty/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> with SingleTickerProviderStateMixin{
  AnimationController animationController;
  Animation animation;
  String loadingText='Loading 2';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 20000));
    animation=Tween<double>(begin: 0,end:1000).animate(CurvedAnimation(parent: animationController, curve: Curves.fastLinearToSlowEaseIn));
    animationController.repeat();
  Timer(Duration(seconds: 5), (){
    setState(() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => HomeScreen()));
    });});}
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: Container(width: size.width,
      height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(alignment: Alignment.topCenter,
            image: NetworkImage("https://s8.uupload.ir/files/24_izy7.jpg"),fit: BoxFit.cover
          )
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
          Positioned(
            bottom: size.height*.0,
              child: Container(width: size.width*.6,
             height: size.height*.43,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(width: size.width*.8,
                  height: size.height*.24,
                    decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://s8.uupload.ir/files/22_c7q2.png"))
                    ),
                  ),
                AnimatedBuilder(animation: animation, builder: (BuildContext context,Widget widget){
                  return Container(width: 1000,
                    height: size.width*.04,
                    child: Stack(alignment: Alignment.center,
                      children: [
                        Container(height:size.height*.03,
                        width: animation.value,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffd4af37),
                          mainColor,
                          Color(0xfffff192)]
                          )
                        ),
                        ),
                        Text("Just a second",style: TextStyle(
                          fontSize:size.width*.007,color: Colors.white
                        ),)
                      ],
                    ),
                  );
                })
                ],),
          ))
        ],),
      ),
    );
  }
}
