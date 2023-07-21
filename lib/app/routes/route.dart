import 'package:appshopdemo/app/page/home/home.dart';
import 'package:appshopdemo/app/page/product/productPage.dart';
import 'package:appshopdemo/app/page/recommend/recommendPage.dart';
import 'package:appshopdemo/app/page/showMobile/mobileview.dart';
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
  GetPage(
      name: '/mobileview',
      page: () => MyMobileView()), //edit mobile viewsize in recommend
];
