import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:todo_firebase/main.dart';
import 'package:todo_firebase/model/firestoreServices.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List<bool> value = [false, true];
  TextEditingController task = TextEditingController();
  TextEditingController description = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade200,
      appBar: AppBar(
        title: const Text(
          "ToDo",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        titleTextStyle:
            const TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          height: mq.height,
          width: mq.width,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  backgroundColor: Colors.deepPurple,
                  title: const Text(
                    "Add a new task ",
                    style: TextStyle(color: Colors.white),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        child: TextFormField(
                          controller: task,
                          validator: (value) {
                            if (task.text.isEmpty) {
                              return "Please enter enter your task";
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              label: Text(
                            "Add your task",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: mq.height * 0.05,
                      ),
                      SizedBox(
                        child: TextFormField(
                          controller: description,
                          decoration: const InputDecoration(
                              label: Text(
                            "Add Description",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            await Firestoreservices().addTask(
                                task.text, description.text, false, context);
                            Navigator.pop(context);
                            task.clear();
                            description.clear();
                          }
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Form(
        key: formKey,
        child: StreamBuilder(
            stream: FirebaseFirestore.instance.collection("tasks").snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final docs = snapshot.data?.docs;
              if (docs == null || docs.isEmpty) {
                return const Center(
                  child: Text("No tasks found"),
                );
              }
              return ListView.builder(
                  itemCount: docs.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      key: ValueKey(docs[index]),
                      secondaryBackground: Card(
                        color: Colors.red[300],
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Align(
                              alignment: Alignment.centerRight,
                              child: Lottie.asset(
                                  'assets/Animation - 1734065195164.json',
                                  width: 100)),
                        ),
                      ),
                      background: Card(
                        color: Colors.deepPurpleAccent,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Lottie.asset(
                                  'assets/Animation - 1734066213058.json',
                                  width: 50)),
                        ),
                      ),
                      confirmDismiss: (direction) async {
                        if (direction == DismissDirection.startToEnd) {
                          task.text = docs[index]["Task"];
                          description.text = docs[index]["Description"];
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: Colors.deepPurple,
                                  title: const Text(
                                    "Update your task task ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  content: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        child: TextFormField(
                                          controller: task,
                                          decoration: const InputDecoration(
                                              label: Text(
                                            "Update your task",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: mq.height * 0.05,
                                      ),
                                      SizedBox(
                                        child: TextFormField(
                                          controller: description,
                                          decoration: const InputDecoration(
                                              label: Text(
                                            "Update Description",
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          Firestoreservices().updateTask(
                                              task.text,
                                              description.text,
                                              docs[index].id,
                                              context);
                                          task.clear();
                                          description.clear();
                                        },
                                        child: const Text(
                                          "Update",
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Cancel",
                                          style: TextStyle(color: Colors.white),
                                        ))
                                  ],
                                );
                              });
                          return false; // This ensures the item is not dismissed and allows for editing.
                        }
                        if (direction == DismissDirection.endToStart) {
                          setState(() {
                            Firestoreservices().deleteTask(docs[index].id);
                          });
                        }
                        return true;
                      },
                      child: Card(
                        color: Colors.deepPurple.shade300,
                        child: ListTile(
                          leading: Checkbox(
                              value: docs[index]["checkbox"],
                              onChanged: (newVal) async {
                                // setState(() {
                                //   value[index] = !value[index];
                                // });
                                await FirebaseFirestore.instance
                                    .collection("tasks")
                                    .doc(docs[index].id)
                                    .update({"checkbox": newVal});
                              }),
                          title: Text(
                            docs[index]["Task"],
                            style: TextStyle(
                              decoration: docs[index]["checkbox"]
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),
                          subtitle: Text(
                            docs[index]["Description"],
                            style: TextStyle(
                              decoration: docs[index]["checkbox"]
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
