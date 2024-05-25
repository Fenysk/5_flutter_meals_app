import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories/categories_screen.dart';
import 'package:meals_app/screens/meals/meals_screen.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/main_drawer.dart';
import 'package:meals_app/screens/filters/filters_screen.dart';
import 'package:meals_app/providers/meals_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const kInitialFilters = {
  Filter.glutenFree: false,
  Filter.lactoseFree: false,
  Filter.vegan: false,
  Filter.vegetarian: false,
};

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPage = 0;

  List<Meal> favoriteMeals = [];
  Map<Filter, bool> _selectedFilters = kInitialFilters;

  void _showInfoMessage(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(message),
      ),
    );
  }

  void _toggleMealFavorite(Meal meal) {
    final isExisting = favoriteMeals.contains(meal);

    setState(() {
      if (isExisting) {
        favoriteMeals.remove(meal);
        _showInfoMessage('${meal.title} a été retiré des favoris.');
      } else {
        favoriteMeals.add(meal);
        _showInfoMessage('${meal.title} a été ajouté aux favoris.');
      }
    });
  }

  void _setScreen(String identifier) async {
    Navigator.of(context).pop();

    if (identifier == 'filters') {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (context) => FiltersScreen(
            currentFilters: _selectedFilters,
          ),
        ),
      );

      setState(() => _selectedFilters = result ?? kInitialFilters);
    }
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);

    final availableMeals = meals.where((meal) {
      if (_selectedFilters[Filter.glutenFree]! && !meal.isGlutenFree) return false;
      if (_selectedFilters[Filter.lactoseFree]! && !meal.isLactoseFree) return false;
      if (_selectedFilters[Filter.vegan]! && !meal.isVegan) return false;
      if (_selectedFilters[Filter.vegetarian]! && !meal.isVegetarian) return false;

      return true;
    }).toList();

    Widget activePage = CategoriesScreen(
      availableMeals: availableMeals,
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
        title: Text(_selectedPage == 0 ? 'Sélectionnez une categorie' : 'Mes favoris'),
      ),
      body: activePage,
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
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
