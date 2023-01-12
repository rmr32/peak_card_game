import 'package:flutter/material.dart';
import 'package:peak_card_game/provider/room_data_provider.dart';
import 'package:peak_card_game/utils/style.dart';
import 'package:provider/provider.dart';

class Scoreboard extends StatelessWidget {
  const Scoreboard({super.key});

  @override
  Widget build(BuildContext context) {
    RoomDataProvider roomDataProvider = Provider.of<RoomDataProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                roomDataProvider.player1.nickname,
                style: InkStyle.header1,
              ),
              Text(
                roomDataProvider.player1.points.toInt().toString(),
                style: InkStyle.header2,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                roomDataProvider.player2.nickname,
                style: InkStyle.header1,
              ),
              Text(
                roomDataProvider.player2.points.toInt().toString(),
                style: InkStyle.header2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
