import 'package:flutter/material.dart';
import 'package:food_collection/models/food_item.dart';
import 'favoritescreen.dart';
import 'mainpage.dart';
import 'package:food_collection/drawerlayout.dart';

class HomePage extends StatefulWidget {
  List<Meal> favoriteL;

  HomePage({this.favoriteL});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> newList = [];

  int mainIndex = 0;

  changepage(index) {
    setState(() {
      mainIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    newList = [
      MainPage(),
      Favorite(
        favoriteList: widget.favoriteL,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Self Cooking'),
          centerTitle: true,
        ),
        drawer: DrawerLayout(),
        body: newList[mainIndex],
        bottomNavigationBar: buildBottomNavigationBar,
      ),
    );
  }

  BottomNavigationBar get buildBottomNavigationBar {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.shifting,
      currentIndex: mainIndex,
      onTap: changepage,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorite',
            backgroundColor: Colors.blue),
      ],
    );
  }
}
