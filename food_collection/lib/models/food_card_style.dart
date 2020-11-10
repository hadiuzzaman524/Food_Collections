import 'package:flutter/material.dart';
import 'food_item.dart';
import '../screens/details_screen.dart';

class FoodCard extends StatelessWidget {
  final title;
  final url;
  final complexity;
  final affordability;
  final duration;
  final id;

  FoodCard({this.id,@required this.title,
    @required this.url,
    @required this.complexity,
    @required this.affordability,
    @required this.duration});

  String get getComplexity {
    if (complexity == Complexity.Simple) {
      return 'Simple';
    } else if (complexity == Complexity.Challenging) {
      return 'Little Hard';
    } else if (complexity == Complexity.Hard) {
      return 'Hard';
    } else {
      return "Normal";
    }
  }

  String get getAffordability {
    if (affordability == Affordability.Affordable) {
      return 'Affordable';
    } else if (affordability == Affordability.Pricey) {
      return 'Pricey';
    } else if (affordability == Affordability.Luxurious) {
      return 'Luxurious';
    } else {
      return "Unknown";
    }
  }

  nextPage(BuildContext ctx) {
    Navigator.pushNamed(ctx, DetailsScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: InkWell(
          onTap: () => nextPage(context),
          splashColor: Colors.cyan,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      topLeft: Radius.circular(20.0),
                    ),
                    child: Image.network(
                      url,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 5,
                    child: Container(
                      width: 350,
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                        overflow: TextOverflow.fade,
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lock_clock,
                          color: Colors.black,
                        ),
                        Text('${duration.toString()} minutes'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.monetization_on_outlined,
                          color: Colors.black,
                        ),
                        Text(getAffordability),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_rounded,
                          color: Colors.black,
                        ),
                        Text(getComplexity),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
