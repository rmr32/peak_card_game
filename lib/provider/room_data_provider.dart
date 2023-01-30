import 'package:flutter/material.dart';
import 'package:peak_card_game/models/player_model.dart';

class RoomDataProvider extends ChangeNotifier {
  Map<String, dynamic> _roomData = {};
  Map<String, dynamic> get roomData => _roomData;

  final List<String> _displayElement = ['', '', '', '', '', '', '', '', ''];
  List<String> get displayElements => _displayElement;

  int _filledBoxes = 0;
  int get filledBoxes => _filledBoxes;

  PlayerModel _player1 = PlayerModel(
    nickname: '',
    socketID: '',
    points: 0,
    playerType: 'X',
  );

  PlayerModel _player2 = PlayerModel(
    nickname: '',
    socketID: '',
    points: 0,
    playerType: 'O',
  );

  PlayerModel get player1 => _player1;
  PlayerModel get player2 => _player2;

  void updateRoomData(Map<String, dynamic> data) {
    _roomData = data;
    notifyListeners();
  }

  void updatePlayer1(Map<String, dynamic> player1Data) {
    _player1 = PlayerModel.fromMap(player1Data);
    notifyListeners();
  }

  void updatePlayer2(Map<String, dynamic> player2Data) {
    _player2 = PlayerModel.fromMap(player2Data);
    notifyListeners();
  }

  void updateDisplayElements(int index, String choice) {
    _displayElement[index] = choice;
    _filledBoxes += 1;
    notifyListeners();
  }

  void resetFilledBoxes() {
    _filledBoxes = 0;
  }
}
