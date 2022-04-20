class CategoryModel {
  static List<item> Items = [
    item(
        id: 1,
        name: "Mouse",
        descr: "New Mouse",
        price: 300,
        color: "black",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg"),
  ];
}

class item {
  final int id;
  final String name;
  final String descr;
  final int price;
  final String color;
  final String image;

  item(
      {this.id = 0,
      this.name = "",
      this.descr = "",
      this.price = 0,
      this.color = "",
      this.image = ""});

  factory item.fromMap(Map<String, dynamic> map) {
    return item(
      id: map["id"],
      name: map["name"],
      descr: map["descr"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "descr": descr,
        "price": price,
        "color": color,
        "image": image
      };
}
