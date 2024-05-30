import './food.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> menu = [
    // burgers
    Food(
        name: "Classic Burger",
        description: 'Juicy beef patty, lettuce, tomato, onion and pickle',
        price: '99.00',
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Cheese', price: 10.00),
          Addon(name: 'Bacon', price: 20.00),
          Addon(name: 'Egg', price: 15.00),
          Addon(name: 'Mushroom', price: 15.00),
        ],
        imagePath: '../../assets/images/burgers/burgers.jpg'),

    // salads
    Food(
        name: "Caesar Salad",
        description:
            'Romaine lettuce, croutons, parmesan cheese, and Caesar dressing',
        price: '75.00',
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Chicken', price: 20.00),
          Addon(name: 'Bacon', price: 20.00),
        ],
        imagePath: '../../assets/images/salads/salads.jpg'),

    // sides
    Food(
        name: "Kankong Guisados",
        description: 'Ginisang kangkong with garlic and onions in oyster sauce',
        price: '45.00',
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Cheese', price: 10.00),
          Addon(name: 'Gravy', price: 10.00),
        ],
        imagePath: '../../assets/images/sides/sides.jpg'),

    // desserts
    Food(
        name: "Chocolate Sundae",
        description: 'Creamy vanilla ice cream with rich chocolate syrup',
        price: '60.00',
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Sprinkles', price: 5.00),
          Addon(name: 'Nuts', price: 10.00),
        ],
        imagePath: '../../assets/images/desserts/desserts.jpg'),

    // drinks
    Food(
        name: "Iced Tea",
        description: 'Refreshing iced tea',
        price: '30.00',
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Lemon', price: 5.00),
          Addon(name: 'Mint', price: 5.00),
        ],
        imagePath: '../../assets/images/drinks/drinks.jpg'),
  ];

  /* GETTERS */

  /* OPERATIONS */

  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in cart
  // clear cart

  /* HELPER FUNCTIONS */

  //  generate a receipt

  // format double value into money

  // format list of addons into string summary
}










// ₱