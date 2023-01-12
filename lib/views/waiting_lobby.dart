import 'package:flutter/material.dart';
import 'package:peak_card_game/provider/room_data_provider.dart';
import 'package:peak_card_game/responsive/responsive.dart';
import 'package:peak_card_game/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class WaitingLobby extends StatefulWidget {
  const WaitingLobby({Key? key}) : super(key: key);

  @override
  State<WaitingLobby> createState() => _WaitingLobbyState();
}

class _WaitingLobbyState extends State<WaitingLobby> {
  late TextEditingController roomIDController;

  @override
  void initState() {
    super.initState();
    roomIDController = TextEditingController(
      text:
          Provider.of<RoomDataProvider>(context, listen: false).roomData['_id'],
    );
  }

  @override
  void dispose() {
    super.dispose();
    roomIDController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Waiting for a player to join...'),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: roomIDController,
            hintText: '',
            isReadOnly: true,
          ),
        ],
      ),
    );
  }
}
