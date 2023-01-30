import 'package:flutter/material.dart';
import 'package:peak_card_game/utils/color.dart';

class InkStyle {
  static const primary = TextStyle(
    // fontFamily: 'Ubuntu',
    fontSize: 20.0,
    color: Palette.onPrimaryContainer,
    fontWeight: FontWeight.bold,
    // shadows: [
    //   Shadow(
    //     blurRadius: 30,
    //     color: Palette.primaryContainer,
    //   )
    // ],
  );
  static const secondary = TextStyle(
    // fontFamily: 'Ubuntu',
    fontSize: 10.0,
    color: Palette.onPrimaryContainer,
    fontWeight: FontWeight.bold,
    // shadows:
  );
  static const header1 = TextStyle(
    // fontFamily: 'Ubuntu',
    fontSize: 15.0,
    color: Palette.onPrimaryContainer,
    fontWeight: FontWeight.bold,
    // shadows:
  );
  static const header2 = TextStyle(
    // fontFamily: 'Ubuntu',
    fontSize: 10.0,
    color: Palette.onPrimaryContainer,
    fontWeight: FontWeight.bold,
    // shadows:
  );
}

class CardStyle {
  static const textSize = 50.0;
  static const width = 226 / 2;
  static const height = 314 / 2;

  static const blackCard = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Palette.blackCard,
  );

  static const redCard = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Palette.redCard,
  );
}
