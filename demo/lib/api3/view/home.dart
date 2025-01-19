import 'package:demo/api3/model/userModel.dart';
import 'package:demo/api3/view_model/getXcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class Homeapi3 extends StatelessWidget {
  Homeapi3({super.key});

  final controller = Get.put(Usercontroller());
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Center(
          child: ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    title: Text(controller.users[index].title.toString()),
                    subtitle:
                        Text(controller.users[index].description.toString()),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Update user'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    controller: title
                                      ..text =
                                          controller.users[index].title ?? '',
                                    decoration: InputDecoration(
                                      label: Text("Title"),
                                    ),
                                  ),
                                  TextFormField(
                                    controller: description
                                      ..text =
                                          controller.users[index].description ??
                                              '',
                                    decoration: InputDecoration(
                                      label: Text("Description"),
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("Cancel"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    controller.updateUser(
                                      title.text,
                                      description.text,
                                      controller.users[index].id.toString(),
                                    );
                                    title.clear();
                                    description.clear();
                                    Navigator.pop(context);
                                  },
                                  child: Text("Submit"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.edit),
                    )),
              );
            },
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Add user'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: title,
                          decoration: InputDecoration(
                            label: Text("Title"),
                          ),
                        ),
                        TextFormField(
                          controller: description,
                          decoration: InputDecoration(
                            label: Text("Description"),
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel")),
                      TextButton(
                          onPressed: () {
                            controller.addUser(UsermodelApi(
                                title: title.text,
                                description: description.text));
                            Navigator.pop(context);
                          },
                          child: Text("Submit"))
                    ],
                  );
                });
          }),
    );
  }
}
