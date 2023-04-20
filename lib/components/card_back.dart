import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:blavkjavk/constants.dart';

class CardBack extends StatelessWidget {
  final double size;
  final Widget? child;

  const CardBack({super.key, this.size = 1, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: CARD_WIDTH * size,
      height: child != null ? CARD_HEIGHT * size + 26 : CARD_HEIGHT * size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: child ??
          CachedNetworkImage(
              imageUrl: "https://deckofcardsapi.com/static/img/back.png",
              width: CARD_WIDTH * size,
              height: CARD_HEIGHT * size),
    );
  }
}
