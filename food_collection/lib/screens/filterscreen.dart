import 'package:flutter/material.dart';
import 'package:food_collection/drawerlayout.dart';

class FilterScreen extends StatefulWidget {
  static const routeName='FilterScreen';
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        body: Container(
          child: Text('filter'),
        ),
        drawer: DrawerLayout(),
      ),

    );
  }


}
