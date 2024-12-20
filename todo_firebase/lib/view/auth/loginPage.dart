import 'package:flutter/material.dart';

import '../../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.deepPurple,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: mq.height * 0.35,
                    width: mq.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: mq.width * 0.7,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: const Text("Email"),
                                hintText: 'Enter your email',
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: mq.height * 0.03,
                        ),
                        SizedBox(
                          width: mq.width * 0.7,
                          child: TextFormField(
                            decoration: InputDecoration(
                                label: const Text("Email"),
                                hintText: 'Enter your email',
                                fillColor: Colors.grey,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        SizedBox(
                          height: mq.height * 0.03,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          height: mq.height * 0.055,
                          minWidth: mq.width * 0.7,
                          color: Colors.deepPurple,
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
