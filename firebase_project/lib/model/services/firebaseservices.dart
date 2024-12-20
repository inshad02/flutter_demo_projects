import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/utils/custom.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Firebaseservices {
  final auth = FirebaseAuth.instance;

  //sign in
  Future<UserCredential?> singIn(
      String email, String pass, BuildContext context) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: pass);
      customSnackbar(context, 'Login Successful');
    } catch (e) {
      customSnackbar(context, 'Something wrong');
    }
    return null;
  }

  //signup
  Future<UserCredential?> singUp(
      String email, String pass, BuildContext context) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: pass);
      customSnackbar(context, 'Register Successful');
    } catch (e) {
      customSnackbar(context, 'Something wrong');
    }
    return null;
  }

  //googlesignin
  Future<UserCredential?> googleSignin(BuildContext context) async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? userAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: userAuth?.accessToken, idToken: userAuth?.idToken);

      return auth.signInWithCredential(credential);
    } catch (e) {
      customSnackbar(context, 'something wrong');
    }
    return null;
  }

  //signout
  Future<void> sigOut() async {
    await auth.signOut();
  }
}

//add data
class FirestoreServices {
  final uid = FirebaseAuth.instance.currentUser?.uid ?? '';
  Future<DocumentReference<Map<String, dynamic>>> createdata(
      String name, String age) async {
    final ref = FirebaseFirestore.instance
        .collection("user")
        .doc(uid)
        .collection('userData');

    return ref.add({
      'name': name,
      'age': age,
    });
  }

  //update data
  Future<void> updatedata(String name, String age, String documentId) async {
    final ref = FirebaseFirestore.instance
        .collection("user")
        .doc(uid)
        .collection('userData');

    return ref.doc(documentId).update({
      'name': name,
      'age': age,
    });
  }

  //deletedata
  Future<void> deletedata(String documentId) async {
    final ref = FirebaseFirestore.instance
        .collection("user")
        .doc(uid)
        .collection('userData');

    return ref.doc(documentId).delete();
  }
}
