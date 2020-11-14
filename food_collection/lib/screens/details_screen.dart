import 'package:flutter/material.dart';
import '../models/food_data.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = 'DetailsScreen';
  Function getFavorite;

  DetailsScreen({@required this.getFavorite});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final newList = DUMMY_MEALS.firstWhere((element) => element.id == id);
    int i = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text(newList.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              newList.imageUrl,
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              color: Colors.black.withOpacity(0.5),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  newList.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'ingredients',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffededed),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Card(
                      color: Colors.blue,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        child: Text(
                          '# ${newList.ingredients[index]}',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: newList.ingredients.length,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 25,
                top: 10,
              ),
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Steps',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: ListView(
                  children: [
                    ...newList.steps.map((e) {
                      return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 30,
                              child: Text(
                                '${i++}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            title: Container(
                              child: Text(e.toString()),
                            ),
                          ),
                          Divider(
                            color: Colors.blue,
                            thickness: 2.0,
                          ),
                        ],
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: isFavorite ? Icon(Icons.star) : Icon(Icons.star_border),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
          if(isFavorite){
            widget.getFavorite(newList.id);
          }
        },
      ),
    );
  }
}
