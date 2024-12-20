import 'dart:convert';
import 'package:demo/GetX/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileUi extends StatefulWidget {
  ProfileUi({super.key});

  @override
  State<ProfileUi> createState() => _ProfileUiState();
}

class _ProfileUiState extends State<ProfileUi> {
  late SharedPreferences sp;
  final ProfileController profileController = Get.put(ProfileController());
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getSharedPreference();
  }

  // Initialize SharedPreferences
  getSharedPreference() async {
    sp = await SharedPreferences.getInstance();
    await readFromSp();
  }

  Future<void> saveIntoSp() async {
    List<String> userJsonList = profileController.users
        .map((user) => jsonEncode(user.toJson()))
        .toList();
    await sp.setStringList('users', userJsonList);
  }

  Future<void> readFromSp() async {
    List<String>? contactListString = sp.getStringList('users');
    if (contactListString != null) {
      profileController.users.clear(); // Clear existing users before adding new
      for (String user in contactListString) {
        profileController.users.add(json.decode(user));
      }
    }
  }

  void showDialogBox(String title, {int? index}) {
    if (index != null) {
      nameController.text = profileController.users[index].name.toString();
      emailController.text = profileController.users[index].email.toString();
    } else {
      nameController.clear();
      emailController.clear();
    }

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () => Get.back(), child: Text("Cancel")),
                    TextButton(
                        onPressed: () {
                          if (index != null) {
                            profileController.updateUser(
                                profileController.users[index].id.toString(),
                                nameController.text,
                                emailController.text);
                          } else {
                            profileController.addUser(DateTime.now().toString(),
                                nameController.text, emailController.text);
                          }
                          saveIntoSp();
                          Get.back();
                        },
                        child: Text("Confirm"))
                  ],
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Management"),
      ),
      body: Obx(() {
        return profileController.users.isEmpty
            ? Center(child: Text("No Users"))
            : ListView.builder(
                itemCount: profileController.users.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(profileController.users[index].name.toString()),
                    subtitle:
                        Text(profileController.users[index].email.toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () =>
                              showDialogBox("Edit User", index: index),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            profileController.deleteUser(
                                profileController.users[index].id.toString());
                            saveIntoSp();
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialogBox("Add User"),
        child: Icon(Icons.add),
      ),
    );
  }
}
