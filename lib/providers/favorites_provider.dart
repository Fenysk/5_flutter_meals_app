import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  void toogleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if (mealIsFavorite) {
      state = state.where((meal) => meal.id != meal.id).toList();
    } else {
      state = [
        ...state,
        meal
      ];
    }
  }
}

final favoritesProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) => FavoriteMealsNotifier());
