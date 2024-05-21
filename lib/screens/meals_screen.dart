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
    Widget mainContent = Column(
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
        ),
      ],
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
