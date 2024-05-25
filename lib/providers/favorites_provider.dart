import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);

  bool toogleMealFavoriteStatus(Meal selectedMeal) {
    final mealIsFavorite = state.contains(selectedMeal);

    if (mealIsFavorite) {
      state = state.where((meal) => meal.id != selectedMeal.id).toList();
      return false;
    } else {
      state = [
        ...state,
        selectedMeal
      ];
      return true;
    }
  }
}

final favoritesProvider = StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>((ref) => FavoriteMealsNotifier());
