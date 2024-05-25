import 'package:meals_app/models/meal.dart';

final dummyMeals = [
  Meal(
    title: "Poulet rôti au four",
    categories: [
      'ctgr_2',
      'ctgr_8'
    ],
    imageUrl: "https://m1.zeste.ca/serdy-m-dia-inc/image/upload/f_auto/fl_lossy/q_auto:eco/x_0,y_300,w_5760,h_3240,c_crop/w_1200,h_630,c_fill/v1705071547/foodlavie/prod/recettes/poulet-roti-au-four-3a30b4b3",
    ingredients: [
      "Poulet",
      "Sel",
      "Poivre",
      "Herbes de Provence"
    ],
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
    categories: [
      'ctgr_2',
      'ctgr_6',
      'ctgr_8'
    ],
    imageUrl: "https://i0.wp.com/www.moulindeserres.fr/wp-content/uploads/2018/02/bourguignon.jpg?fit=2360%2C1568&ssl=1",
    ingredients: [
      "Boeuf",
      "Carottes",
      "Oignons",
      "Vin rouge"
    ],
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
    categories: [
      'ctgr_1',
      'ctgr_7'
    ],
    imageUrl: "https://img.cuisineaz.com/660x660/2016/04/18/i88777-salade-de-quinoa-a-la-tomate.jpg",
    ingredients: [
      "Quinoa",
      "Tomates",
      "Concombre",
      "Feta"
    ],
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
  Meal(
    title: 'Spaghetti avec sauce tomate',
    categories: [
      'ctgr_1',
      'ctgr_3'
    ],
    imageUrl: 'https://www.giallozafferano.com/images/228-22832/spaghetti-with-tomato-sauce_1200x800.jpg',
    ingredients: [
      '4 Tomates',
      '1 Spaghetti',
      '1 Oignon'
    ],
    steps: [
      'Couper les tomates et l\'oignon en petits morceaux',
      'Faites bouillir de l\'eau - ajoutez-y du sel une fois qu\'elle bout.',
      'Mettez les spaghettis dans l\'eau bouillante - attendez qu\'ils soient cuits',
      'Les retirer et ajouter des tomates, de l\'oignon et de la sauce tomate.',
    ],
    duration: 20,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    title: "Sushi au saumon",
    categories: [
      'ctgr_5',
      'ctgr_9'
    ],
    imageUrl: "https://maxi.cdnartwhere.eu/wp-content/uploads/recipe/2018-05/sushis-de-saumon-1200x720-963x542-c-default.jpg?ck=37a6259cc0c1dae299a7866489dff0bd",
    ingredients: [
      "Riz à sushi",
      "Saumon frais",
      "Feuilles d'algue nori",
      "Vinaigre de riz",
      "Wasabi",
      "Gingembre mariné"
    ],
    steps: [
      "Préparez le riz à sushi selon les instructions sur l'emballage et assaisonnez-le avec du vinaigre de riz.",
      "Coupez le saumon en fines tranches.",
      "Placez une feuille d'algue nori sur une natte en bambou, étalez une fine couche de riz, puis disposez les tranches de saumon.",
      "Roulez délicatement la natte pour former le sushi, puis découpez-le en tranches.",
      "Servez avec du wasabi, du gingembre mariné et de la sauce soja."
    ],
    duration: 45,
    complexity: Complexity.challenging,
    affordability: Affordability.pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    title: "Curry de pois chiches",
    categories: [
      'ctgr_3',
      'ctgr_10'
    ],
    imageUrl: "https://static.750g.com/images/1200-630/2223d04c3e4de864520c282973f61473/curry-de-pois-chiches.jpeg",
    ingredients: [
      "Pois chiches",
      "Lait de coco",
      "Tomates",
      "Oignon",
      "Curry en poudre",
      "Coriandre"
    ],
    steps: [
      "Faites revenir l'oignon émincé dans une casserole avec un peu d'huile.",
      "Ajoutez les tomates coupées en dés et laissez cuire jusqu'à ce qu'elles soient fondantes.",
      "Incorporez les pois chiches égouttés, le lait de coco et le curry en poudre.",
      "Laissez mijoter pendant 15-20 minutes, jusqu'à ce que la sauce épaississe.",
      "Servez chaud, saupoudré de coriandre fraîche, avec du riz basmati."
    ],
    duration: 30,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    title: "Salade niçoise",
    categories: [
      'ctgr_7'
    ],
    imageUrl: "https://www.fromager.net/wp-content/uploads/2023/11/recette-salade-nicoise.jpg",
    ingredients: [
      "Thon en boîte",
      "Oeufs",
      "Haricots verts",
      "Olives noires",
      "Tomates",
      "Pommes de terre",
      "Anchois"
    ],
    steps: [
      "Faites cuire les pommes de terre et les oeufs dans de l'eau bouillante jusqu'à ce qu'ils soient tendres.",
      "Faites cuire les haricots verts dans de l'eau bouillante salée jusqu'à ce qu'ils soient al dente.",
      "Coupez les tomates en quartiers, les pommes de terre en dés et les oeufs en quartiers.",
      "Disposez tous les ingrédients sur un grand plat, ajoutez le thon émietté et les olives noires.",
      "Arrosez d'une vinaigrette à base d'huile d'olive, de vinaigre et de moutarde, puis décorez avec les anchois.",
      "Servez frais."
    ],
    duration: 25,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    title: "Smoothie aux fruits",
    categories: [
      'ctgr_4',
      'ctgr_10'
    ],
    imageUrl: "https://wordpress.potagercity.fr/wp-content/uploads/2019/06/Smoothie-aux-fruits-rouges.jpg",
    ingredients: [
      "Banane",
      "Fraises",
      "Yaourt grec",
      "Miel",
      "Lait d'amande"
    ],
    steps: [
      "Coupez la banane et les fraises en morceaux.",
      "Dans un blender, ajoutez les fruits coupés, le yaourt grec, le miel et le lait d'amande.",
      "Mixez jusqu'à obtenir une consistance lisse et homogène.",
      "Servez dans un verre et dégustez immédiatement."
    ],
    duration: 10,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    title: "Oeufs brouillés avec avocat",
    categories: [
      'ctgr_4',
      'ctgr_10'
    ],
    imageUrl: "https://image.over-blog.com/vYo_4kJk9X6u6AokYAF4GV0_D0Y=/filters:no_upscale()/image%2F0896926%2F20210424%2Fob_747bc1_tartine-d-avocat-et-oeufs-brouilles.jpg",
    ingredients: [
      "Oeufs",
      "Avocat",
      "Sel",
      "Poivre",
      "Pain complet"
    ],
    steps: [
      "Battez les oeufs dans un bol et assaisonnez avec du sel et du poivre.",
      "Faites chauffer une poêle à feu moyen et versez les oeufs battus.",
      "Remuez doucement les oeufs avec une spatule jusqu'à ce qu'ils soient brouillés et cuits à votre goût.",
      "Coupez l'avocat en tranches.",
      "Servez les oeufs brouillés avec les tranches d'avocat et du pain complet grillé."
    ],
    duration: 15,
    complexity: Complexity.simple,
    affordability: Affordability.affordable,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
];
