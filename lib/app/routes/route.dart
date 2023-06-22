import 'package:appshop/app/page/home/home.dart';
import 'package:appshop/app/page/product/productPage.dart';
import 'package:appshop/app/page/recommend/recommendPage.dart';

import 'package:get/get.dart';

List<GetPage> myroutes = [
  GetPage(
    name: '/home',
    page: () => HomePage(),
  ),
  GetPage(
    name: '/recommendItem',
    page: () => RecommendPage(),
  ),
  GetPage(
    name: '/product',
    page: () => ProductPage(),
  ),
];
