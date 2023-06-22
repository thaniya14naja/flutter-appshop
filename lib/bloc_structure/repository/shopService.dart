import 'package:appshop/bloc_structure/repository/model/category.dart';
import 'package:appshop/bloc_structure/repository/model/category_bar.dart';
import 'package:flutter/material.dart';

class ShopService {
  Future<List<CategoryBarModel>> getDummyCatagory() async {
    return [
      CategoryBarModel(
          color: Colors.white, icon: Icons.abc_outlined, name: "Hello"),
      CategoryBarModel(
          color: Colors.white, icon: Icons.abc_outlined, name: "Goodbye"),
      CategoryBarModel(
          color: Colors.white, icon: Icons.abc_outlined, name: "Hello"),
    ];
  }
}
