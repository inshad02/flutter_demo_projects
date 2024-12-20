import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/view/auth/loginPage.dart';
import 'package:firebase_project/view/screens/home.dart';
import 'package:flutter/material.dart';

class Authgate extends StatelessWidget {
  const Authgate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          return Home();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
