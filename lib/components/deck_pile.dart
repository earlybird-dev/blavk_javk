import 'package:blavkjavk/components/card_back.dart';
import 'package:blavkjavk/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DeckPile extends StatelessWidget {
  final int remaining;
  final double size;
  final bool canDraw;

  const DeckPile({
    super.key,
    required this.remaining,
    this.size = 1,
    this.canDraw = false,
  });

  @override
  Widget build(BuildContext context) {
    return CardBack(
      size: size,
      child: Column(
        children: [
          Center(
            child: Text(
              "Remaining: $remaining",
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 10, // <-- SEE HERE
          ),
          CachedNetworkImage(
              imageUrl: "https://deckofcardsapi.com/static/img/back.png",
              width: CARD_WIDTH * size,
              height: CARD_HEIGHT * size),
        ],
      ),
    );
  }
}
