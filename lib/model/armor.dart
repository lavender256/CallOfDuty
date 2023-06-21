import 'package:flutter/cupertino.dart';

class Armor{
  final String title;
  final String imageUrl;
  final IconData icon;
  final bool isNew;
  final int width;

  Armor({this.width, this.title, this.imageUrl, this.icon, this.isNew});
}