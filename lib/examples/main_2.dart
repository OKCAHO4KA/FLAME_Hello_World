import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';

class MyCircle extends PositionComponent {
  double circlePosX = 100;
  double circlePosY = 100;
  MyCircle() : super();

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(
        Offset(circlePosX, circlePosY), 70, BasicPalette.red.paint());
    // canvas.drawCircle(const Offset(200, 100), 70, BasicPalette.green.paint());
    // canvas.drawCircle(const Offset(300, 100), 70, BasicPalette.blue.paint());
    // canvas.drawCircle(const Offset(300, 400), 70, BasicPalette.blue.paint());

    // canvas.drawRect(
    //     Rect.fromCircle(
    //       center: Offset(100, 200),
    //       radius: 50,
    //     ),
    //     BasicPalette.red.paint());
    // canvas.drawRect(Rect.fromCircle(center: Offset(200, 200), radius: 50),
    //     BasicPalette.green.paint());

    // canvas.drawRect(
    //     Rect.fromCenter(center: Offset(300, 200), width: 100, height: 500),
    //     BasicPalette.blue.paint());
    // // canvas.drawDRRect(Rect.fromCircle(center: Offset(200, 200), radius: 50), Rect.fromCircle(center: Offset(200, 200), radius: 50), BasicPalette.pink.paint());
    // // BasicPalette.blue.paint();

    // canvas.drawRect(Rect.fromPoints(Offset(0, 0), Offset(140, 150)),
    //     BasicPalette.cyan.paint());

    super.render(canvas);
  }

  @override
  update(double dt) {
    circlePosX++;
    circlePosY++;

    return super.update(dt);
  }
}

class MyGame extends FlameGame {
  @override
  FutureOr<void> onLoad() async {
    add(MyCircle());

    return super.onLoad();
  }
}

void main() {
  runApp(GameWidget(game: MyGame()));
}
