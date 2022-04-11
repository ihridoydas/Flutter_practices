class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "Qualias Cloud Brain",
      desc:
          "Cloud brain is Qualias Software (This IOS and android Application)",
      price: 999,
      color: "#C8C8C8",
      image:
          "https://is5-ssl.mzstatic.com/image/thumb/Purple126/v4/fc/88/eb/fc88eb36-9c46-18d6-8418-74af2c162473/source/512x512bb.jpg",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
