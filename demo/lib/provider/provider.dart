import 'package:flutter/material.dart';

class ProviderModel extends ChangeNotifier {
  List<UserModel> _users = [];

  List<UserModel> get users => _users;

  void addUser(UserModel user) {
    _users.add(user);
    notifyListeners();
  }

  void updateUser(String id, String newName) {
    final checkId = _users.indexWhere((uname) => uname.id == id);
    _users[checkId] = UserModel(id: id, name: newName);
    notifyListeners();
  }

  void deleteUser(String id) {
    _users.removeWhere((uname) => uname.id == id);
    notifyListeners();
  }
}

class UserModel {
  String id;
  String name;
  UserModel({required this.id, required this.name});
}
