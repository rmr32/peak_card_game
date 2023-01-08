import 'package:flutter/material.dart';
import 'package:peak_card_game/responsive/responsive.dart';
import 'package:peak_card_game/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () {}, text: 'Create Room'),
            const SizedBox(
              height: 32,
            ),
            CustomButton(onTap: () {}, text: 'Join Room')
          ],
        ),
      ),
    ));
  }
}
