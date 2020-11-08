import 'package:flutter/material.dart';
import './screens/homepage.dart';
import './screens/category_screen.dart';

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
      },
    );
  }
}
