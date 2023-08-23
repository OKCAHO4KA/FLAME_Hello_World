import 'dart:async';

import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';
import 'package:pruebasflame/companents/player_sprite_component.dart';

class MyGame extends FlameGame
    with KeyboardEvents, HasKeyboardHandlerComponents {
  @override
  FutureOr<void> onLoad() {
    add(PlayerSpriteComponent());
    return super.onLoad();
  }

  // @override
  // KeyEventResult onKeyEvent(
  //     RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
  //   super.onKeyEvent(event, keysPressed);
  //   return KeyEventResult.handled;
  // }
}

void main() {
  runApp(GameWidget(game: MyGame()));
}
