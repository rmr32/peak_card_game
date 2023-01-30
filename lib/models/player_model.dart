import 'package:peak_card_game/models/card_model.dart';

class PlayerModel {
  final String nickname;
  final String socketID;
  final double points;
  final String playerType;
  final bool isHuman;
  List<CardModel> cards;

  PlayerModel({
    required this.nickname,
    required this.socketID,
    required this.points,
    required this.playerType,
    this.isHuman = true,
    this.cards = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'nickname': nickname,
      'socketID': socketID,
      'points': points,
      'playerType': playerType,
    };
  }

  factory PlayerModel.fromMap(Map<String, dynamic> map) {
    return PlayerModel(
      nickname: map['nickname'] ?? '',
      socketID: map['socketID'] ?? '',
      points: map['points']?.toDouble() ?? 0.0,
      playerType: map['playerType'] ?? '',
    );
  }

  PlayerModel copyWith({
    String? nickname,
    String? socketID,
    double? points,
    String? playerType,
  }) {
    return PlayerModel(
      nickname: nickname ?? this.nickname,
      socketID: socketID ?? this.socketID,
      points: points ?? this.points,
      playerType: playerType ?? this.playerType,
    );
  }

  addCards(List<CardModel> newCards) {
    cards = [...cards, ...newCards];
  }

  removeCards(CardModel card) {
    cards.removeWhere((c) => c.value == card.value && c.suit == card.suit);
  }

  bool get isBot {
    return !isHuman;
  }
}
