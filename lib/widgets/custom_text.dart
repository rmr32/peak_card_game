import 'package:flutter/material.dart';
import 'package:peak_card_game/utils/style.dart';

class CustomText extends StatelessWidget {
  final List<Shadow> shadows;
  final String text;
  final double fontSize;

  const CustomText(
      {super.key,
      required this.shadows,
      required this.text,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: InkStyle.secondary.copyWith(fontSize: fontSize, shadows: shadows),
    );
  }
}
