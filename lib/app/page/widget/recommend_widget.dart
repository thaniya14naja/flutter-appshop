// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Item {
  String pathImg;
  String name;
  String price;
  Item({
    required this.pathImg,
    required this.name,
    required this.price,
  });
}

class RecommendModel {
  int maxItem;
  List<Item> items;
  RecommendModel({
    required this.maxItem,
    required this.items,
  });
}

RecommendModel dummydata = RecommendModel(maxItem: 2, items: myitems);

List<Item> myitems = [
  Item(pathImg: "assets/img/test1.jpg", name: "1", price: "3000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "2", price: "4000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "3", price: "5000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "1", price: "3000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "2", price: "4000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "3", price: "5000 THB"),
];

class RecommendItems extends StatelessWidget {
  const RecommendItems({super.key});

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;
    return _buildRecommendItems(mywidth);
  }
}

class RecommendList extends StatelessWidget {
  const RecommendList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.height * 9 / 16;
    //print('my width is ${mywidth}');
    //print(mywidth);
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /*Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Card(
                elevation: 20,
                child: Padding(
                    padding: EdgeInsets.all(20.0), child: Text("Recommend"))),
            Text("View All"),
          ],
        ),*/
        Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Recommend"),
          ),
        ),
        _buildblank(d: 10.0),
        _buildRecommendItems(mywidth),
        _buildblank(d: 10.0),
      ],
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}

Column _buildRecommendItems(double mywidth) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    children: _buildItems(dummydata, mywidth),
  );
}

List<Row> _buildItems(RecommendModel mymodel, double mywidth) {
  List<Row> mylist = [];
  //print(mymodel.items.length);
  for (var i = 0; i < mymodel.items.length; i += 2) {
    if (i == mymodel.items.length - 1) {
      mylist.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCard(mywidth, mymodel.items[i]),
          _buildCardEmpty(mywidth),
        ],
      ));
    } else {
      mylist.add(Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildCard(mywidth, mymodel.items[i]),
          _buildCard(mywidth, mymodel.items[i + 1]),
        ],
      ));
    }
  }
  return mylist;
}

Card _buildCard(double mywidth, Item item) {
  return Card(
    elevation: 5,
    child: Container(
      width: mywidth * 0.4,
      // padding: EdgeInsets.all(10.0),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Image.asset(item.pathImg),
              ),
              Text(item.name),
              Text(
                item.price,
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Container _buildCardEmpty(double mywidth) {
  return Container(
    width: mywidth * 0.4,
    child: AspectRatio(
      aspectRatio: 2 / 3,
      child: Column(
        children: [],
      ),
    ),
  );
}
