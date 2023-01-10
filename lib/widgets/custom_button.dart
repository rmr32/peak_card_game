import 'package:flutter/material.dart';
import 'package:peak_card_game/utils/color.dart';
import 'package:peak_card_game/utils/style.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

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
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Palette.primaryContainer,
          minimumSize: Size(width, 50),
        ),
        child: Text(
          text,
          style: InkStyle.primary,
        ),
      ),
    );
  }
}
