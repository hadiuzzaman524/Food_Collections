import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'secondscreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.category),
                    Text('Category'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.star),
                    Text('Favorite'),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Icon(Icons.leaderboard),
                    Text('Interesting'),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstPage(),
            SecondPage(),
            FirstPage(),
          ],
        ),
      ),
    );
  }
}
