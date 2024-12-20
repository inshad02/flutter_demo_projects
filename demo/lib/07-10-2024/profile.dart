// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _image;

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
            Stack(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 11, 62, 103)),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 65),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: _image == null
                              ? NetworkImage(
                                  "https://th.bing.com/th/id/OIP.OYbzbbyzogwtriubL2pP0AHaHa?w=202&h=202&c=7&r=0&o=5&dpr=1.3&pid=1.7")
                              : FileImage(
                                  _image!,
                                ),
                        ),
                        Positioned(
                          child: IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Options"),
                                        content: Text(
                                            "Choose a option to  continue"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                selectImage(ImageSource.camera);
                                              },
                                              child: Text("Take photo")),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);

                                                selectImage(
                                                    ImageSource.gallery);
                                              },
                                              child: Text("Choose Photo")),
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
                                              ))
                                        ],
                                      );
                                    });
                              },
                              icon: Icon(
                                Icons.add_a_photo,
                                color: Colors.white,
                              )),
                          bottom: -10,
                          left: 80,
                        )
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Text(
                      "MUHAMMED INSHAD K",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: Text(
                      "+91 9061416397",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
