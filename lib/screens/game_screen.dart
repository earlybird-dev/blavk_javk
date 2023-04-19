import 'package:blavk_javk/components/game_board.dart';
import 'package:flutter/material.dart';

import '../services/deck_service.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  void initState() {
    super.initState();
    tempFunc();
  }

  void tempFunc() async {
    final service = DeckService();
    final deck = await service.newDeck(8);
    print(deck.remaining);
    print('--------------------------------');
    final draw = await service.drawCards(deck, count: 2);
    print(draw.cards.length);
    print('================================');
    print(draw.remaining);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BLAVKJAVK"),
        actions: [
          TextButton(
            onPressed: () {},
            child:
                const Text("New Cards", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: const GameBoard(),
    );
  }
}
