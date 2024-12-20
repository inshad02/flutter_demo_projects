// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:firebase_project/model/services/firebaseservices.dart';
import 'package:firebase_project/view/auth/forgotPassword.dart';
import 'package:firebase_project/view/auth/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Welcome to GreenHub"),
              SizedBox(
                height: 10,
              ),
              Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
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
                          // final RegExp regx = new RegExp(
                          //   r"/^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789/i",
                          //   caseSensitive: false,
                          //   multiLine: false,
                          // );
                          if (emailcontroller.text.isEmpty) {
                            return "Enter your Email";
                            // } else if (!regx.hasMatch(emailcontroller.text)) {
                            //   return 'invalid format';
                            // }
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
                        validator: (value) {
                          if (passwordcontroler.text.isEmpty) {
                            return "Enter your Password";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Forgotpassword()));
                        },
                        child: Text("Forgot Password?")),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            await Firebaseservices().singIn(
                                emailcontroller.text,
                                passwordcontroler.text,
                                context);
                          }
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.green)),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Create New Account?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpPage(),
                                ));
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Color.fromARGB(255, 33, 139, 225),
                            ),
                          ),
                        ),
                      ],
                    ),
                    MaterialButton(
                      onPressed: () async {
                        await Firebaseservices().googleSignin(context);
                      },
                      child: Icon(
                        Icons.g_mobiledata,
                        size: 50,
                      ),
                      color: Colors.green,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
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
