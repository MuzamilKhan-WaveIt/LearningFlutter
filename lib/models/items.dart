class CategoryModel {
  static final Items = [
    item(
        id: "1",
        name: "Mouse",
        descr: "New Mouse",
        price: 300,
        color: "black",
        image:
            "https://upload.wikimedia.org/wikipedia/commons/2/22/3-Tasten-Maus_Microsoft.jpg"),
  ];
}

class item {
  final String id;
  final String name;
  final String descr;
  final int price;
  final String color;
  final String image;

  item(
      {this.id = "",
      this.name = "",
      this.descr = "",
      this.price = 0,
      this.color = "",
      this.image = ""});
}
