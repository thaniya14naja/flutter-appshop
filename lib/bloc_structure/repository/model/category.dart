// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Categorys {
  final List<CategoryModel> categorys;
  Categorys({
    required this.categorys,
  });
}

class CategoryModel {
  final String name;
  final IconData src;
  CategoryModel({
    required this.name,
    required this.src,
  });
}
