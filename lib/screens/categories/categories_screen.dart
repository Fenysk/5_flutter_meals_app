import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_categories.dart';
import 'package:meals_app/widgets/category/category_grid_item.dart';
import 'package:meals_app/screens/meals/meals_screen.dart';
import 'package:meals_app/models/meal.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key, required this.availableMeals});

  final List<Meal> availableMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _selectCategory(BuildContext context, String categoryId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MealsScreen(
          meals: widget.availableMeals
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
      child: AnimatedBuilder(
          animation: _animationController,
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
          builder: (context, child) => SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 0.2),
                  end: const Offset(0, 0),
                ).animate(
                  CurvedAnimation(
                    parent: _animationController,
                    curve: Curves.decelerate,
                  ),
                ),
                child: child,
              )),
    );
  }
}
