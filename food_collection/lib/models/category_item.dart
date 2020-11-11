import 'package:flutter/material.dart';
import 'package:food_collection/screens/category_screen.dart';

class CategoryItem extends StatelessWidget {
  final title;
  final color;
  final id;

  CategoryItem({this.title, this.color, this.id});

  onItemPress(BuildContext ctx) {
    Navigator.pushNamed(ctx, CategoryScreen.routeName, arguments: {
      'title': title,
      'id': id,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onItemPress(context),
      splashColor: Colors.redAccent,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        ),
        decoration: BoxDecoration(
          color: color,
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
