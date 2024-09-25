import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zapit_2dgame/constants/constants.dart';
import 'package:zapit_2dgame/game/space_game_world.dart';

class SpaceGame extends FlameGame<SpaceGameWorld>
    with HorizontalDragDetector, KeyboardEvents, HasCollisionDetection {
  SpaceGame()
      : super(
          world: SpaceGameWorld(),
          camera: CameraComponent.withFixedResolution(
            width: gameWidth,
            height: gameHeight,
          ),
        );

  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    // make it false to remove the squares
    debugMode = true;
  }

  @override
  Color backgroundColor() {
    return spaceColor;
  }

  @override
  void onHorizontalDragUpdate(DragUpdateInfo info) {
    super.onHorizontalDragUpdate(info);
    world.player.move(info.delta.global.x);
  }

  @override
  KeyEventResult onKeyEvent(
      KeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    const double movespeed = 55.0;

    if (event is KeyDownEvent) {
      if (keysPressed.contains(LogicalKeyboardKey.arrowRight)) {
        world.player.move(movespeed);
        return KeyEventResult.handled;
      } else if (keysPressed.contains(LogicalKeyboardKey.arrowLeft)) {
        world.player.move(-movespeed);
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }
}
