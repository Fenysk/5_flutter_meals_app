import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/meals_screen.dart';
import 'package:meals_app/data/dummy_meals.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.light,
    seedColor: const Color.fromARGB(255, 126, 52, 9),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const MealsApp());
}

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: MealsScreen(
        meals: dummyMeals,
        title: 'Some category...',
      ),
    );
  }
}
