import 'package:flutter/material.dart';
import 'package:food_collection/models/food_data.dart';
import '../models/category_item.dart';
import '../models/food_card_style.dart';

class CategoryScreen extends StatelessWidget {
  static final routeName = 'CategoryScreen';

  @override
  Widget build(BuildContext context) {
    final argList =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    /*
    when we used Navigator.pushNamed and passing data through arguments:
    then ModalRoute.of(context).settings.arguments return those passing
    value in build function.
     */

    final title = argList['title'];
    final id = argList['id'];
    /*
    filter data using category and make a new list
     */
    final newList = DUMMY_MEALS.where((element) {
      return element.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          final list = newList[index];
          return FoodCard(
            title: list.title,
            url: list.imageUrl,
            complexity: list.complexity,
            affordability: list.affordability,
            duration: list.duration,
          );
        },
        itemCount: newList.length,
      ),
    );
  }
}
