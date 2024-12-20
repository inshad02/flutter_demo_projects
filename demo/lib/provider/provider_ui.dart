import 'package:demo/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderUi extends StatelessWidget {
  ProviderUi({super.key});

  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<ProviderModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("User Management"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addUpdateDialog(context, 'Add User', 'add', () {
            Navigator.pop(context);

            userProvider.addUser(UserModel(
                id: DateTime.now().toString(), name: _nameController.text));
          });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: userProvider.users.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(userProvider.users[index].name),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        _nameController.text = userProvider.users[index].name;
                        addUpdateDialog(context, 'Update User', 'update', () {
                          Navigator.pop(context);
                          userProvider.updateUser(userProvider.users[index].id,
                              _nameController.text);
                        });
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () {
                        userProvider.deleteUser(userProvider.users[index].id);
                      },
                      icon: Icon(Icons.delete)),
                ],
              ),
            );
          }),
    );
  }

  void addUpdateDialog(
      BuildContext context, String title, String status, Function() onpress) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text(title),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Do you want to $status user ?'),
                  TextFormField(
                    controller: _nameController,
                  ),
                ],
              ),
              actions: [
                TextButton(onPressed: onpress, child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("No")),
              ],
            ));
  }
}
