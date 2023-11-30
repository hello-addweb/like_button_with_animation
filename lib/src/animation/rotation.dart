import 'dart:math';

import 'package:flutter/material.dart';

/// rotation which animates the rotation of a widget.
/// rotation rotate from the back and front.
class RotationY extends StatelessWidget {
  //Degrees
  static const double degrees2Radians = pi / 180;

  /// child is icon.
  final Widget child;
  final double rotationY;

  const RotationY({ Key? key, required this.child, this.rotationY = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.001)
          ..rotateY(rotationY * degrees2Radians),
        child: child);
  }
}
