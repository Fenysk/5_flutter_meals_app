import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:meals_app/widgets/meal_item_trait.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal});

  final Meal meal;

  String turnIntoTitleCase(String text) =>
      text[0].toUpperCase() + text.substring(1);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      meal.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 32,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MealItemTrait(
                          icon: Icons.restaurant,
                          label: turnIntoTitleCase(meal.complexity.name),
                        ),
                        const SizedBox(width: 8),
                        MealItemTrait(
                          icon: Icons.schedule,
                          label: '${meal.duration} min',
                        ),
                        const SizedBox(width: 8),
                        MealItemTrait(
                          icon: Icons.euro_symbol,
                          label: turnIntoTitleCase(meal.affordability.name),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
