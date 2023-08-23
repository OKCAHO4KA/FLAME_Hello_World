import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class MySprite extends SpriteComponent {
  double circlePosX = 100;
  double circlePosY = 100;
  MySprite() : super(size: Vector2.all(50));
//cargamos imagen y ponemos dimenciones 45px

  @override
  FutureOr<void> onLoad() async {
    sprite = await Sprite.load('vinni.png');
// без position появляется в 0.0

    return super.onLoad();
  }

  @override
  void update(double dt) {
    circlePosX++;
    circlePosY++;
    position = Vector2(circlePosX, circlePosY);

    super.update(dt);
  }
}

class MyGame extends FlameGame {
  @override
  FutureOr<void> onLoad() {
//inicializar nuestra classe , todos componentes que vamos utilizar en app
    //добавляем компонент mySprite

    add(MySprite());

    return super.onLoad();
  }
}

void main() => runApp(GameWidget(game: MyGame()));
