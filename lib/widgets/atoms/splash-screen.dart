import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:flutter_template/widgets/atoms/img.dart';

class SplashScreenAnim extends StatefulWidget {
  const SplashScreenAnim({super.key});

  @override
  AnimatedBuilderDemoState createState() => AnimatedBuilderDemoState();
}

class AnimatedBuilderDemoState extends State<SplashScreenAnim>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // Define an animation controller

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      // Initialize the animation controller
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _controller.forward().then((value) {
      // Start the animation and when it's finished, pop the current screen
      Navigator.of(context).pop();
    });
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Dispose of the animation controller when the widget is removed from the tree
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        AnimatedBuilder(
          // Use AnimatedBuilder to animate the rotation of the bird image
          animation: _controller,
          child: SizedBox(
            width: 120.0,
            height: 120.0,
            child:
                Image.asset(Img.get("bird.png")), // The bird image to animate
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value *
                  2.0 *
                  math.pi, // Rotate the image by the animation value
              child: child,
            );
          },
        ),
        Container(height: 15),
        ShaderMask(
          // Use ShaderMask to add a gradient to the "Flutter UIX" text
          shaderCallback: (Rect bounds) {
            return const LinearGradient(
              colors: [Color(0xFF0089CF), Color(0xFF00CDBA)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds);
          },
          child: const Text(
            "Flutter UIX",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ])),
    );
  }
}
