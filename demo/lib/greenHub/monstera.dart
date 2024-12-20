// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Monstera extends StatefulWidget {
  const Monstera({super.key});

  @override
  State<Monstera> createState() => _MonsteraState();
}

class _MonsteraState extends State<Monstera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(children: [
                  Container(
                    height: 400,
                    child: Image.asset(
                      "assets/pngtree-indoor-plant-png-image_6129530-removebg-preview (1) 1.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                ]),
                Row(children: [
                  Text(
                    "  Monestera",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                  ),
                ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        "Neque porro quisquam est quidolorem ipsum quia dolor sitamer, consectetur, adipisci velit..",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "View more",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                          "assets/Money-Plant-Golden-Epipremnum-Aureum-1-min-removebg-preview 1.png"),
                    ),
                    Container(
                      height: 120,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(
                          "assets/pngtree-hand-drawn-noise-illustration-green-potted-plant-green-leaf-design-element-png-image_4058540-removebg-preview 1.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: SizedBox(
                          width: 130,
                          child: Text(
                            "Buy",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.green[300])),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: SizedBox(
                          width: 130,
                          child: Text(
                            "Cart",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.green[300])),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
