
import 'package:flutter/material.dart';

class DoubleTween extends Tween<double?> {
  DoubleTween({super.begin, super.end});

  @override
  double lerp(double t) => (begin! + (end! - begin!) * t);
}

class OffsetTween extends Tween<Offset?> {
  OffsetTween({super.begin, super.end});

  @override
  Offset lerp(double t) => (begin! + (end! - begin!) * t);
}
