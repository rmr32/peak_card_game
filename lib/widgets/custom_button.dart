import 'package:flutter/material.dart';
import 'package:peak_card_game/utils/color.dart';
import 'package:peak_card_game/utils/style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final double? width;
  const CustomButton({
    Key? key,
    this.onTap,
    required this.text,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final minWidth = width ?? MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Palette.onPrimary,
            blurRadius: 5,
            spreadRadius: 0,
          )
        ],
      ),
      child: ElevatedButton(
        onPressed: onTap ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: onTap != null
              ? Palette.primaryContainer
              : Palette.onPrimaryContainer,
          minimumSize: Size(minWidth, 50),
        ),
        child: Text(
          text,
          style: onTap != null
              ? InkStyle.primary
              : InkStyle.primary.copyWith(color: Palette.gameBoard),
        ),
      ),
    );
  }
}
