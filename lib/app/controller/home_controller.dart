import 'package:appshop/app/models/Carousel_model.dart';
import 'package:appshop/app/models/catrgorybarmodel.dart';
import 'package:appshop/app/models/home_model.dart';
import 'package:appshop/app/models/hotdeal_model.dart';
import 'package:appshop/app/models/recommend_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt test = 3.obs;

  HomeModel getdummyData() {
    return dummydata;
  }
}

//dummy data
String pathimg1 =
    "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif";
String pathimg2 = "assets/img/test1.jpg";

HomeModel dummydata = HomeModel(
  carouselList: [
    CarouselModel(pathimg: pathimg1, routepath: null),
    CarouselModel(pathimg: pathimg1, routepath: null),
    CarouselModel(pathimg: pathimg1, routepath: null),
    CarouselModel(pathimg: pathimg1, routepath: null),
    CarouselModel(pathimg: pathimg1, routepath: null),
    CarouselModel(pathimg: pathimg1, routepath: null),
    CarouselModel(pathimg: pathimg1, routepath: null),
  ],
  categorylist: [
    CategoryBarModel(
      name: "A",
      icon: Icons.abc_sharp,
      color: Colors.brown,
      routepath: null,
    ),
    CategoryBarModel(
      name: "B",
      icon: Icons.access_alarm_outlined,
      color: Colors.brown,
      routepath: null,
    ),
    CategoryBarModel(
      name: "C",
      icon: Icons.access_time,
      color: Colors.brown,
      routepath: null,
    ),
  ],
  recommendModel: RecommendModel(maxItem: 6, items: [
    Item(pathImg: pathimg2, name: "1", price: "1000", routepath: null),
    Item(pathImg: pathimg2, name: "1", price: "1000", routepath: null),
    Item(pathImg: pathimg2, name: "1", price: "1000", routepath: null),
    Item(pathImg: pathimg2, name: "1", price: "1000", routepath: null),
  ]),
  hotDealModel: HotDealModel(
      pathimg: pathimg1,
      topic: "HotDeails",
      details: "Detail Hotdeal",
      routepath: null),
);
