import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peak_card_game/models/card_model.dart';
import 'package:peak_card_game/models/deck_model.dart';
import 'package:peak_card_game/models/player_model.dart';
import 'package:peak_card_game/models/turn_model.dart';
import 'package:peak_card_game/services/deck_services.dart';

class CardGameProvider with ChangeNotifier {
  CardGameProvider() {
    _service = DeckService();
  }

  late DeckService _service;

  late Turn _turn;
  Turn get turn => _turn;

  DeckModel? _currentDeck;
  DeckModel? get currentDeck => _currentDeck;

  List<PlayerModel> _players = [];
  List<PlayerModel> get players => _players;

  List<CardModel> _discards = [];
  List<CardModel> get discards => _discards;
  CardModel? get dicardTop => _discards.isEmpty ? null : _discards.last;

  Map<String, dynamic> gameState = {};

  Future<void> newGame(List<PlayerModel> players) async {
    final deck = await _service.newDeck();
    _currentDeck = deck;
    _players = players;
    _discards = [];
    _turn = Turn(players: players, currentPlayer: players.first);
    setupBoard();
    notifyListeners();
  }

  Future<void> setupBoard() async {}

  Future<void> drawCards(PlayerModel player, {int count = 1}) async {
    if (currentDeck == null) return;

    final draw = await _service.drawDeck(_currentDeck!, count: count);

    player.addCards(draw.cards);

    _turn.drawCount += count;

    _currentDeck!.remaining = draw.remaining;

    notifyListeners();
  }

  bool get canEndTurn {
    return turn.drawCount > 0;
  }

  void endTurn() {
    _turn.nextTurn();
    if (_turn.currentPlayer.isBot) {
      botTurn();
    }
    notifyListeners();
  }

  void botTurn() async {
    await Future.delayed(const Duration(milliseconds: 500));
    await drawCards(_turn.currentPlayer);
    await Future.delayed(const Duration(milliseconds: 500));

    if (canEndTurn) {
      endTurn();
    }
  }
}
