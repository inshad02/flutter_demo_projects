import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:machine_test/utils/custom.dart';

class Firebaseauthservices {
  final auth = FirebaseAuth.instance;

  Future<UserCredential?> signIn(
      String email, String password, BuildContext context) async {
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (context.mounted) {
        customSnackbar(context, "Login Succesful");
      }
      return userCredential;
    } catch (e) {
      customSnackbar(context, "Someting Wrong");
    }
    return null;
  }

  Future<UserCredential?> signUp(
      String email, String password, BuildContext context) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      customSnackbar(context, "Account created succesfully");

      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      customSnackbar(context, "Something wrong");
    }
    return null;
  }

  Future<void> signOut() async {
    await auth.signOut();
  }
}
