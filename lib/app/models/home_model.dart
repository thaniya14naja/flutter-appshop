// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:appshop/app/models/Carousel_model.dart';
import 'package:appshop/app/models/catrgorybarmodel.dart';
import 'package:appshop/app/models/hotdeal_model.dart';
import 'package:appshop/app/models/recommend_model.dart';

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
