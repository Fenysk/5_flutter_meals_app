import 'package:meals_app/models/meal.dart';

final dummyMeals = [
  Meal(
    title: "Poulet rôti au four",
    categories: ['ctgr_2', 'ctgr_8'],
    imageUrl: "https://example.com/image.jpg",
    ingredients: ["Poulet", "Sel", "Poivre", "Herbes de Provence"],
    steps: [
      "Préchauffez le four à 200°C.",
      "Assaisonnez le poulet avec du sel, du poivre et des herbes de Provence.",
      "Placez le poulet dans un plat allant au four et enfournez pendant 1 heure.",
      "Retournez le poulet à mi-cuisson.",
      "Une fois doré, sortez le poulet du four et laissez-le reposer avant de découper et de servir."
    ],
    duration: 60,
    complexity: Complexity.challenging,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    title: "Boeuf bourguignon",
    categories: ['ctgr_2', 'ctgr_6', 'ctgr_8'],
    imageUrl: "https://example.com/image.jpg",
    ingredients: ["Boeuf", "Carottes", "Oignons", "Vin rouge"],
    steps: [
      "Dans une cocotte, faites revenir les morceaux de boeuf dans un peu d'huile.",
      "Ajoutez les carottes et les oignons coupés en morceaux.",
      "Versez le vin rouge et laissez mijoter pendant 2 heures.",
      "Servez chaud avec des pommes de terre ou des pâtes."
    ],
    duration: 120,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    title: "Salade de quinoa",
    categories: ['ctgr_1', 'ctgr_7'],
    imageUrl: "https://example.com/image.jpg",
    ingredients: ["Quinoa", "Tomates", "Concombre", "Feta"],
    steps: [
      "Faites cuire le quinoa selon les instructions sur l'emballage.",
      "Coupez les tomates et le concombre en petits dés.",
      "Mélangez le quinoa cuit avec les légumes et la feta.",
      "Assaisonnez avec de l'huile d'olive, du sel et du poivre."
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: true,
    isVegetarian: true,
  ),
];
