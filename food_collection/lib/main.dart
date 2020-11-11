import 'package:flutter/material.dart';
import 'package:food_collection/screens/mainpage.dart';
import './screens/homepage.dart';
import './screens/category_screen.dart';
import './screens/details_screen.dart';
import './screens/filterscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        CategoryScreen.routeName: (context) => CategoryScreen(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
        MainPage.routeName: (context) => MainPage(),
        FilterScreen.routeName: (context) => FilterScreen(),
      },
    );
  }
}
