import 'dart:async';

import 'package:flame/components.dart';
import 'package:zapit_2dgame/constants/constants.dart';
import 'package:zapit_2dgame/game/space_game.dart';

class SpaceshipPlayer extends SpriteComponent with HasGameRef<SpaceGame> {
  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    sprite = await Sprite.load("spaceship.png");
    size = Vector2.all(100);
    position = Vector2(0, (gameHeight / 2) - (size.y));
    anchor = Anchor.topCenter;
  }

  @override
  void update(double dt) {
    super.update(dt);
    double newY = position.y - (dt * 300);

    if (newY < -(gameRef.size.y / 2) + (size.y / 2)) {
      newY = -(gameRef.size.y / 2) + (size.y / 2);
    }
    position.y = newY;
  }
}
