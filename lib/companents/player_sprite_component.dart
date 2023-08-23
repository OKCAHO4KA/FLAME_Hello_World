import 'dart:async';

import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/services/keyboard_key.g.dart';

class PlayerSpriteComponent extends SpriteComponent with KeyboardHandler {
  late double screenWidth, screenHeight, centerX, centerY;

  final double spriteWidth = 200;
  final double spriteHeight = 200;

  @override
  FutureOr<void> onLoad() async {
    screenWidth = MediaQueryData.fromView(
            WidgetsBinding.instance.platformDispatcher.implicitView!)
        .size
        .width;

    screenHeight = MediaQueryData.fromView(
            WidgetsBinding.instance.platformDispatcher.implicitView!)
        .size
        .height;

    centerX = (screenWidth / 2) - (spriteWidth / 2);
    centerY = (screenHeight / 2) - (spriteHeight / 2);
    sprite = await Sprite.load('vinni.png');
    position = Vector2(centerX, centerY);
    size = Vector2(spriteWidth, spriteHeight);

    return super.onLoad();
  }

  @override
  void update(double dt) {
    // position = Vector2(centerX, centerY);

    super.update(dt);
  }

  @override
  bool onKeyEvent(RawKeyEvent event, Set<LogicalKeyboardKey> keysPressed) {
    print(keysPressed);
    print(event);

    if (keysPressed.contains(LogicalKeyboardKey.arrowLeft) ||
        keysPressed.contains(LogicalKeyboardKey.keyA)) {
      position = Vector2(centerX--, centerY);
      // centerX -= 10;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowRight) ||
        keysPressed.contains(LogicalKeyboardKey.keyD)) {
      position = Vector2(centerX++, centerY);
      // centerX += 10;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowUp) ||
        keysPressed.contains(LogicalKeyboardKey.keyW)) {
      position = Vector2(centerX, centerY--);
      // centerY -= 10;
    } else if (keysPressed.contains(LogicalKeyboardKey.arrowDown) ||
        keysPressed.contains(LogicalKeyboardKey.keyS)) {
      position = Vector2(centerX, centerY++);
      // centerY += 10;
    }
    super.onKeyEvent(event, keysPressed);

    return true;
  }
}
