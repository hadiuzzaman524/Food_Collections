import 'package:flutter/material.dart';
import 'package:food_collection/drawerlayout.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = 'FilterScreen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isGluten = false;
  bool isVegen = false;
  bool isVegetarian = false;
  bool isLactose = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Filters'),
        ),
        body: Container(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Make Your Own Choose',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SwitchListTile(
              value: isGluten,
              onChanged: (value) {
                setState(() {
                  isGluten = value;
                });
              },
              title: Text(
                'Mark isGlutenFree',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            ),
            Divider(),
            SwitchListTile(
              value: isVegen,
              onChanged: (value) {
                setState(() {
                  isVegen = value;
                });
              },
              title: Text(
                'Mark isVegan',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            ),
            Divider(),
            SwitchListTile(
              value: isVegetarian,
              onChanged: (value) {
                setState(() {
                  isVegetarian = value;
                });
              },
              title: Text(
                'Mark isVegetarian',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            ),
            Divider(),
            SwitchListTile(
              value: isLactose,
              onChanged: (value) {
                setState(() {
                  isLactose = value;
                });
              },
              title: Text(
                'isLactoseFree',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            ),
          ],
        )),
        drawer: DrawerLayout(),
      ),
    );
  }
}
