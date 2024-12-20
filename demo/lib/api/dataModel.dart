class DataModel {
  int? id;
  String? title;
  double? price;

  DataModel({this.id, this.price, this.title});

  static DataModel fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"], title: json["title"], price: json["price"] as double);
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "title": title, "price": price};
  }
}

class Rating {
  double? rate;
  int? count;
  Rating({required this.count, required this.rate});

  static Rating fromJson(Map<String,dynamic> json) {
    return Rating(rate: json["rate"], count: json["count"]);
  }

  Map<String,dynamic> toJson(){
    return{"rate":rate, "count":count};
  }
}
