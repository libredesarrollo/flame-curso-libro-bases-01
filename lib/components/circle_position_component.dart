import 'dart:math';
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

import 'package:flame/components.dart';

class CirclePositionComponent extends PositionComponent
    with CollisionCallbacks {
  CirclePositionComponent({this.countActive = false});

  static const int circleSpeed = 500;
  static const double circleWidth = 100.0, circleHeight = 100.0;

  int circleDirectionX = 1;
  int circleDirectionY = 1;

  Random random = Random();

  int count = 0;
  bool countActive;

  late double screenWidth, screenHeight;

  final ShapeHitbox hitbox = CircleHitbox();

  @override
  void update(double dt) {
    position.x += circleDirectionX * circleSpeed * dt;
    position.y += circleDirectionY * circleSpeed * dt;
    super.update(dt);
  }

  @override
  void onLoad() {
    screenWidth = MediaQueryData.fromWindow(window).size.width;
    screenHeight = MediaQueryData.fromWindow(window).size.height;

    circleDirectionX = random.nextInt(2) == 1 ? 1 : -1;
    circleDirectionY = random.nextInt(2) == 1 ? 1 : -1;

    position = Vector2(random.nextDouble() * 500, random.nextDouble() * 500);
    size = Vector2(circleWidth, circleHeight);

    hitbox.paint.color = BasicPalette.green.color;
    hitbox.renderShape = true;

    add(hitbox);
  }

  @override
  void onCollision(Set<Vector2> points, PositionComponent other) {
    if (other is ScreenHitbox) {
      if (points.first[1] <= 0.0) {
        // top
        circleDirectionX = random.nextInt(2) == 1 ? 1 : -1;
        circleDirectionY *= -1;
      } else if (points.first[1] >=
          MediaQueryData.fromWindow(window).size.height) {
        // bottom
        circleDirectionX = random.nextInt(2) == 1 ? 1 : -1;
        circleDirectionY *= -1;
      } else if (points.first[0] <= 0.0) {
        // left
        circleDirectionX *= -1;
        circleDirectionY = random.nextInt(2) == 1 ? 1 : -1;
      } else if (points.first[0] >=
          MediaQueryData.fromWindow(window).size.width) {
        // right
        circleDirectionX *= -1;
        circleDirectionY = random.nextInt(2) == 1 ? 1 : -1;
      }

      // hitbox.paint.color = BasicPalette.red.color;
      hitbox.paint.color = ColorExtension.random();
    }

    if (other is CirclePositionComponent) {
      circleDirectionX *= -1;
      circleDirectionY *= -1;
    }

    if (countActive) {
      count++;
      print(count);
    }

    super.onCollision(points, other);
  }
}
