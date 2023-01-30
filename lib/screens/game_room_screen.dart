import 'package:flutter/material.dart';
import 'package:peak_card_game/models/card_model.dart';
import 'package:peak_card_game/models/player_model.dart';
import 'package:peak_card_game/provider/card_game_provider.dart';
import 'package:peak_card_game/responsive/responsive.dart';
import 'package:peak_card_game/utils/color.dart';
import 'package:peak_card_game/widgets/card_list.dart';
import 'package:peak_card_game/widgets/custom_button.dart';
import 'package:peak_card_game/widgets/deck_pile.dart';
import 'package:provider/provider.dart';

class GameRoomScreen extends StatefulWidget {
  static String routeName = '/game-room';
  const GameRoomScreen({Key? key}) : super(key: key);

  @override
  State<GameRoomScreen> createState() => _GameRoomScreenState();
}

class _GameRoomScreenState extends State<GameRoomScreen> {
  late final CardGameProvider _cardGameProvider;

  @override
  void initState() {
    _cardGameProvider = Provider.of<CardGameProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final card = CardModel(
        image: "https://deckofcardsapi.com/static/img/KS.png",
        suit: Suit.spades,
        value: "KING");
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Peak'),
        actions: [
          TextButton(
              onPressed: () async {
                final players = [
                  PlayerModel(
                    nickname: 'Ryan',
                    socketID: '123',
                    points: 0,
                    playerType: 'x',
                  ),
                  PlayerModel(
                    nickname: 'Bot',
                    socketID: '123',
                    points: 0,
                    playerType: 'x',
                    isHuman: false,
                  ),
                ];
                await _cardGameProvider.newGame(players);
              },
              child: const Text('New Game'))
        ],
      ),
      backgroundColor: Palette.gameBoard,
      body: Responsive(
        child: Consumer<CardGameProvider>(
          builder: (context, model, child) {
            return model.currentDeck != null
                ? Stack(
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: CardList(player: model.players[1]),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GestureDetector(
                                onTap: () async {
                                  await model
                                      .drawCards(model.turn.currentPlayer);
                                },
                                child: DeckPile(
                                    remaining: model.currentDeck!.remaining)),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (model.turn.currentPlayer ==
                                      model.players[0])
                                    CustomButton(
                                      onTap: model.canEndTurn
                                          ? () {
                                              model.endTurn();
                                            }
                                          : null,
                                      width: 50,
                                      text: "END TURN",
                                    ),
                                ],
                              ),
                            ),
                            CardList(
                              player: model.players[0],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: CustomButton(
                        onTap: () {
                          final players = [
                            PlayerModel(
                              nickname: 'Ryan',
                              socketID: '123',
                              points: 0,
                              playerType: 'x',
                            ),
                            PlayerModel(
                              nickname: 'Bot',
                              socketID: '123',
                              points: 0,
                              playerType: 'x',
                              isHuman: false,
                            ),
                          ];
                          model.newGame(players);
                        },
                        text: 'Start New Game'),
                  );
          },
        ),
      ),
    );
  }
}
