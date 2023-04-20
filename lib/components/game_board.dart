import 'package:blavkjavk/components/deck_pile.dart';
import 'package:blavkjavk/models/player_model.dart';
import 'package:blavkjavk/providers/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GameBoard extends StatelessWidget {
  const GameBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameProvider>(
      builder: (context, model, child) {
        return model.currentDeck != null
            ? Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () async {
                          await model.drawCards(model.players.first);
                        },
                        child:
                            DeckPile(remaining: model.currentDeck!.remaining)),
                  )
                ],
              )
            : Center(
                child: TextButton(
                  child: const Text("Start New Game"),
                  onPressed: () {
                    final players = [
                      PlayerModel(name: "You", isHuman: true),
                      PlayerModel(name: "Dealer", isHuman: false),
                    ];
                    model.newGame(players);
                  },
                ),
              );
      },
    );
  }
}
