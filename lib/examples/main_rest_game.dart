import 'package:flutter/material.dart';

import 'package:flame/palette.dart';
import 'package:flame/game.dart';

class MyGame with Game {

  double circlePos = 10;

  @override
  void render(Canvas canvas) {
    // canvas.drawRect(
    //     Rect.fromPoints(const Offset(10, 10), const Offset(500, 500)),BasicPalette.purple.paint());

        canvas.drawCircle(Offset(circlePos, circlePos), 100, BasicPalette.red.paint());
  }

  @override
  void update(double dt) {
    circlePos++;
  }
}

void main() {
  runApp(GameWidget(game: MyGame()));
}
