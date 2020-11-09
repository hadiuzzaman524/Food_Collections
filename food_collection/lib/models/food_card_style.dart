import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final title;
  final url;

  FoodCard({@required this.title, @required this.url});

  @override
  Widget build(BuildContext context) {
    return Image.network(url, height: 200,
      width: double.infinity,
      fit: BoxFit.cover,);
  }
}
