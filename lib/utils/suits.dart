import 'package:flutter/material.dart';
import 'package:peak_card_game/utils/style.dart';

Widget heart() {
  return Text(
    "♥️",
    style: CardStyle.redCard.copyWith(fontSize: CardStyle.textSize),
  );
}

Widget diamond() {
  return Text(
    "♦️",
    style: CardStyle.redCard.copyWith(fontSize: CardStyle.textSize),
  );
}

Widget spade() {
  return Text(
    "♠️",
    style: CardStyle.blackCard.copyWith(fontSize: CardStyle.textSize),
  );
}

Widget club() {
  return Text(
    "♣️",
    style: CardStyle.blackCard.copyWith(fontSize: CardStyle.textSize),
  );
}
