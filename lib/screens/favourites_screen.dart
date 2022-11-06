import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
class FavouritesScreen extends StatelessWidget {
  List<Meal> favouriteMeals;
   FavouritesScreen( this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You have no favourites yet - start adding some!'),
    );
  }
}
