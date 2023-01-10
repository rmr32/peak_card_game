import 'package:flutter/material.dart';
import 'package:peak_card_game/utils/color.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final double width;
  final bool isReadOnly;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.width,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Palette.primaryContainer,
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
      ),
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Palette.onPrimaryContainer,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
