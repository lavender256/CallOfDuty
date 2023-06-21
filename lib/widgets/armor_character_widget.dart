import 'package:call_of_duty/data/data.dart';
import 'package:call_of_duty/model/character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'character_card.dart';
import 'character_name.dart';

class ArmorCharacterWidget extends StatefulWidget {

  @override
  State<ArmorCharacterWidget> createState() => _ArmorCharacterWidgetState();
}

class _ArmorCharacterWidgetState extends State<ArmorCharacterWidget> {
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(alignment: Alignment.center,
        children: [
          Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(color: Colors.black,
                  image: DecorationImage(alignment: Alignment.topCenter,
                      fit: BoxFit.fitHeight,
                      image: NetworkImage(characterList[currentIndex].image2)))),
          Positioned.fill(child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black, Colors.black,Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,Colors.black,Colors.black
                ])
            ),
          )),
          Positioned(top: size.height*.14,
            left: size.width*.03,
            child: Container(width: size.width*.27,
              height: size.height*.85,
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  childAspectRatio: 0.9,
mainAxisSpacing:size.height*.007,crossAxisSpacing:size.width*.0001
              ), itemBuilder: (BuildContext context,int index){
                Character character=characterList[index];
                return GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex=index;
                      });
                    },
                    child: AnimationConfiguration.staggeredList(
                        position: index,
                        child: ScaleAnimation(
                          duration: Duration(milliseconds: 500),
                          child: FadeInAnimation(
                              duration: Duration(milliseconds: 1000),
                              child: CharacterCard(character: character,index: index,currentIndex: currentIndex,)),
                        )));
              },itemCount: characterList.length,),
            ),
          ),
          Positioned(
              bottom:-40,
              child: CharacterName(name: characterList[currentIndex].name,service: characterList[currentIndex].service,))
        ],
      )
    );
  }
}
