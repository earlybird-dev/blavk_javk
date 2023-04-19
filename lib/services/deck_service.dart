import 'package:blavk_javk/models/deck_model.dart';
import 'package:blavk_javk/models/draw_model.dart';

import 'api_service.dart';

class DeckService extends ApiService {
  Future<DeckModel> newDeck([int deckCount = 6]) async {
    final data = await httpGet('/deck/new/shuffle', params: {
      'deck_count': deckCount,
    });

    return DeckModel.fromJson(data);
  }

  Future<DrawModel> drawCards(DeckModel deck, {int count = 2}) async {
    final data = await httpGet('/deck/${deck.deck_id}/draw', params: {
      'count': count,
    });

    return DrawModel.fromJson(data);
  }
}
