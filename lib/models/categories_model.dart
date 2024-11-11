import 'package:flutter/material.dart';

class CategoriesModel {
  final String imagePath;
  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  CategoriesModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
    this.onTap,
  });
}
