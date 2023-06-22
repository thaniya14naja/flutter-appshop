import 'package:appshop/bloc_structure/views/widget/AppbarSearch_widget/CustomAppbar.dart';
import 'package:appshop/bloc_structure/views/widget/Carousel_widget/CustomCarousel.dart';
import 'package:appshop/bloc_structure/views/widget/CategoryBar_widget/CategoryBar.dart';
import 'package:appshop/bloc_structure/views/widget/Hotdeal_widget/Hotdeal.dart';
import 'package:appshop/bloc_structure/views/widget/Recommend_widget/recommend_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //BlocProvider.of<ShopBloc>(context).add();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarwithSearch(),
            _buildblank(d: 10.0),
            //CarouselWithIndicatorDemo(),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: CustomCarousel(
                myheight: 0,
                mywidth: 0,
                myurl: [],
              ),
            ),
            _buildblank(d: 10.0),
            //CategoryBar(mylist: state.)
            CategoryBar(),
            RecommendList(),
            HotDeal(),
          ],
        ),
      ),
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}
