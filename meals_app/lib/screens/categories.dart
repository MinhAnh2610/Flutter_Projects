import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_dart.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/cateogory_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(meals: [], title: 'Some title'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick your category')),
      body: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CateogoryGridItem(
              category: category,
              onSelectCategory: () => _selectCategory(context),
            ),
        ],
      ),
    );
  }
}
