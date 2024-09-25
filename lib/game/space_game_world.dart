import 'dart:async';

import 'package:flame/components.dart';

import 'player/spaceship_player.dart';
import 'space_game.dart';

class SpaceGameWorld extends World with HasGameRef<SpaceGame> {
  late final SpaceshipPlayer player;
  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    player = SpaceshipPlayer();
    add(player);
  }
}
