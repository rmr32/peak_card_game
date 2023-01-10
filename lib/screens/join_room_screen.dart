import 'package:flutter/material.dart';
import 'package:peak_card_game/responsive/responsive.dart';
import 'package:peak_card_game/utils/color.dart';
import 'package:peak_card_game/widgets/custom_button.dart';
import 'package:peak_card_game/widgets/custom_text.dart';
import 'package:peak_card_game/widgets/custom_text_field.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIDController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIDController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(blurRadius: 5, color: Palette.primaryContainer),
                ],
                text: 'Create Room',
                fontSize: 70,
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              CustomTextField(
                controller: _nameController,
                width: size.width,
                hintText: 'Enter Your Nick Name',
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              CustomTextField(
                controller: _gameIDController,
                width: size.width,
                hintText: 'Enter Game ID',
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              CustomButton(onTap: () {}, text: 'Create'),
            ],
          ),
        ),
      ),
    );
  }
}
