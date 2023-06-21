
import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/widgets/custom_app_bar.dart';
import 'package:call_of_duty/widgets/home_event.dart';
import 'package:call_of_duty/widgets/home_left_side_bar.dart';
import 'package:call_of_duty/widgets/home_profile.dart';
import 'package:call_of_duty/widgets/home_right_side_bar.dart';
import 'package:call_of_duty/widgets/id_sign.dart';
import 'package:call_of_duty/widgets/slide_fade_transition.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: Colors.black,
            image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
                image: NetworkImage("https://s8.uupload.ir/files/20_qjf.jpg"))),
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(tileMode: TileMode.clamp, colors: [
                      Colors.black,
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.1),
                  Colors.black.withOpacity(.1),
                  Colors.black.withOpacity(.1),
                  Colors.black.withOpacity(.1),
                      Colors.black.withOpacity(.6), Colors.black.withOpacity(.6),   Colors.black
                ])),
              ),
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        tileMode: TileMode.clamp,
                        colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.transparent,
                    ])),
              ),
            ),
            Positioned(
                top: size.height*.02,
                child: CustomAppBar(
                  currentIndex: 0,
                )),
            Positioned(
                top: size.height*.02,
                left: size.width*.025,
                child: SlideFadeTransition(
                    curve: Curves.elasticOut,
                    delayStart: Duration(milliseconds: 500),
                    animationDuration: Duration(milliseconds: 1200),
                    offset: 2.5,
                    direction: Direction.vertical,
                    child: Container(width: size.width*.1,
                      height: size.height*.08,
                      decoration: BoxDecoration(
                          image: DecorationImage(fit: BoxFit.fitWidth,
                              image: NetworkImage("https://s8.uupload.ir/files/22_c7q2.png"))
                      ),
                    )
                )),
            Positioned(
                left: size.width*.02,
                top: size.height * .17,
                child: SlideFadeTransition(
                  curve: Curves.elasticOut,
                  delayStart: Duration(milliseconds: 500),
                  animationDuration: Duration(milliseconds: 1200),
                  offset: 2.5,
                  direction: Direction.horizontal,
                  child: HomeLeftSideBar()
                ),),
            Positioned(
                top: size.height * .3,
                right: -5,
                child: SlideFadeTransition(
                    curve: Curves.elasticOut,
                    delayStart: Duration(milliseconds: 500),
                    animationDuration: Duration(milliseconds: 1200),
                    offset: 2.5,
                    direction: Direction.horizontal,
                    child: HomeRightSideBar()
                )),
            Positioned(
                top: size.height*.37,
                right: size.width*.25,
                child: IDSign()),
            Positioned(
                top: size.height*.24,
                left: size.width*.27,
                child: IDSign(isRightUser: false,)),
            Positioned(
                top: size.height*.155,
                right: -5,
                child: HomeProfile()),
            Positioned(
              top: size.height*.15,
              right: size.width*.22,
              child: Container(width: size.width*.07,
                height: size.width*.07,
                decoration: BoxDecoration(color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(color: mainColor,width: 2),
                    image: DecorationImage(alignment: Alignment.topCenter,
                        fit: BoxFit.fitHeight,
                        image: NetworkImage("https://s8.uupload.ir/files/29_v9y3.jpg"))
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
