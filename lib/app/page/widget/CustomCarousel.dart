// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:appshop/app/models/Carousel_model.dart';

class CustomCarousel extends StatefulWidget {
  final List<CarouselModel> data;

  const CustomCarousel({
    Key? key,
    required this.data,
  }) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _CustomCarousel(data: data);
  }
}

class _CustomCarousel extends State<CustomCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<CarouselModel> data;
  _CustomCarousel({required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          child: CarouselSlider(
            items: _buildtest(context, data),
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                //height : widget.myheight,
                height: 150,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
      ),
      Positioned(
        bottom: 5,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: data.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ),
    ]);
  }

  List<Widget> _buildtest(BuildContext context, List<CarouselModel> data) {
    List<int> mylist = [0, 1, 2, 3];
    List<Color> mycolor = [
      Colors.blue,
      Colors.purple,
      Colors.pink,
      Colors.amber,
    ];

    return data
        .map(
          (e) => Container(
            //color: mycolor[e],
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.7,
                image: NetworkImage(
                  e.pathimg,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Text("hello"),
            ),
          ),
        )
        .toList();
  }
}
