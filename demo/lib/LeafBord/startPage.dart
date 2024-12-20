// ignore_for_file: prefer_const_constructors

import 'package:demo/LeafBord/signUp.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
          Stack(
            children: [
              Container(
                width: 400,
                height: 380,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 27, 62),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(120)),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 340),
                  child: ClipOval(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      height: 80,
                      width: 80,
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.wMbONVEVUpx8NMWzUwsLVgHaF7?w=228&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Leafboard",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "A platform built for a new way of working",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 180,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUpLeaf()));
              },
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 107, 242, 111))),
              child: Text(
                "Get Started for Free   >",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ])));
  }
}
