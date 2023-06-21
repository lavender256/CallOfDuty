import 'package:call_of_duty/data/color.dart';
import 'package:call_of_duty/model/character.dart';
import 'package:flutter/material.dart';

class CharacterCard extends StatefulWidget {
final Character character;
final int index;
final currentIndex;
CharacterCard({this.character, this.index, this.currentIndex});

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(margin: EdgeInsets.only(right: size.width*.005),
      width: size.width*.1,
      height: size.height,
      decoration: BoxDecoration(
        border: Border.all(color: widget.currentIndex==widget.index?mainColor:Colors.transparent,width: 4),
        image: DecorationImage(image: NetworkImage(widget.character.image),fit: BoxFit.cover)
      ),
      child: Stack(alignment: Alignment.center,
        children: [
          Positioned(bottom: 0,
            child: Container(
              width: size.width,
              height: size.height*.07,
              color: Colors.black.withOpacity(.7),
            ),
          ),
          Positioned(
              bottom: size.height*.017,
              child: Container(
                  width: size.width,
                  height: size.height*.04,
                  child: Center(child: Text(widget.character.name,style: TextStyle(color: Colors.white),))))
        ],
      ),
    );
  }
}
