import 'package:flutter/foundation.dart';

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

class Meal {
  final id;
  final List<String> categories;
  final affordability;
  final complexity;
  final imageUrl;
  final title;
  final duration;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal(
      {@required this.id,
      @required this.categories,
      @required this.affordability,
      @required this.complexity,
      @required this.imageUrl,
      @required this.title,
      @required this.duration,
      @required this.ingredients,
      @required this.steps,
      @required this.isGlutenFree,
      @required this.isVegan,
      @required this.isLactoseFree,
      @required this.isVegetarian});
}
