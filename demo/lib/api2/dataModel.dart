class DataModel {
  String? firstName;
  String? lastName;
  String? email;
  String? image;

  DataModel({this.firstName, this.lastName, this.email, this.image});

  static DataModel fromJson(Map<String, dynamic> json) {
    return DataModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        image: json["image"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "image": image
    };
  }
}
