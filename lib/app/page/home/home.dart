import 'package:appshop/app/controller/home_controller.dart';
import 'package:appshop/app/page/widget/CategoryBar.dart';
import 'package:appshop/app/page/widget/CustomAppbar.dart';
import 'package:appshop/app/page/widget/CustomCarousel.dart';
import 'package:appshop/app/page/widget/recommend_widget.dart';
import 'package:appshop/bloc_structure/views/widget/Hotdeal_widget/Hotdeal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        final data = controller.getdummyData();
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                AppbarwithSearch(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CustomCarousel(
                    data: data.carouselList,
                  ),
                ),
                CategoryBar(
                  listCategory: data.categorylist,
                ),
                RecommendList(),
                HotDeal(),
              ],
            ),
          ),
        );
      },
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}
