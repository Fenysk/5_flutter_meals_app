import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_categories.dart';
import 'package:meals_app/widgets/category/category_grid_item.dart';
import 'package:meals_app/screens/meals/meals_screen.dart';
import 'package:meals_app/models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, required this.availableMeals});

  final List<Meal> availableMeals;

  void _selectCategory(BuildContext context, String categoryId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MealsScreen(
          meals: availableMeals
              .where(
                (meal) => meal.categories.contains(categoryId),
              )
              .toList(),
          title: dummyCategories.firstWhere((cat) => cat.id == categoryId).title,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          for (final category in dummyCategories)
            CategoryGridItem(
              category: category,
              onCategoryTap: _selectCategory,
            ),
        ],
      ),
    );
  }
}
