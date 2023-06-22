import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/img/test1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 200,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "NAME ITEM",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  //color: Colors.amber[100],
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text(
                        "3000",
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                      ),
                      Text("2400 THB"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text("Brand : ABC"),
                      RatingBar(
                          initialRating: 3.5,
                          allowHalfRating: true,
                          ratingWidget: RatingWidget(
                            full: Icon(Icons.star_rounded),
                            half: Icon(Icons.star_half_rounded),
                            empty: Icon(Icons.star_border),
                          ),
                          onRatingUpdate: (_) {})
                    ],
                  ),
                ),
                Container(
                  color: Colors.amber[300],
                  height: 150,
                ),
                Container(
                  color: Colors.amber,
                  height: 150,
                ),
                Container(
                  color: Colors.amber[100],
                  height: 150,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
