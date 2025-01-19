import 'package:flutter/foundation.dart';

class UsermodelApi {
  String? id, title, description;
  UsermodelApi({this.id, this.description, this.title});

  static UsermodelApi fromJson(Map<String, dynamic> json) {
    return UsermodelApi(
        id: json["_id"],
        title: json["title"],
        description: json["description"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "_id": id,
      "title": title,
      "description": description,
    };
  }
}
