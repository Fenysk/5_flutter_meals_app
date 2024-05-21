import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories/categories_screen.dart';
import 'package:meals_app/screens/meals/meals_screen.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/data/dummy_meals.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPage = 0;

  List<Meal> favoriteMeals = [];

  void _toggleMealFavorite(Meal meal) {
    setState(() {
      ScaffoldMessenger.of(context).clearSnackBars();

      if (favoriteMeals.contains(meal)) {
        favoriteMeals.remove(meal);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: Text('${meal.title} a été retiré des favoris.'),
          ),
        );
      } else {
        favoriteMeals.add(meal);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            content: Text('${meal.title} a été ajouté aux favoris.'),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = CategoriesScreen(
      meals: dummyMeals,
      onToogleFavorite: _toggleMealFavorite,
    );

    if (_selectedPage == 1) {
      activePage = MealsScreen(
        meals: favoriteMeals,
        onToogleFavorite: _toggleMealFavorite,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
            _selectedPage == 0 ? 'Sélectionnez une categorie' : 'Mes favoris'),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => _selectedPage = index),
        currentIndex: _selectedPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoris',
          ),
        ],
      ),
    );
  }
}
