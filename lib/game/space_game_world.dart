import 'dart:async';

import 'package:flame/components.dart';
import 'package:zapit_2dgame/constants/constants.dart';
import 'package:zapit_2dgame/game/sprites/earth.dart';
import 'package:zapit_2dgame/game/sprites/obstacle.dart';

import 'sprites/player.dart';
import 'space_game.dart';

class SpaceGameWorld extends World with HasGameRef<SpaceGame> {
  late final Player player;
  late final Earth earth;

  @override
  FutureOr<void> onLoad() {
    super.onLoad();
    player = Player();
    earth = Earth();

    add(player);
    add(earth);

    add(ObstacleMountain()..position = Vector2(0, 0));
    add(ObstacleRock()..position = Vector2(-obstacleSize * 2, 0));
    add(ObstacleStone()..position = Vector2(obstacleSize * 2, 0));
  }

  @override
  void update(double dt) {
    super.update(dt);

    children.whereType<ObstacleMountain>().forEach((obstacle) {
      obstacle.position.y += (dt * 200);

      if (obstacle.position.y > (gameRef.size.y / 2)) {
        // obstacle.position.y = -gameRef.size.y / 2;
        obstacle.position.y = -extendedheight;
      }
    });

    children.whereType<ObstacleRock>().forEach((obstacle) {
      obstacle.position.y += (dt * 500);

      if (obstacle.position.y > (gameRef.size.y / 2)) {
        // obstacle.position.y = -gameRef.size.y / 2;
        obstacle.position.y = -extendedheight;
      }
    });

    children.whereType<ObstacleStone>().forEach((obstacle) {
      obstacle.position.y += (dt * 400);

      if (obstacle.position.y > (gameRef.size.y / 2)) {
        // obstacle.position.y = -gameRef.size.y / 2;
        obstacle.position.y = -extendedheight;
      }
    });
  }
}
