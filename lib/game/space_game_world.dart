import 'dart:async';

import 'package:flame/components.dart';

import 'player/spaceship_player.dart';
import 'space_game.dart';

class SpaceGameWorld extends World with HasGameRef<SpaceGame> {
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    add(SpaceshipPlayer());
  }
}
