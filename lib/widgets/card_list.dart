import 'package:flutter/material.dart';
import 'package:peak_card_game/models/card_model.dart';
import 'package:peak_card_game/models/player_model.dart';
import 'package:peak_card_game/utils/style.dart';
import 'package:peak_card_game/widgets/playing_card.dart';

class CardList extends StatelessWidget {
  final double size;
  final PlayerModel player;
  final Function(CardModel)? onPlayCard;

  const CardList(
      {super.key, this.size = 1, required this.player, this.onPlayCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CardStyle.height,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: player.cards.length,
        itemBuilder: (context, index) {
          final card = player.cards[index];
          return PlayingCard(
            card: card,
            size: size,
            visible: true,
          );
        },
      ),
    );
  }
}
