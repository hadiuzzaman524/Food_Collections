import 'package:flutter/material.dart';
import 'package:food_collection/models/category.dart';
import 'package:food_collection/models/food_data.dart';
import '../models/category_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Food Collections'),
          centerTitle: true,
        ),
        body: GridView(
          /*
          => Here Sliver indicate Scrollable area
          => GridDelegate focus on Structure on grid layout
          => and WithCrossAxisExtent configure with maximum width of axis.

          finally total things is-> SliverGridDelegateWithMaxCrossAxisExtent
           */
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 3 / 2,
          ),
          children: [
            ...DUMMY_CATEGORIES.map((e) {
              return CategoryItem(
                title: e.title,
                color: e.color,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
