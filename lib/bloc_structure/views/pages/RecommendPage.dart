import 'package:appshop/bloc_structure/views/widget/AppbarSearch_widget/CustomAppbar.dart';
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
  Item(pathImg: "assets/img/test1.jpg", name: "1", price: "3000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "2", price: "4000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "3", price: "5000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "1", price: "3000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "2", price: "4000 THB"),
  Item(pathImg: "assets/img/test1.jpg", name: "3", price: "5000 THB"),
];

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context) {
    double mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          AppbarwithSearch(),
          _buildblank(d: 10.0),
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              //color: Colors.red,
              child: GridView.builder(
                  itemCount: dummydata.items.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, num) {
                    return Card(
                        elevation: 5,
                        child: Container(
                          width: mywidth * 0.4,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child:
                                    Image.asset(dummydata.items[num].pathImg),
                              ),
                              Text(dummydata.items[num].name),
                              Text(dummydata.items[num].price)
                            ],
                          ),
                        ));
                  }),
            ),
          )
        ],
      ),
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}
