import 'package:game_hub/model/player.dart';

abstract class Game {
  static String name = "Game";
  int currentPlayer = 0;

  late List<Player> Function() getPlayers;
  late bool Function() hasRequiredPlayers;
}
