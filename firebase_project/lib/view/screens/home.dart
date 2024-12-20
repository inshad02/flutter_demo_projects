import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project/model/services/firebaseservices.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final user = FirebaseAuth.instance.currentUser;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final uid = FirebaseAuth.instance.currentUser?.uid ?? '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Welcome,\n ${user!.email}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () async {
              await Firebaseservices().sigOut();
            },
            child: const Icon(Icons.logout),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () async {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Add Details"),
                      content: Form(
                        key: formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              child: TextFormField(
                                controller: namecontroller,
                                validator: (value) {
                                  if (namecontroller.text.isEmpty) {
                                    return "Invalid input";
                                  } else {
                                    return null;
                                  }
                                },
                                decoration: InputDecoration(
                                    label: const Text("Name"),
                                    hintText: "Enter your name",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: TextFormField(
                                controller: agecontroller,
                                validator: (value) {
                                  if (agecontroller.text.isEmpty) {
                                    return "Invalid input";
                                  } else {
                                    return null;
                                  }
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    label: const Text("Age"),
                                    hintText: "Enter your name",
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel")),
                        TextButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                await FirestoreServices().createdata(
                                    namecontroller.text, agecontroller.text);
                                namecontroller.clear();
                                agecontroller.clear();

                                Navigator.pop(context);
                              }
                            },
                            child: const Text("Submit"))
                      ],
                    );
                  });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("user")
              .doc(uid)
              .collection("userData")
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
                child: Text("no data found"),
              );
            }

            return Center(
              child: ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(docs[index]["name"]),
                      subtitle: Text(docs[index]["age"].toString()),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                namecontroller.text =
                                    docs[index]['name'].toString();
                                agecontroller.text =
                                    docs[index]['age'].toString();
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text("Add Details"),
                                        content: Form(
                                          key: formKey,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                child: TextFormField(
                                                  controller: namecontroller,
                                                  validator: (value) {
                                                    if (namecontroller
                                                        .text.isEmpty) {
                                                      return "Invalid input";
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  decoration: InputDecoration(
                                                      label: const Text("Name"),
                                                      hintText:
                                                          "Enter your name",
                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              SizedBox(
                                                child: TextFormField(
                                                  controller: agecontroller,
                                                  validator: (value) {
                                                    if (agecontroller
                                                        .text.isEmpty) {
                                                      return "Invalid input";
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  keyboardType:
                                                      TextInputType.number,
                                                  decoration: InputDecoration(
                                                      label: const Text("Age"),
                                                      hintText:
                                                          "Enter your name",
                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("Cancel")),
                                          TextButton(
                                              onPressed: () async {
                                                if (formKey.currentState!
                                                    .validate()) {
                                                  await FirestoreServices()
                                                      .updatedata(
                                                          namecontroller.text,
                                                          agecontroller.text,
                                                          docs[index].id);
                                                  namecontroller.clear();
                                                  agecontroller.clear();

                                                  Navigator.pop(context);
                                                }
                                              },
                                              child: const Text("Submit"))
                                        ],
                                      );
                                    });
                              },
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () async {
                                await FirestoreServices()
                                    .deletedata(docs[index].id);
                              },
                              icon: const Icon(Icons.delete))
                        ],
                      ),
                    );
                  }),
            );
          }),
    );
  }
}
