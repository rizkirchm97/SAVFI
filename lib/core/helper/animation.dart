

import 'package:flutter/material.dart';

class LoopingAnimationController extends AnimationController {
  LoopingAnimationController(TickerProvider vsync)
      : super(
          vsync: vsync,
          duration: const Duration(seconds: 2),
        );

  @override
  TickerFuture forward({double? from}) {
    if(status == AnimationStatus.completed) {
      reset();
      forward();
    }
    return super.forward(from: from);
  }

}
