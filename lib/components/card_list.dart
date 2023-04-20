import 'package:BLAVKJAVK/components/playing_card.dart';
import 'package:BLAVKJAVK/constants.dart';
import 'package:BLAVKJAVK/models/card_model.dart';
import 'package:BLAVKJAVK/models/player_model.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final double size;
  final PlayerModel player;
  final Function(CardModel)? onPlayCard;

  const CardList({
    super.key,
    required this.player,
    this.size = 1,
    this.onPlayCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CARD_HEIGHT * size,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: player.cards.length,
        itemBuilder: (context, index) {
          final card = player.cards[index];
          return PlayingCard(
            card: card,
            size: size,
            visible: true,
          );
        },
      ),
    );
  }
}
