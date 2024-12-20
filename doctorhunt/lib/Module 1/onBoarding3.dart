import 'package:flutter/material.dart';

class onBoarding3 extends StatefulWidget {
  const onBoarding3({super.key});

  @override
  State<onBoarding3> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<onBoarding3> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 110,
            ),
            const CircleAvatar(
              radius: 180,
              backgroundImage: AssetImage("assets/images/onboarding3.jpeg"),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Easy Appointments",
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
            const SizedBox(
              height: 70,
            ),
            Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(5)),
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
            )
          ],
        ),
      ),
    );
  }
}
