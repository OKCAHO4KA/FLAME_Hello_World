import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class MyGame extends Game {
  double circlePosX = 100;
  double circlePosY = 100;

  @override
  void render(Canvas canvas) {
    // canvas.drawRect(Rect.fromPoints(Offset(100, 200), Offset(300, 400)),
    //     BasicPalette.cyan.paint());

    canvas.drawCircle(
        Offset(circlePosX, circlePosY), 70, BasicPalette.red.paint());
  }

  @override
  void update(double dt) {
    circlePosX++;
    circlePosY++;
  }
}

void main() => runApp(GameWidget(game: MyGame()));
