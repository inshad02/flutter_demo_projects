// import 'package:demo/customWidget&animation/animationPage.dart';
import 'package:demo/customWidget&animation/customWidgets.dart';
import 'package:demo/customWidget&animation/homePage.dart';
import 'package:flutter/material.dart';

class CustomLogin extends StatefulWidget {
  const CustomLogin({super.key});

  @override
  State<CustomLogin> createState() => _CustomLoginState();
}

class _CustomLoginState extends State<CustomLogin> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  final formKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Form(
        key: formKey,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(35)),
            height: 350,
            width: 380,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hy Welcome Back !!!",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: CustomFormField(
                        hinttext: "User name",
                        controller: namecontroller,
                        validator: (val) {
                          final emailRegExp =
                              RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                          if (namecontroller.text.isEmpty) {
                            return 'enter a username';
                          } else if (emailRegExp.hasMatch(val.toString())) {
                            return 'enter a valid username';
                          }
                          return '';
                        }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: 350,
                    child: CustomFormField(
                        hinttext: "Password",
                        controller: passwordcontroller,
                        validator: (val) {
                          final passwordRegExp = RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
                          if (namecontroller.text.isEmpty) {
                            return 'enter a username';
                          } else if (passwordRegExp.hasMatch(val.toString())) {
                            return 'enter a valid password';
                          }
                          return '';
                        }),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 350,
                    height: 55,
                    child: CustomButton(
                        text: "Login",
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (_) => HomePaage()));
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
