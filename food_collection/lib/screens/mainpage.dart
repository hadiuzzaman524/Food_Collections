import 'package:flutter/material.dart';
import '../models/food_data.dart';
import '../models/category_item.dart';

class MainPage extends StatelessWidget {
  static const routeName = 'MainPage';

  const MainPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: GridView(
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
                id: e.id,
              );
            }).toList(),
          ],
        ),
    );
  }
}
