import 'package:game_hub/model/game.dart';
import 'package:game_hub/model/player.dart';

class GameManager<T extends Game> {
  final Player player;
  final T game;
  Map<String, dynamic>? state;

  GameManager({required this.player, required this.game});
}
