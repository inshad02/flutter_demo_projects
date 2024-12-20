import 'package:demo/route_demo/screenA.dart';
import 'package:demo/route_demo/screenB.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        backgroundColor: Colors.lightBlue,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, side: const BorderSide()),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ScreenA()));
              },
              child: const Text(
                "Go to Screen A",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, side: const BorderSide()),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ScreenB()));
              },
              child: const Text(
                "Go to Screen B",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
