import 'dart:convert';
import 'package:demo/api/dataModel.dart';
import 'package:http/http.dart' as http;

class DataServices {
  var url = "https://fakestoreapi.com/products";

  Future<List<DataModel>?> getmethod() async {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var body = await jsonDecode(response.body);

      List<DataModel> products = [];

      for (var i in body) {
        products.add(DataModel.fromJson(i));
      }

      return products;

      // return List<DataModel>.from(body.map((i) => DataModel.fromJson(i)));
    } else {
      return null;
    }
  }
}
