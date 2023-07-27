import 'dart:convert';

class TrendingModel {
  // static List<Item> items;

  static List<Item> items = [
    Item(
      profileImg: "",
      name: "",
      title: "",
      image: "https://picsum.photos/200",
    )
  ];
}

class Item {
  final String profileImg;
  final String name;
  final String title;
  final String image;

  Item({
    required this.profileImg,
    required this.name,
    required this.title,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      profileImg: map["id"],
      name: map["name"],
      title: map["des"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": profileImg,
        "name": name,
        "des": title,
        "image": image,
      };
}
