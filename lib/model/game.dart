abstract class Game {
  static String name = "Game";
  static int minPlayers = 0;
  static int maxPlayers = 0;
  String get gameName {
    return Game.name;
  }

  bool checkWin(Map<String, dynamic> state);
  bool checkDraw(Map<String, dynamic> state);
  Map<String, dynamic> processMove(Map<String, dynamic> state);
  bool validateState(Map<String, dynamic> state);
}
