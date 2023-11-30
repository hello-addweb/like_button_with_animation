# Like Button with animation

```like_button_with_animation```  is a Flutter package for icon like and dislike with animation and color change.✨

It allows custom icon with any Custom Widget (Stateless or Stateful).

Very smooth animations supporting Android, iOS & WebApp, DesktopApp.

## Show Cases

[//]: # (<div style="display:flex">)

[//]: # (<img width="355" alt="alert2" src="https://github.com/hello-addweb/-TikTok-Flutter/assets/133627084/21647e09-5711-4704-80f8-4e8e84e781c7" width="200">)

[//]: # (<img width="355" alt="alert2" src="https://github.com/hello-addweb/-TikTok-Flutter/assets/133627084/3ad5edf5-b81e-4b1f-8cfe-f4189268cbb7" width="200">)

[//]: # (<div/>)


## Why?

We build this package because we wanted to:

- have a custom icons with flip animation
- change color and size of the icon.


## ❗UpComing Features❗
- Will provide fully support with assets image (svg, png) and material icons with new update.
- custom animation duration.


## Installation

Create a new project with the command

```yaml
flutter create MyApp
```

Add

```yaml
like_button_with_animation: ...
```

to your `pubspec.yaml` of your flutter project.
**OR**
run

```yaml
flutter pub add like_button_with_animation
```

in your project's root directory.

In your library add the following import:

```dart
import 'package:custom_like_button/custom_like_button_with_animation.dart';
```

For help getting started with Flutter, view the online [documentation](https://flutter.io/).

## Usage

```dart

class LikeButtonWithAnimation extends StatefulWidget {
  const LikeButtonWithAnimation({super.key});

  @override
  State<LikeButtonWithAnimation> createState() =>
      _LikeButtonWithAnimationState();
}

class _LikeButtonWithAnimationState
    extends State<LikeButtonWithAnimation> {
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

```         

## Constructor

#### Basic

| Parameter | Default                                                     | Description                                                         | Required |
|-----------|:------------------------------------------------------------|:--------------------------------------------------------------------|:--------:|
| isLiked   | -                                                           | isLiked true, false for icon .                                      |   true   |
| frontIcon | -                                                           | Icon when isLiked = true.pass icon color, size and other property.  |   true   |
| backIcon  | -                                                           | Icon when isLiked = false.pass icon color, size and other property. |   true   |

