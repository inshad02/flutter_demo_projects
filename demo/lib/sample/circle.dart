import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({super.key});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 210,
          height: 210,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 221, 18, 170),
              border: Border.all(width: 5),
              borderRadius: BorderRadius.circular(90)),
          child: Center(
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 72, 207, 110),
                  border: Border.all(width: 5),
                  borderRadius: BorderRadius.circular(40)),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(width: 5),
                      borderRadius: BorderRadius.horizontal()),
                  child: Center(
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(width: 5, color: Colors.white),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              border: Border.all(color: Colors.red, width: 5),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
