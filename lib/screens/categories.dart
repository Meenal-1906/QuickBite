import 'package:flutter/material.dart';
import 'package:fifth_app/data/dummy_data.dart';
import 'package:fifth_app/widgets/category_grid_items.dart';
class CategoriesScreen extends StatelessWidget
{
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick your category'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5, 
          crossAxisSpacing: 20, 
          mainAxisSpacing: 20) ,
        children:  [
             for(final category in availableCategories)
             CategoryGridItem(category: category,)
        ],
      ),
    );
  }
}