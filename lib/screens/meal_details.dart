import 'package:fifth_app/models/meal.dart';
import 'package:flutter/material.dart';

class MealDetails extends StatelessWidget
{
  const MealDetails({super.key,required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        height: 300,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}