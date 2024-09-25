import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:zapit_2dgame/game/sprites/player.dart';

import '../space_game.dart';

class Earth extends SpriteComponent
    with HasGameRef<SpaceGame>, CollisionCallbacks {
  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    sprite = await Sprite.load("earth.png");
    // size = Vector2.all(300);
    position = Vector2(0, -(gameRef.size.y / 2));
    anchor = Anchor.topCenter;
    add(RectangleHitbox());
  }

  @override
  void onCollisionStart(
      Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Player && other.position.y < position.y) {
      other.removeFromParent();
    }
    super.onCollisionStart(intersectionPoints, other);
  }
}
