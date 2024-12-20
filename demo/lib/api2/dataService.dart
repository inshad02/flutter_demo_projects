import 'dart:convert';

import 'package:demo/api2/dataModel.dart';
import 'package:http/http.dart' as http;

class DataService {
  var url = "https://dummyjson.com/users";

  Future<List<DataModel>?> getMethod() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var body = await json.decode(response.body);
      print(response.body);

      var data = body["users"];

      List<DataModel> users = [];

      for (var i in data) {
        users.add(DataModel.fromJson(i));
      }
      return users;
    } else {
      return null;
    }
  }
}
