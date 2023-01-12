import 'package:flutter/material.dart';
import 'package:peak_card_game/utils/color.dart';
import 'package:peak_card_game/utils/style.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({super.key});

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: size.height * 0.7,
        maxWidth: 500,
      ),
      child: GridView.builder(
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.primaryContainer,
              ),
            ),
            child: const Center(
              child: Text(
                'x',
                style: InkStyle.primary,
              ),
            ),
          );
        },
      ),
    );
  }
}
