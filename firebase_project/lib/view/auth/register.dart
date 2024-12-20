// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:firebase_project/model/services/firebaseservices.dart';
import 'package:firebase_project/utils/custom.dart';
import 'package:firebase_project/view/auth/loginPage.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  TextEditingController confirmpasswordcontroler = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Text(
                "SignUp",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                height: 550,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     SizedBox(
                    //       width: 40,
                    //     ),
                    //     Text("Name"),
                    //   ],
                    // ),
                    // SizedBox(
                    //   width: 300,
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //         prefixIcon: Icon(
                    //           Icons.account_circle_outlined,
                    //           color: Colors.green,
                    //         ),
                    //         labelText: "Enter your name",
                    //         fillColor: Colors.green[100],
                    //         filled: true,
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(10),
                    //             borderSide: BorderSide.none)),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     SizedBox(
                    //       width: 40,
                    //     ),
                    //     Text("Mobile Number"),
                    //   ],
                    // ),
                    // SizedBox(
                    //   width: 300,
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //         prefixIcon: Icon(
                    //           Icons.phone_outlined,
                    //           color: Colors.green,
                    //         ),
                    //         labelText: "Enter your mobile number",
                    //         fillColor: Colors.green[100],
                    //         filled: true,
                    //         border: OutlineInputBorder(
                    //             borderRadius: BorderRadius.circular(10),
                    //             borderSide: BorderSide.none)),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text("Email"),
                      ],
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: emailcontroller,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'enter something';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.green,
                            ),
                            labelText: "Enter your Email Id",
                            fillColor: Colors.green[100],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Text("Password"),
                      ],
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: passwordcontroler,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'enter something';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.green,
                            ),
                            labelText: "Enter your Password",
                            fillColor: Colors.green[100],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    Text(
                      "Confirm Password",
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: confirmpasswordcontroler,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'enter something';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.green,
                            ),
                            labelText: "Enter your Password",
                            fillColor: Colors.green[100],
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            if (passwordcontroler.text ==
                                confirmpasswordcontroler.text) {
                              await Firebaseservices().singUp(
                                  emailcontroller.text,
                                  passwordcontroler.text,
                                  context);
                              Navigator.pop(context);
                            }
                          } else {
                            customSnackbar(context, 'something wrong');
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.green)),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginPage()));
                            },
                            child: Text(
                              "Back to login",
                              style: TextStyle(
                                color: Color.fromARGB(255, 33, 139, 225),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
