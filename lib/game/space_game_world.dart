import 'dart:async';

import 'package:flame/components.dart';
import 'package:zapit_2dgame/game/sprites/earth.dart';
import 'package:zapit_2dgame/game/sprites/rock.dart';

import 'sprites/player.dart';
import 'space_game.dart';

class SpaceGameWorld extends World with HasGameRef<SpaceGame> {
  late final Player player;
  late final Earth earth;
  late final Rock rock;

  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    player = Player();
    earth = Earth();

    add(player);
    add(earth);
  }
}
