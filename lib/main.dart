import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:game_hub/game/rock_paper_scissors.dart';
import 'package:game_hub/game/tic_tac_toe.dart';
import 'package:game_hub/model/game_manager.dart';
import 'package:game_hub/page/home.dart';

import 'model/game.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: getOptions());
  runApp(const MyApp());

  var manager1 = GameManager.getInstance<Game>();
  var manager2 = GameManager.getInstance<TicTacToe>();
  var manager3 = GameManager.getInstance<RockPaperScissors>();
  print("${manager1.getName()}, ${manager2.getName()}, ${manager3.getName()}");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
