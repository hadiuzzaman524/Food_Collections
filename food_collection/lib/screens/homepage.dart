import 'package:flutter/material.dart';
import 'package:food_collection/models/category.dart';
import 'package:food_collection/models/food_data.dart';
import 'package:food_collection/screens/category_screen.dart';
import 'package:food_collection/screens/details_screen.dart';
import '../models/category_item.dart';
import 'favoritescreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> newList=[
    MainPage(),
    Favorite(),
  ];

  int mainIndex = 0;
  changepage(index) {
    setState(() {
      mainIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Food Collections'),
          centerTitle: true,
        ),
        body: newList[mainIndex],
        bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
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
