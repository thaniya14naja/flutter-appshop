import 'package:appshop/app/page/widget/CustomAppbar.dart';
import 'package:appshop/app/page/widget/recommend_widget.dart';
import 'package:flutter/material.dart';

class RecommendPage extends StatelessWidget {
  const RecommendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarwithBackButton(titleText: "Hello"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildblank(d: 10.0),
            RecommendItems(),
          ],
        ),
      ),
    );
  }
}

Padding _buildblank({double d = 20.0}) => Padding(padding: EdgeInsets.all(d));
