import 'package:flame/collisions.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pruebasflame/components/circle_position_component.dart';
import 'package:pruebasflame/components/player_image_sprite_component.dart';
import 'package:pruebasflame/components/player_sprite_sheet_component.dart';

class MyGame extends FlameGame
    with
        TapDetector,
        TapDetector,
        KeyboardEvents,
        TapDetector,
        /*TapDetector 
        HasTappables, Deprecated
        */

        HasKeyboardHandlerComponents,
        HasCollisionDetection {
//  @override
//   void onTapDown(TapDownInfo info) {
//     print("Player tap down on ${info.eventPosition.game}");
//     super.onTapDown(info);
//   }

//   @override
//   void onTapUp(TapUpInfo info) {
//     print("Player tap up on ${info.eventPosition.game}");
//     super.onTapUp(info);
//   }

  @override
  void onLoad() {
    // add(PlayerImageSpriteComponent());
    //add(PlayerSpriteSheetComponent());

    // add(CirclePositionComponent());
    // add(CirclePositionComponent());
    // add(CirclePositionComponent());
    // add(CirclePositionComponent(countActive: true));
    add(PlayerSpriteSheetComponent());
    add(ScreenHitbox());
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
