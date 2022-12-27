import 'package:flame/collisions.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pruebasflame/components/circle_position_component.dart';
import 'package:pruebasflame/components/player_image_sprite_component.dart';
import 'package:pruebasflame/components/player_sprite_sheet_component.dart';

class MyGame extends FlameGame with KeyboardEvents, /*TapDetector */ HasTappables,HasKeyboardHandlerComponents, HasCollisionDetection {
  @override
  Future<void>? onLoad() {
    // add(PlayerImageSpriteComponent());
    //add(PlayerSpriteSheetComponent());

    // add(CirclePositionComponent());
    // add(CirclePositionComponent());
    // add(CirclePositionComponent());
    // add(CirclePositionComponent(countActive: true));
    add(PlayerSpriteSheetComponent());
    add(ScreenHitbox());

    return super.onLoad();
  }

  // @override
  // KeyEventResult onKeyEvent(RawKeyEvent event,Set<LogicalKeyboardKey> keysPressed){
  //   super.onKeyEvent(event, keysPressed);
  //   // print(event);
  //   print(keysPressed);
  //   return KeyEventResult.handled;
  // }

  // @override
  // void onTapDown(TapDownInfo info) {
    
  //   print(info);

  //   super.onTapDown(info);
  // }

  // @override
  // void onTapUp(TapUpInfo info) {
  //    print(info);
  //   super.onTapUp(info);
  // }


}

void main(List<String> args) {
  runApp(GameWidget(game: MyGame()));
}
