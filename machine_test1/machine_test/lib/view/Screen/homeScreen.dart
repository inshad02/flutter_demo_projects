import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machine_test/model/firebaseauth.dart';
import 'package:machine_test/model/home_controller.dart';
import 'package:machine_test/utils/custom.dart';

import '../../main.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final user = FirebaseAuth.instance.currentUser;
  final HomeController controller = Get.put(HomeController());

  String query = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hii ${user?.email}",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () async {
                Firebaseauthservices().signOut();
              },
              icon: Icon(Icons.exit_to_app))
        ],
        toolbarHeight: mq.height * 0.05,
        backgroundColor: const Color.fromARGB(255, 23, 43, 77),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        query = value;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Search students...",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    controller.sortStudentsAscending();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 23, 43, 77),
                  ),
                  child: const Text(
                    "Sort",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              final filteredStudents = query.isEmpty
                  ? controller.students
                  : controller.students
                      .where((student) => student.name!
                          .toLowerCase()
                          .contains(query.toLowerCase()))
                      .toList();

              return ListView.builder(
                itemCount: filteredStudents.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        filteredStudents[index].name!,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(filteredStudents[index].stack!),
                      trailing: IconButton(
                          onPressed: () {
                            controller.deleteStudent(index);
                          },
                          icon: Icon(Icons.delete)),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Add Student"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomTextField(
                      controller: controller.namecon,
                      label: "Name",
                      prefixIcon: Icons.person,
                    ),
                    CustomTextField(
                      controller: controller.stackcon,
                      label: "Stack",
                      prefixIcon: Icons.stacked_bar_chart,
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      controller.addStudent(
                        controller.namecon.text,
                        controller.stackcon.text,
                      );
                      Navigator.pop(context);
                    },
                    child: const Text("Submit"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
