import 'package:call_of_duty/data/data.dart';
import 'package:call_of_duty/model/battlepass.dart';
import 'package:call_of_duty/widgets/battle_pass_activated.dart';
import 'package:call_of_duty/widgets/battle_pass_card.dart';
import 'package:call_of_duty/widgets/battle_pass_progress.dart';
import 'package:call_of_duty/widgets/battle_pass_status.dart';
import 'package:call_of_duty/widgets/battle_pass_title.dart';
import 'package:call_of_duty/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class BattlePassScreen extends StatefulWidget {
  final bool isGun;

  BattlePassScreen({this.isGun});

  @override
  State<BattlePassScreen> createState() => _BattlePassScreenState();
}

class _BattlePassScreenState extends State<BattlePassScreen> {
  int currentIndex=1;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(alignment: Alignment.center,
          children: [
            Positioned(top: size.height*.1,
              bottom: size.height*.15,
              child: Container(
                width: size.width,
                height: size.height ,
                decoration: BoxDecoration(
                    image: DecorationImage(alignment: Alignment.topRight,
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(battlePassList[currentIndex].image2))),
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
                          Colors.black,Colors.black,Colors.black.withOpacity(.5),
                          Colors.transparent,Colors.transparent,
                          Colors.transparent,Colors.transparent,
                          Colors.transparent, Colors.transparent,
                          Colors.transparent,  Colors.transparent,  Colors.transparent,
                        ])),
              ),
            ),Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(tileMode: TileMode.clamp, colors: [
                      Colors.black, Colors.black,
                      Colors.black.withOpacity(.4),
                      Colors.black.withOpacity(.1),
                      Colors.black.withOpacity(.1),
                      Colors.black.withOpacity(.1),
                      Colors.black.withOpacity(.1),
                      Colors.black.withOpacity(.6), Colors.black.withOpacity(.6),   Colors.black,
                    ])),
              ),
            ),
            Positioned(
                top: size.height * .02,
                child: CustomAppBar(
                  currentIndex: 2,
                )),
            Positioned(
                bottom: size.height * .1,
                child: Container(
                  width: size.width*.8,
                  height: size.height * .45,
                  child: ListView.builder(
                      itemCount: battlePassList.length,
                      scrollDirection: Axis.horizontal,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        BattlePass battlePass=battlePassList[index];
                        return GestureDetector(
                            onTap: (){
                              setState(() {
                                currentIndex=index;
                              });
                            },
                            child: BattlePassCard(battlePass: battlePass,isSelect: currentIndex==index?true:false,));
                      }),
                )),
            Positioned(
                top: size.height*.15,
                left: size.width*.04,
                child: BattlePassTitle(battlePass: battlePassList[currentIndex],)),
            Positioned(
                left: size.width*.04,
                top: size.height*.38,
                child:BattlePassStatus(battlePass: battlePassList[currentIndex],)),
            Positioned( top: size.height*.02,
                left: size.width*.025,
                child: Container(width: size.width*.1,
                  height: size.height*.08,
                  decoration: BoxDecoration(
                      image: DecorationImage(fit: BoxFit.fitWidth,
                          image: NetworkImage("https://s8.uupload.ir/files/22_c7q2.png"))
                  ),)
            ),
            Positioned(
                top: size.height*.17,
                right: size.width*.05,
                child: BattlePassActivated()),

            Positioned(
                bottom: size.height*.03,
                child: BattlePassProgress()),
          ],
        ),
      ),
    );
  }
}
