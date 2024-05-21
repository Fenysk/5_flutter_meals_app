import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen(
      {super.key, required this.meal, required this.onFavoriteTap});

  final Meal meal;
  final void Function() onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: onFavoriteTap,
            icon: const Icon(Icons.star),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ingrédients',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      for (var ingredient in meal.ingredients)
                        Text(
                          '⸱ $ingredient',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                    ],
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Étapes',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 14),
                  Column(
                    children: [
                      for (var i = 0; i < meal.steps.length; i++)
                        Column(
                          children: [
                            Text(
                              '${i + 1}',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              meal.steps[i],
                              style: Theme.of(context).textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 24),
                          ],
                        )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
