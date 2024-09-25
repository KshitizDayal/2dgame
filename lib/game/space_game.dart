import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:zapit_2dgame/constants/constants.dart';
import 'package:zapit_2dgame/game/space_game_world.dart';

class SpaceGame extends FlameGame {
  SpaceGame()
      : super(
          world: SpaceGameWorld(),
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  @override
  Color backgroundColor() {
    return spaceColor;
  }
}
