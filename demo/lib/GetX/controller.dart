import 'package:demo/GetX/model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProfileController extends GetxController {
  var users = <Profile>[].obs;

  void addUser(String id, String name, String email) {
    users.add(Profile(name: name, email: email, id: id));
  }

  // void updateUser(String id, String name, String email) {
  //   if (id < users.length) {
  //     users[id] = Profile(name: name, email: email, id: id);
  //   }
  // }

  void updateUser(String id, String name, String email) {
    final index = users.indexWhere((i) => i.id == id);
    users[index] = Profile(name: name, email: email, id: id);
  }

  void deleteUser(String id) {
    // if (id < users.length) {
    //   users.removeAt(id);
    // }
    users.removeWhere((i) => i.id == id);
  }
}
