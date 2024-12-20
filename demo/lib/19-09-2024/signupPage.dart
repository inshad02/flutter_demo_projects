// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:demo/19-09-2024/loginPage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign up",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Create your account",
              style: TextStyle(
                color: const Color.fromARGB(255, 82, 77, 77),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Username",
                  prefixIcon: Icon(Icons.account_circle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),
                  fillColor: Color.fromARGB(248, 241, 193, 233),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    fillColor: Color.fromARGB(248, 241, 193, 233),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(248, 241, 193, 233),
                    filled: true,
                    labelText: "Password",
                    hintText: "password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Confirm Password",
                    prefixIcon: Icon(Icons.password),
                    fillColor: Color.fromARGB(248, 241, 193, 233),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 179, 12, 134))),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Or"),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 350,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign in with Google",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 179, 12, 134),
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ?"),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 179, 12, 134),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
