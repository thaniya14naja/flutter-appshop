import 'package:appshop/bloc_structure/repository/model/category.dart';
import 'package:appshop/bloc_structure/repository/model/category_bar.dart';
import 'package:appshop/bloc_structure/repository/shopService.dart';

class ShopRepository {
  final ShopService service;

  ShopRepository({required this.service});

  Future<List<CategoryBarModel>> getDummyCategory() async =>
      service.getDummyCatagory();
}
