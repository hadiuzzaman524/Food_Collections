import 'package:flutter/material.dart';
import 'package:food_collection/models/food_data.dart';
import 'package:food_collection/models/food_item.dart';
import 'package:food_collection/screens/mainpage.dart';
import './screens/homepage.dart';
import './screens/category_screen.dart';
import './screens/details_screen.dart';
import './screens/filterscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<Meal> favoriteList = [];

  getFav(String id) {
    final index = DUMMY_MEALS.indexWhere((element) {
      return element.id == id;
    });
    favoriteList.add(DUMMY_MEALS[index]);
    print(favoriteList.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
              favoriteL: favoriteList,
            ),
        CategoryScreen.routeName: (context) => CategoryScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen(
              getFavorite: getFav,
            ),
        MainPage.routeName: (context) => MainPage(),
        FilterScreen.routeName: (context) => FilterScreen(),
      },
    );
  }
}
