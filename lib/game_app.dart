import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:zapit_2dgame/constants/constants.dart';
import 'package:zapit_2dgame/game/space_game.dart';

class GameApp extends StatefulWidget {
  const GameApp({super.key});

  @override
  State<GameApp> createState() => _GameAppState();
}

class _GameAppState extends State<GameApp> {
  late final SpaceGame game;

  @override
  void initState() {
    super.initState();
    game = SpaceGame();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: FittedBox(
              child: SizedBox(
                height: gameHeight,
                width: gameWidth,
                child: GameWidget(game: game),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
