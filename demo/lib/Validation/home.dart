// ignore_for_file: prefer_const_constructors

import 'package:demo/Validation/validation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hiii",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text("Welcome Back!!!!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          Text("You are succesfully Logged in :)",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
          Spacer(),
          Center(
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context, MaterialPageRoute(builder: (_) => Login()));
                  },
                  child: Text(
                    "LOGOUT",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
