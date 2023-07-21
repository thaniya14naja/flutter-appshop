import 'package:appshopdemo/app/controller/home_controller.dart';
import 'package:appshopdemo/app/page/widget/CategoryBar.dart';
import 'package:appshopdemo/app/page/widget/CustomAppbar.dart';
import 'package:appshopdemo/app/page/widget/CustomCarousel.dart';
import 'package:appshopdemo/app/page/widget/Hotdeal.dart';
import 'package:appshopdemo/app/page/widget/recommend_widget.dart';
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
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppbarwithSearch(),
                _buildblank(d: 10.0),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: CustomCarousel(
                    data: data.carouselList,
                  ),
                ),
                _buildblank(d: 10.0),
                CategoryBar(
                  listCategory: data.categorylist,
                ),
                _buildblank(d: 10.0),
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
