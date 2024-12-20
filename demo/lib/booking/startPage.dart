// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:demo/booking/dateSelectPage.dart';
import 'package:flutter/material.dart';

class StartPageBooking extends StatefulWidget {
  const StartPageBooking({super.key});

  @override
  State<StartPageBooking> createState() => _StartPageBookingState();
}

class _StartPageBookingState extends State<StartPageBooking>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 41, 194, 225),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/travell.png",
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SelectorPage()));
                },
                child: Text(
                  "Occupy your seat  >",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
