import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Firestoreservices {
  Future? addTask(String task, String description, bool checkBox,
      BuildContext context) async {
    final ref = FirebaseFirestore.instance.collection("tasks");

    return ref.add({
      "Task": task,
      "Description": description,
      "checkbox": checkBox,
    });
  }

  Future? updateTask(String task, String description, String documentID,
      BuildContext context) async {
    final ref = FirebaseFirestore.instance.collection("tasks");

    return ref.doc(documentID).update({
      "Task": task,
      "Description": description,
    });
  }

  Future<void> deleteTask(String documnetId) async {
    final ref = FirebaseFirestore.instance.collection("tasks");
    return ref.doc(documnetId).delete();
  }
}
