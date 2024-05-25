import 'package:flutter/material.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegan,
  vegetarian,
}

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _isGlutenFreeSet = false;
  bool _isLactoseFreeSet = false;
  bool _isVeganSet = false;
  bool _isVegetarianSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filtres'),
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: ((didPop) {
          if (didPop) return;
          Navigator.of(context).pop({
            Filter.glutenFree: _isGlutenFreeSet,
            Filter.lactoseFree: _isLactoseFreeSet,
            Filter.vegan: _isVeganSet,
            Filter.vegetarian: _isVegetarianSet,
          });
        }),
        child: Column(
          children: [
            SwitchListTile(
              value: _isGlutenFreeSet,
              onChanged: (bool newValue) {
                setState(() {
                  _isGlutenFreeSet = newValue;
                });
              },
              title: Text(
                'Sans gluten',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Exclut tous les aliments contenant du gluten.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _isLactoseFreeSet,
              onChanged: (bool newValue) {
                setState(() {
                  _isLactoseFreeSet = newValue;
                });
              },
              title: Text(
                'Sans lactose',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Convient aux intolérants au lactose.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _isVeganSet,
              onChanged: (bool newValue) {
                setState(() {
                  _isVeganSet = newValue;
                });
              },
              title: Text(
                'Végan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Aucun produit d’origine animale inclus.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
            SwitchListTile(
              value: _isVegetarianSet,
              onChanged: (bool newValue) {
                setState(() {
                  _isVegetarianSet = newValue;
                });
              },
              title: Text(
                'Végétarien',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              subtitle: Text(
                'Aucune viande ni poisson inclus.',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(left: 34, right: 22),
            ),
          ],
        ),
      ),
    );
  }
}
