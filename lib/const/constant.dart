import 'package:flutter/material.dart';

//const color
const scaffoldBackgroundColor = Color.fromRGBO(252, 239, 227, 1);
const searchBarColor = Color.fromRGBO(252, 239, 227, 1);
const titleColor = Color.fromRGBO(50, 31, 14, 1);
const captionColor = Color.fromRGBO(50, 31, 14, 0.5);
const surfaceTextColor = Color.fromRGBO(237, 167, 126, 1);
const selectBtmNavColor = Color.fromRGBO(0, 0, 0, 1);
const unSelectBtmNavColor = Color.fromRGBO(32, 14, 50, 1);
const primaryColor = Color.fromRGBO(251, 146, 10, 1);
List<Color> gradiantColor = [
  primaryColor,
  const Color.fromRGBO(254, 502, 47, 1),
];

//standard size
const double zero = 0;
const double small = 8.0;
const double medium = 12.0;
const double large = 24.0;
const double xLarge = 48.0;
const double bodymargin = 20.0;

class Constant {
  static const avatarTextStyle = TextStyle(
    color: titleColor,
    fontSize: medium,
  );
  static const avatarTextStyleName = TextStyle(
      color: captionColor, fontSize: 16.0, fontWeight: FontWeight.w700);

  static const avatarTextStyleNameLite = TextStyle(
      color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w700);
}
