import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'secondpage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> newList = [
    FirstPage(),
    SecondPage(),
  ];
  int index;

  currentIndexx(indexx) {
    setState(() {
      index = indexx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MainPage'),
      ),
      body: newList[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: currentIndexx,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            backgroundColor: Colors.purple,
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            backgroundColor: Colors.purple,
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
