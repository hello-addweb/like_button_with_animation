import 'package:flutter/material.dart';

///  An Animation is an abstract class that understands its current value and its state.
class AnimationBuilder extends StatelessWidget {
  //we can apply any kind of Icon.
  final Icon child;

  /// child is icon and it is in animation constructor with child param.
  const AnimationBuilder({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        width: 100,
        height: 100,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeOut,
        child: child);
  }
}
