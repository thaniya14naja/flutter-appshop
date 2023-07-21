// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:appshopdemo/app/models/Carousel_model.dart';
import 'package:appshopdemo/app/models/catrgorybarmodel.dart';
import 'package:appshopdemo/app/models/hotdeal_model.dart';
import 'package:appshopdemo/app/models/recommend_model.dart';

class HomeModel {
  final List<CarouselModel> carouselList;
  final List<CategoryBarModel>? categorylist;
  final RecommendModel recommendModel;
  final HotDealModel? hotDealModel;

  HomeModel(
      {required this.carouselList,
      required this.categorylist,
      required this.recommendModel,
      required this.hotDealModel});
}
