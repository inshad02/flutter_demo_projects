import 'package:flutter/material.dart';

class HomePageLeaf extends StatefulWidget {
  const HomePageLeaf({super.key});

  @override
  State<HomePageLeaf> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageLeaf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Leafboard")),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 41, 41, 41),
            fontSize: 20),
        backgroundColor: Color.fromARGB(255, 107, 242, 111),
      ),
    );
  }
}
