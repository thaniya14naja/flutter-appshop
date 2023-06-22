import 'package:flutter/material.dart';

const multiply_pic = 0.85;

class HotDealModel {
  final String pathimg;
  final String topic;
  final String details;

  HotDealModel(this.pathimg, this.topic, this.details);
}

class HotDeal extends StatelessWidget {
  const HotDeal({super.key});

  @override
  Widget build(BuildContext context) {
    double mywidthpicture = MediaQuery.of(context).size.width * multiply_pic;
    double paragraph_length =
        MediaQuery.of(context).size.width * ((1 - multiply_pic) / 2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: paragraph_length),
          child: Text("Hot Deal!!"),
        ),
        _buildblank(d: 5.0),
        Center(
          child: Card(
            child: Container(
              width: mywidthpicture,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset("assets/img/test1.jpg"),
              ),
            ),
          ),
        ),
        _buildblank(d: 5.0),
        Padding(
          padding: EdgeInsets.only(left: paragraph_length),
          child: Text("Topic"),
        ),
        Padding(
          padding: EdgeInsets.only(left: paragraph_length),
          child: Text("Details"),
        ),
        _buildblank(d: 20.0),
      ],
    );
  }

  Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
}
