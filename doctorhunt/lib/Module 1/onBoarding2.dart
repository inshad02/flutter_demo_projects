import 'package:doctorhunt/main.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({super.key});

  @override
  State<OnBoarding2> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: CircleAvatar(
                  radius: mq.width * 0.35,
                  backgroundImage:
                      const AssetImage("assets/images/onboarding2.jpeg"),
                ),
              ),
              const Stack(
                children: [],
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Choose Best Doctors",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              const Padding(
                padding: EdgeInsets.all(30),
                child: Text(
                  "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 350,
                height: 55,
                decoration: BoxDecoration(
                    color: const Color(0xff0EBE7F),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    "Get Started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip",
                      style: TextStyle(fontSize: 15),
                    )),
              ),
              const Row(
                children: [],
              )
            ],
          ),
        ),
      ),
    );
  }
}
