import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final title;
  final color;

  CategoryItem({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Text(title),
    );
  }
}
