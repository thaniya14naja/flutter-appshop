import 'package:flutter/material.dart';

class CategoryBarModel {
  final String name;
  final IconData icon;
  final Color color;
  final String? routepath;

  CategoryBarModel(
      {required this.name,
      required this.icon,
      required this.color,
      required this.routepath});
}
