import 'package:flutter/cupertino.dart';
import 'package:peak_card_game/resources/socket_client.dart';
import 'package:peak_card_game/screens/game_screen.dart';

class SocketMethods {
  final _socketClient = SocketClient.instance.socket!;

  void createRoom(String nickname) {
    // if (nickname.isNotEmpty) {
    _socketClient.emit('createRoom', {
      'nickname': nickname,
    });
    // }
  }

  void createRoomSuccessListener(BuildContext context) {
    _socketClient.on('createRoomSuccess', (room) {
      Navigator.pushNamed(context, GameScreen.routeName);
    });
  }
}
