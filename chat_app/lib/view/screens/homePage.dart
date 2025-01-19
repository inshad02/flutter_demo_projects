// import 'package:chat_app/model/firebaseAuthServices.dart';
import 'package:chat_app/model/firebaseAuthServices.dart';
import 'package:chat_app/model/firestoreServices.dart';
import 'package:chat_app/utils/custom.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../main.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final userr = FirebaseAuth.instance.currentUser;
    TextEditingController message = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Firebaseauthservices().signOut();
                },
                icon: const Icon(Icons.exit_to_app))
          ],
          backgroundColor: Colors.transparent,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(20),
                    bottomStart: Radius.circular(20))),
          ),
          title: const Text(
            "Chats",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("chats")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    final docs = snapshot.data?.docs;
                    if (docs == null || docs.isEmpty) {
                      return const Center(
                        child: Text("No chats found"),
                      );
                    }

                    return ListView.builder(
                      reverse: false,
                      padding: const EdgeInsets.all(8),
                      shrinkWrap: true,
                      itemCount: docs.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          key: ValueKey(docs[index]),
                          background: Card(
                              color: Colors.red.shade100,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Lottie.asset(
                                    "assets/Animation - 1734065195164.json"),
                              )),
                          onDismissed: (direction) async {
                            if (direction == DismissDirection.endToStart) {
                              await Firestoreservices()
                                  .deleteMessage(docs[index].id);
                            }
                          },
                          child: Card(
                            child: ListTile(
                              leading: const CircleAvatar(),
                              title: Text(docs[index]['message'].toString()),
                              titleTextStyle: const TextStyle(
                                  fontSize: 18, color: Colors.black),
                              subtitle: Text(docs[index]['user'].toString()),
                            ),
                          ),
                        );
                      },
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: message,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Type a message",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: mq.width * 0.009),
                  IconButton(
                      onPressed: () {
                        Firestoreservices().sendMessage(message.text);
                      },
                      icon: Container(
                          height: 53,
                          width: 53,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(Icons.send)))
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You are logged in to "),
                    Text(
                      "${userr?.email}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
