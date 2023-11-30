///
///  create by addWeb on 2023/11/28
///
import 'package:custom_like_button/custom_like_button.dart';
import 'package:custom_like_button/src/animation/rotation.dart';
import 'package:flutter/material.dart';

/// customLikeButton is for animation on icon.
class CustomLikeButton extends StatefulWidget {
  const CustomLikeButton(
      {super.key,
      required  this.isLiked,
      required this.front,
      required this.back});

  final Icon front;
  final Icon back;
  final bool isLiked;

  @override
  State<CustomLikeButton> createState() => _CustomLikeButtonState();
}

class _CustomLikeButtonState extends State<CustomLikeButton> {
  @override
  Widget build(BuildContext context) {
    /// TweenAnimation
    return TweenAnimationBuilder(
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeOut,
      tween: Tween(begin: 0.0, end: widget.isLiked ? 180.0 : 0.0),
      builder: (context, value, child) {
        var content = value >= 90 ? widget.back : widget.front;
        return RotationY(
          rotationY: value,
          child: RotationY(
              rotationY: value > 90 ? 180 : 0,
              child: AnimationBuilder(child: content)),
        );
      },
    );
  }
}
