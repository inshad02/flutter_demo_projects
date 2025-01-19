// ignore_for_file: sort_child_properties_last

import 'package:chat_app/model/firebaseAuthServices.dart';
import 'package:chat_app/utils/custom.dart';
import 'package:chat_app/view/auth/signUp.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _SignupState();
}

class _SignupState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.lock,
                  size: 80,
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                const Text("Welcome back you've been missed!"),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Customtextfield(
                    hinttext: "Email",
                    validator: (val) {
                      if (email.text.isEmpty) {
                        return "Enter you email";
                      }
                      return null;
                    },
                    controller: email,
                    obsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Customtextfield(
                    hinttext: "Password",
                    validator: (val) {
                      if (password.text.isEmpty) {
                        return "Enter your password";
                      }
                      return null;
                    },
                    controller: password,
                    obsecure: true,
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?")),
                    )),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                MaterialButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      await Firebaseauthservices()
                          .signIn(email.text, password.text, context);
                    }
                  },
                  height: mq.height * 0.08,
                  minWidth: mq.width * 0.9,
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: const Row(
                    children: [
                      Expanded(child: Divider()),
                      Text("Or continue with"),
                      Expanded(child: Divider())
                    ],
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/google-icon.png",
                        width: mq.width * 0.1,
                      ),
                      height: mq.height * 0.09,
                      minWidth: mq.width * 0.2,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: mq.width * 0.04,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Image.asset(
                        "assets/apple-logo-icon-14895.png",
                        width: mq.width * 0.1,
                      ),
                      height: mq.height * 0.09,
                      minWidth: mq.width * 0.2,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const Signup()));
                        },
                        child: const Text(
                          "Register now",
                          style: TextStyle(color: Colors.blue),
                        ))
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
