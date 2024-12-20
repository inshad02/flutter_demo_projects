import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Firestoreservices {
  Future? sendMessage(String message) async {
    final ref = FirebaseFirestore.instance.collection("chats");
    return ref.add(
        {"message": message, "user": FirebaseAuth.instance.currentUser?.email});
  }

  Future? deleteMessage(String documentId) async {
    final ref = FirebaseFirestore.instance.collection("chats");
    return ref.doc(documentId).delete();
  }
}
