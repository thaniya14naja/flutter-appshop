import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  final double myheight;
  final double mywidth;
  final List<String> myurl;

  const CustomCarousel({
    super.key,
    required this.myheight,
    required this.mywidth,
    required this.myurl,
  });
  @override
  State<StatefulWidget> createState() {
    return _CustomCarousel();
  }
}

class _CustomCarousel extends State<CustomCarousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          child: CarouselSlider(
            items: _buildtest(context),
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
          children: [0, 1, 2, 3].asMap().entries.map((entry) {
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

  List<Widget> _buildtest(BuildContext context) {
    List<int> mylist = [0, 1, 2, 3];
    List<Color> mycolor = [
      Colors.blue,
      Colors.purple,
      Colors.pink,
      Colors.amber,
    ];

    return mylist
        .map(
          (e) => Container(
            //color: mycolor[e],
            decoration: const BoxDecoration(
              image: DecorationImage(
                opacity: 0.7,
                image: NetworkImage(
                  "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
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
