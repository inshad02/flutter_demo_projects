import 'dart:convert';
import 'dart:math';
import 'package:demo/api3/model/userModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Usercontroller extends GetxController {
  var users = <UsermodelApi>[].obs;

  getUser() async {
    Uri url = Uri.parse("https://crud-backend-6t6r.onrender.com/api/get");
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var data = List<UsermodelApi>.from(
          jsonDecode(res.body).map((e) => UsermodelApi.fromJson(e))).toList();
      if (data != null) {
        users.value = data;
      }
    }
  }

  addUser(UsermodelApi model) async {
    Uri url = Uri.parse("https://crud-backend-6t6r.onrender.com/api/post");

    try {
      var res = await http.post(
        url,
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(UsermodelApi().toJson()),
      );

      if (res.statusCode == 201 || res.statusCode == 200) {
        var body = await jsonDecode(res.body);
        var newUser = UsermodelApi.fromJson(body);
        users.add(model);
        print("Request: title=${model.title}, desc=${model.description}");
        print("Response Status Code: ${res.statusCode}");
        print("Response Body: ${res.body}");

        Get.snackbar("Success", "User added successfully!");
      } else {
        Get.snackbar("Error", "Failed to add user. Status: ${res.statusCode}");
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "An error occurred: $e",
      );
      print("Error: $e");
    }
  }

  // updateUser(
  //   UsermodelApi model,
  // ) async {
  //   try {
  //     Uri url = Uri.parse(
  //         "https://crud-backend-6t6r.onrender.com/api/update/${model.id}");
  //     var res = await http.put(url,
  //         headers: {'Content-Type': 'application/json'},
  //         body: jsonEncode(UsermodelApi().toJson()));
  //     if (res.statusCode == 201 || res.statusCode == 200) {
  //       var body = jsonDecode(res.body);
  //       var updatedUser = UsermodelApi.fromJson(body);

  //       var uid = users.indexWhere((element) => element.id == model.id);
  //       users[uid] = updatedUser;

  //       print("Request: title=${model.title}, desc=${model.description}");
  //       print("Response Status Code: ${res.statusCode}");
  //       print("Response Body: ${res.body}");

  //       Get.snackbar("Success", "User added successfully!");
  //     } else {
  //       Get.snackbar("Error", "Failed to add user. Status: ${res.statusCode}");
  //     }
  //   } catch (e) {
  //     Get.snackbar(
  //       "Error",
  //       "An error occurred: $e",
  //     );
  //     print("Error: $e");
  //   }
  // }

  updateUser(String title, String desc, String id) async {
    try {
      Uri url =
          Uri.parse("https://crud-backend-6t6r.onrender.com/api/update/$id");
      var res = await http.put(
        url,
        // headers: {'Content-Type': 'application/json'},
        body: {
          "title": title,
          "description": desc,
        },
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        var body = await jsonDecode(res.body);

        if (body != null) {
          var uid = users.indexWhere((element) => element.id == id);
          if (uid != -1) {
            users[uid] = UsermodelApi(title: title, description: desc);
          }
        }

        // Update the local list with the updated user

        print("Response Status Code: ${res.statusCode}");
        print("Response Body: ${res.body}");

        Get.snackbar("Success", "User updated successfully!");
      } else {
        Get.snackbar(
            "Error", "Failed to update user. Status: ${res.statusCode}");
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "An error occurred: $e",
      );
      print("Error: $e");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getUser();
    super.onInit();
  }
}
