// ignore_for_file: avoid_print

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
    final deck = await service.newDeck(6);
    print(deck.deck_id);
    print(deck.remaining);
    print('--------------------------------');
    final draw = await service.drawCards(deck, count: 2);
    print(draw.cards.length);
    print('================================');
    print(draw.remaining);
    print('================================');
    final draw2 = await service.drawCards(deck, count: 2);
    print(draw2.cards.length);
    print('================================');
    print(draw2.remaining);
    print('================================');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'logos/blavkjavk-low-resolution-logo-white-on-transparent-background.png',
          width: 150,
        ),
        backgroundColor: Colors.red,
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
