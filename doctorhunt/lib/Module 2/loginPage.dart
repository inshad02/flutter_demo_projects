import 'package:doctorhunt/Module%202/otpForm.dart';
import 'package:doctorhunt/Module%202/signUpScreen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
          ], begin: Alignment.topLeft, end: Alignment.bottomRight))),
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mq.height * 0.18,
            ),
            const Center(
                child: Text(
              "Welcome back",
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
                  left: 20, right: 20, top: 120, bottom: 15),
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
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9))),
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
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  )),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: mq.height * 0.45,
                          child: Center(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 60, left: 17),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Forgot password',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 17, top: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Enter your email for the verification proccesss,\nwe will send 4 digits code to your email.',
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: mq.height * 0.05,
                                ),
                                SizedBox(
                                  height: mq.height * 0.065,
                                  width: mq.width * 0.9,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(9))),
                                  ),
                                ),
                                SizedBox(
                                  height: mq.height * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              height: mq.height * 0.45,
                                              child: Column(
                                                children: [
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 60, left: 17),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Enter 4 Digits Code',
                                                          style: TextStyle(
                                                              fontSize: 30,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 17, top: 10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          'Enter the 4 digits code that you received on your email.',
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: mq.height * 0.05,
                                                  ),
                                                  const Otpform(),
                                                  SizedBox(
                                                    height: mq.height * 0.05,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      showModalBottomSheet(
                                                          context: context,
                                                          builder: (BuildContext
                                                              context) {
                                                            return SizedBox(
                                                              height:
                                                                  mq.height *
                                                                      0.5,
                                                              child: Column(
                                                                children: [
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: 60,
                                                                        left:
                                                                            17),
                                                                    child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Reset Password',
                                                                          style: TextStyle(
                                                                              fontSize: 30,
                                                                              fontWeight: FontWeight.w700),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  const Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            17,
                                                                        top:
                                                                            10),
                                                                    child: Row(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          'Set the new password for your account so you can\n login and access all the features.',
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        mq.height *
                                                                            0.05,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        mq.height *
                                                                            0.065,
                                                                    width:
                                                                        mq.width *
                                                                            0.9,
                                                                    child:
                                                                        TextFormField(
                                                                      decoration: InputDecoration(
                                                                          hintText:
                                                                              "New Password",
                                                                          border:
                                                                              OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        mq.height *
                                                                            0.01,
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        mq.height *
                                                                            0.065,
                                                                    width:
                                                                        mq.width *
                                                                            0.9,
                                                                    child:
                                                                        TextFormField(
                                                                      decoration: InputDecoration(
                                                                          hintText:
                                                                              "Re-Enter Password",
                                                                          border:
                                                                              OutlineInputBorder(borderRadius: BorderRadius.circular(9))),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        mq.height *
                                                                            0.05,
                                                                  ),
                                                                  InkWell(
                                                                    onTap: () {
                                                                      Navigator.push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                              builder: (_) => const Loginpage()));
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      height: mq
                                                                              .height *
                                                                          0.06,
                                                                      width: mq
                                                                              .width *
                                                                          0.76,
                                                                      decoration: BoxDecoration(
                                                                          color: const Color(
                                                                              0xff0EBE7F),
                                                                          borderRadius:
                                                                              BorderRadius.circular(9)),
                                                                      child: const Center(
                                                                          child: Text(
                                                                        "Update Password",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontWeight: FontWeight.w700,
                                                                            fontSize: 20),
                                                                      )),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          });
                                                    },
                                                    child: Container(
                                                      height: mq.height * 0.06,
                                                      width: mq.width * 0.76,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xff0EBE7F),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(9)),
                                                      child: const Center(
                                                          child: Text(
                                                        "Continue",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            fontSize: 20),
                                                      )),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: Container(
                                      height: mq.height * 0.06,
                                      width: mq.width * 0.76,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff0EBE7F),
                                          borderRadius:
                                              BorderRadius.circular(9)),
                                      child: const Center(
                                          child: Text(
                                        "Continue",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Text("Forgot Password",
                    style: TextStyle(color: Color(0xff0EBE7F)))),
            SizedBox(
              height: mq.height * 0.1,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const Signupscreen()));
                },
                child: const Text("Don’t have an account? Join us",
                    style: TextStyle(color: Color(0xff0EBE7F))))
          ],
        ),
      ),
    ]));
  }
}
