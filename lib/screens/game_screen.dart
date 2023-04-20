// ignore_for_file: avoid_print

import 'package:BLAVKJAVK/components/game_board.dart';
import 'package:BLAVKJAVK/models/player_model.dart';
import 'package:BLAVKJAVK/providers/game_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/deck_service.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late final GameProvider _gameProvider;

  @override
  void initState() {
    _gameProvider = Provider.of<GameProvider>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'logos/blavkjavk-website-favicon-white.png',
          height: 50,
        ),
        backgroundColor: Colors.red,
        actions: [
          TextButton(
            onPressed: () async {
              final players = [
                PlayerModel(name: "You", isHuman: true),
                PlayerModel(name: "Dealer", isHuman: false),
              ];
              await _gameProvider.newGame(players);
            },
            child:
                const Text("New Game", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
      body: const GameBoard(),
    );
  }
}
