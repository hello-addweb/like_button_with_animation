import 'package:custom_like_button/custom_like_button.dart';
import 'package:flutter/material.dart';

class LikeButtonWithAnimation extends StatefulWidget {
  const LikeButtonWithAnimation({super.key});

  @override
  State<LikeButtonWithAnimation> createState() =>
      _LikeButtonWithAnimationState();
}

class _LikeButtonWithAnimationState extends State<LikeButtonWithAnimation> {
  bool _isFavLiked = false;
  bool _isLikeLiked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Like Button"),
        ),
        body: SafeArea(
          child: ListView(
            // scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => _isFavLiked = !_isFavLiked),

                    /// you need to pass icons for back and front and isLiked true or false for animation
                    child: CustomLikeButtonWithAnimation(
                      /// isLiked = true;
                      front: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 50,
                      ),

                      /// isLiked = false;
                      back: const Icon(Icons.favorite_border,
                          color: Colors.red, size: 50),
                      isLiked: _isFavLiked,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => _isLikeLiked = !_isLikeLiked),

                    /// you need to pass icons for back and front and isLiked true or false for animation
                    child: CustomLikeButtonWithAnimation(
                      /// isLiked = true;
                      front: const Icon(
                        Icons.thumb_up_alt_sharp,
                        color: Colors.blueAccent,
                        size: 50,
                      ),

                      /// isLiked = false;
                      back: const Icon(Icons.thumb_up_alt_outlined,
                          color: Colors.blueAccent, size: 50),
                      isLiked: _isLikeLiked,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
