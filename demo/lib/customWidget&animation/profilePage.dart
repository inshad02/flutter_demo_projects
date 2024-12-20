import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePaage extends StatefulWidget {
  const ProfilePaage({super.key});

  @override
  State<ProfilePaage> createState() => _ProfilePaageState();
}

class _ProfilePaageState extends State<ProfilePaage> {
  File? _image;
  String groupValue = "";

  Future<void> selectImage(ImageSource source) async {
    final PickedFile = await ImagePicker().pickImage(source: source);
    setState(() {
      if (PickedFile != null) {
        _image = File(PickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 220,
              width: 380,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: _image == null
                                    ? NetworkImage(
                                        "https://th.bing.com/th?id=OIP.GqGVPkLpUlSo5SmeDogUdwHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2")
                                    : FileImage(_image!),
                              ),
                              TextButton(
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text("Options"),
                                            content: Text("Select an option !"),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    selectImage(
                                                        ImageSource.camera);
                                                  },
                                                  child: Text("Camera")),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    selectImage(
                                                        ImageSource.gallery);
                                                  },
                                                  child: Text("Gallery")),
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    setState(() {
                                                      _image = null;
                                                    });
                                                  },
                                                  child: Text(
                                                    "Delete Photo",
                                                    style: TextStyle(
                                                        color: Colors.red),
                                                  )),
                                            ],
                                          );
                                        });
                                  },
                                  child: Text(
                                    'Edit Profile',
                                    style: TextStyle(color: Colors.green),
                                  ))
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Enter Your name and add an \n optional profile picture",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "username",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 140,
              width: 380,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 18),
                        child: Text(
                          "Gender",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                    child: RadioListTile(
                      value: "Male",
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      },
                      title: Text('Male'),
                    ),
                  ),
                  RadioListTile(
                    value: "Female",
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                    title: Text('Female'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
