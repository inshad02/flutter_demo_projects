import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  late AnimationController _animationBuilderController;
  late Animation<double> _blurAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _scaleAnimation = Tween<double>(begin: 1, end: 3).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.bounceIn));

    _animationBuilderController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _blurAnimation = Tween<double>(begin: 0, end: 5).animate(CurvedAnimation(
        parent: _animationBuilderController, curve: Curves.linear));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
    _animationBuilderController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _scaleAnimation,
              child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/Animation-PNG-Transparent.png")),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      _animationController.forward();
                    },
                    child: Text("Forward")),
                ElevatedButton(
                    onPressed: () {
                      _animationController.reverse();
                    },
                    child: Text("Reverse")),
                ElevatedButton(
                    onPressed: () {
                      _animationController.stop();
                    },
                    child: Text("Stop")),
                ElevatedButton(
                    onPressed: () {
                      _animationController.reset();
                    },
                    child: Text("Reset")),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            AnimatedBuilder(
                animation: _blurAnimation,
                builder: (context, child) {
                  return SizedBox(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: _blurAnimation.value * 0.40,
                        sigmaY: _blurAnimation.value * 0.40,
                      ),
                      child: Container(
                          height: 250,
                          width: 250,
                          child: Image.asset(
                              "assets/Animation-PNG-Transparent.png")),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
