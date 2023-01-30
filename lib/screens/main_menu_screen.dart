import 'package:flutter/material.dart';
import 'package:peak_card_game/responsive/responsive.dart';
import 'package:peak_card_game/screens/create_room_screen.dart';
import 'package:peak_card_game/screens/game_room_screen.dart';
import 'package:peak_card_game/screens/join_room_screen.dart';
import 'package:peak_card_game/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  void playGame(BuildContext context) {
    Navigator.pushNamed(context, GameRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () => createRoom(context), text: 'Create Room'),
            const SizedBox(
              height: 32,
            ),
            CustomButton(onTap: () => joinRoom(context), text: 'Join Room'),
            const SizedBox(
              height: 32,
            ),
            CustomButton(onTap: () => playGame(context), text: 'Game Room')
          ],
        ),
      ),
    ));
  }
}
