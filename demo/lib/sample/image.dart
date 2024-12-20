import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  "assets/1710471147382.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.network(
                "https://th.bing.com/th/id/OIP.EmND85IL4ahVgGuSF0OibwHaJ3?w=148&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
          ],
        ),
      ),
    );
  }
}
