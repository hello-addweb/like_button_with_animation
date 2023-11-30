import 'package:example/like_button_with_animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (BuildContext c, Widget? w) {
        final MediaQueryData data = MediaQuery.of(c);
        return const LikeButtonWithAnimation();
      },
    );
  }
}
