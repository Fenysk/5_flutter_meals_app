import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Oups !',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(height: 20),
          Text(
            'Aucun repas trouvé, vérifiez vos filtres !',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      mainContent = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) => MealItem(meal: meals[index]),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: mainContent,
    );
  }
}
