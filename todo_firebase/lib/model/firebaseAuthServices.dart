import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_firebase/utils/snackBar.dart';

class Firebaseauthservices {
  final auth = FirebaseAuth.instance;

  Future<UserCredential?> signIn(
      String email, String password, BuildContext context) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      customSnackbar(context, "Login Succesful");
    } catch (e) {
      customSnackbar(context, "Someting wrong");
    }
    return null;
  }

  Future<UserCredential?> signUp(
      String email, String password, BuildContext context) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      customSnackbar(context, "Account created succesfully");
      Navigator.pop(context);
    } catch (e) {
      customSnackbar(context, "Something Wrong");
    }
    return null;
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}
