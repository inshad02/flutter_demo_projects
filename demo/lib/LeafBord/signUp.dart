// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:demo/LeafBord/homePage.dart';
import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class SignUpLeaf extends StatefulWidget {
  const SignUpLeaf({super.key});

  @override
  State<SignUpLeaf> createState() => _SignUpLeafState();
}

class _SignUpLeafState extends State<SignUpLeaf> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  String? validateEmail(String? email) {
    RegExp emailRegexp = RegExp(r'^[\w\.-]+@[\w-]\+\.\w{2,3}(\.\w{2,3})?$');
    final isEmailValid = emailRegexp.hasMatch(email ?? '');
    if (!isEmailValid) {
      return "Please enter a valid email";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      height: 40,
                      width: 50,
                      child: Image.network(
                        "https://th.bing.com/th/id/OIP.wMbONVEVUpx8NMWzUwsLVgHaF7?w=228&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    "Leafboard",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Work without limits",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 50),
                    child: Text(
                      "Your email address",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: _email,
                  decoration: InputDecoration(
                      labelText: "dilerragip@gmail.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25))),
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0, top: 24),
                    child: Text(
                      "Choose a password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextFormField(
                  controller: _password,
                  decoration: InputDecoration(
                      labelText: "min. 8 characters",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      )),
                  validator: (password) => password!.length < 8
                      ? "Password should contain 8 characters !"
                      : null,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    // _email.text.isNotEmpty && _password.text.isNotEmpty
                    //     ? Navigator.push(context,
                    //         MaterialPageRoute(builder: (_) => HomePageLeaf()))
                    //     : ScaffoldMessenger.of(context).showSnackBar(
                    //         SnackBar(content: Text("Invalid Credentials !")));
                    _formKey.currentState!.validate();
                  },
                  child: Center(
                    child: Text("Continue"),
                  ),
                  style: ButtonStyle(),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(children: [
                Divider(),
                Center(
                    child: SizedBox(
                  width: 15,
                )),
                Center(
                    child: Text(
                  "or",
                  style: TextStyle(color: Colors.grey[400]),
                ))
              ]),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Signup with Google"),
                  icon: Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Signup with Apple"),
                  icon: Icon(
                    Icons.apple,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
