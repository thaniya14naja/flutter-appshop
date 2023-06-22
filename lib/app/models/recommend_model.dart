class RecommendModel {
  int maxItem;
  List<Item>? items;
  RecommendModel({
    required this.maxItem,
    required this.items,
  });
}

class Item {
  final String pathImg;
  final String name;
  final String price;
  final String? routepath;

  Item(
      {required this.pathImg,
      required this.name,
      required this.price,
      required this.routepath});
}
