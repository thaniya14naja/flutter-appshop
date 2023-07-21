import 'package:appshopdemo/app/page/home/home.dart';
import 'package:flutter/material.dart';

class MyMobileView extends StatelessWidget {
  const MyMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 133, 133, 133),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.height * 9 / 16,
          height: double.infinity,
          child: HomePage(),
        ),
      ),
    );
  }
}
