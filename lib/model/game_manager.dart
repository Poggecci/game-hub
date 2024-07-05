import 'package:game_hub/model/game.dart';

class GameManager<T extends Game> {
  static final Map<Type, GameManager> _managers = {};

  static GameManager getInstance<T extends Game>() {
    if (_managers[T] == null) {
      _managers[T] = GameManager<T>();
    }
    return _managers[T]!;
  }

  String getName() {
    if (T is! Game) {
      throw Exception("Type '$T' does not extend Game");
    }
    return T.name;
  }
}
