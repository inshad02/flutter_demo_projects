class Profile {
  final String? id;
  final String? email;
  final String? name;

  Profile({this.email, this.name, this.id});

  static Profile fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        email: json["email"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "name": name,
      };
}
