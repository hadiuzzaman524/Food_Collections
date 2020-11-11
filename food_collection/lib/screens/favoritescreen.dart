import 'package:flutter/material.dart';
import 'package:food_collection/models/food_card_style.dart';
import 'package:food_collection/models/food_item.dart';

class Favorite extends StatefulWidget {
  List<Meal> favoriteList;

  Favorite({this.favoriteList});

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.favoriteList.length > 0
          ? ListView.builder(
              itemBuilder: (ctx, index) {
                final list = widget.favoriteList[index];
                return FoodCard(
                  id: list.id,
                  title: list.title,
                  url: list.imageUrl,
                  complexity: list.complexity,
                  affordability: list.affordability,
                  duration: list.duration,
                );
              },
              itemCount: widget.favoriteList.length,
            )
          : Center(
              child: Text('No Favorite Item Added..!'),
            ),
    );
  }
}
