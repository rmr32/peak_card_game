import 'package:flutter/material.dart';
import 'package:peak_card_game/provider/room_data_provider.dart';
import 'package:peak_card_game/resources/socket_methods.dart';
import 'package:peak_card_game/views/gameboard.dart';
import 'package:peak_card_game/views/scoreboard.dart';
import 'package:peak_card_game/views/waiting_lobby.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatefulWidget {
  static String routeName = '/game';
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final SocketMethods _socketMethods = SocketMethods();

  @override
  void initState() {
    super.initState();
    _socketMethods.updateRoomListener(context);
    _socketMethods.updatePlayersStateListener(context);
  }

  @override
  Widget build(BuildContext context) {
    RoomDataProvider roomDataProvider = Provider.of<RoomDataProvider>(context);

    return Scaffold(
      body: roomDataProvider.roomData['isJoin']
          ? const WaitingLobby()
          : SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Scoreboard(),
                  GameBoard(),
                ],
              ),
            ),
    );
  }
}
