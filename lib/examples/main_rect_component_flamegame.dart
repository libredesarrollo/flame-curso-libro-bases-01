// main_rect_component_flamegame

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class MyCirle extends PositionComponent {
  MyCirle() : super();

    double circlePos = 10;

  // @override
  // Future<void>? onLoad() {
  //   return super.onLoad();
  // }

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(Offset(circlePos, circlePos), 10, BasicPalette.red.paint());
    // canvas.drawRect(Rect.fromCircle(center: const Offset(100, 100), radius: 50.0),BasicPalette.brown.paint());
    //canvas.drawRect(Rect.fromPoints(const Offset(10,10), const Offset(500,500)), BasicPalette.purple.paint());
    

    super.render(canvas);
  }

  @override
  void update(double dt) {
    circlePos++;
    super.update(dt);
  }
  
}

class MyGame extends FlameGame {
  @override
  Future<void>? onLoad() {
    add(MyCirle());
    return super.onLoad();
  }
}

void main() {
  runApp(GameWidget(game: MyGame()));
}
