import 'package:flutter/material.dart';
import 'package:machine_test/model/firebaseauth.dart';
import 'package:machine_test/utils/custom.dart';
import 'package:machine_test/view/auth/signUp.dart';

import '../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Form(
        key: formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: mq.width * 0.01,
                    ),
                    const Text("Back!!!",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color.fromARGB(255, 26, 43, 72),
                            fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.02,
                ),
                CustomTextField(
                    validator: (val) {
                      if (emailcontroller.text.isEmpty) {
                        return "Enter your email";
                      }
                      return null;
                    },
                    controller: emailcontroller,
                    label: "Email",
                    prefixIcon: Icons.person),
                CustomTextField(
                    validator: (value) {
                      if (passwordcontroller.text.length < 6) {
                        return "Enter a valid password";
                      }
                      return null;
                    },
                    obsecure: true,
                    controller: passwordcontroller,
                    label: "Password",
                    prefixIcon: Icons.password),
                MaterialButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      await Firebaseauthservices().signIn(emailcontroller.text,
                          passwordcontroller.text, context);
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: const Color.fromARGB(255, 26, 43, 72),
                  height: mq.height * 0.06,
                  minWidth: mq.width * 1,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?"),
                    SizedBox(
                      width: mq.width * 0.01,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => SignUpScreen()));
                        },
                        child: const Text("SignUp"))
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
