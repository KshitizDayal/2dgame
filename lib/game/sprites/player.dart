import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:zapit_2dgame/constants/constants.dart';
import 'package:zapit_2dgame/game/space_game.dart';

class Player extends SpriteComponent
    with HasGameRef<SpaceGame>, CollisionCallbacks {
  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    sprite = await Sprite.load("spaceship.png");
    size = Vector2.all(150);
    position = Vector2(0, (gameHeight / 2) - (size.y));
    anchor = Anchor.topCenter;
    add(RectangleHitbox());
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

  void move(double delatX) {
    double newX = position.x + delatX;

    double minX = -(gameRef.size.x / 2) + size.x / 2;
    double maxX = (gameRef.size.x / 2) - size.x / 2;
    newX = newX.clamp(minX, maxX);

    position.x = newX;
  }
}
