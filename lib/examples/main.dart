// main_sprite_component_flamegame

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'package:flame/components.dart';

class MySprite extends SpriteComponent {
  double spritePos = 10;

  MySprite() : super(size: Vector2.all(150));

  @override
  Future<void>? onLoad() async {
    sprite = await Sprite.load('tiger.png');
    // size =

    return super.onLoad();
  }

  @override
  void update(double dt) {
    spritePos++;

    position = Vector2(spritePos, spritePos);

    super.update(dt);
  }
}

class MyGame extends FlameGame {
  @override
  void onLoad() {
    add(MySprite());
  }
}

void main() {
  runApp(GameWidget(game: MyGame()));
}
