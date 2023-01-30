import 'package:flutter/material.dart';
import 'package:peak_card_game/widgets/playing_card.dart';

class DeckPile extends StatelessWidget {
  final int remaining;
  final double size;
  final bool canDraw;

  const DeckPile(
      {Key? key, required this.remaining, this.size = 1, this.canDraw = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayingCard(
      visible: false,
      child: Center(child: Text('$remaining')),
    );
  }
}
