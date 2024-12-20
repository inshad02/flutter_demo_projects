import 'package:doctorhunt/Module%202/loginPage.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  bool? value1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: mq.height,
          width: mq.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue.shade300,
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.green.shade300
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: mq.height * 0.15,
            ),
            const Center(
                child: Text(
              "Join us to start searching",
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
            )),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Text(
                "You can search course, apply course and find scholarship for abroad studies",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Google
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: mq.height * 0.06,
                      width: mq.width * 0.39,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 3))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/google.png"),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Google",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mq.height * 0.025,
                  ),
                  //Facebook
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: mq.height * 0.06,
                      width: mq.width * 0.39,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                color: Colors.grey,
                                offset: Offset(0, 3))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Facebook.png"),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Facebook",
                              style: TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: mq.height * 0.04,
            ),
            SizedBox(
              height: mq.height * 0.065,
              width: mq.width * 0.85,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            SizedBox(
              height: mq.height * 0.065,
              width: mq.width * 0.85,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            SizedBox(
              height: mq.height * 0.02,
            ),
            SizedBox(
              height: mq.height * 0.065,
              width: mq.width * 0.85,
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: value1,
                    onChanged: (bool? value) {
                      setState(() {
                        value1 = value;
                      });
                    },
                    shape: const CircleBorder(),
                  ),
                  const Text(
                      "I agree with the Terms of Service & Privacy Policy"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: InkWell(
                child: Container(
                  height: mq.height * 0.06,
                  width: mq.width * 0.8,
                  decoration: BoxDecoration(
                      color: const Color(0xff0EBE7F),
                      borderRadius: BorderRadius.circular(9)),
                  child: const Center(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((_) => const Loginpage())));
                  },
                  child: const Text(
                    "Have an account? Log in",
                    style: TextStyle(color: Color(0xff0EBE7F)),
                  )),
            )
          ],
        )
      ],
    ));
  }
}
