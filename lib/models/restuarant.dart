import 'package:viscan_food_delivery_app/models/cart_item.dart';
import './food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
        name: "Classic Burger",
        description: 'Juicy beef patty, lettuce, tomato, onion and pickle',
        price: 99.00,
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
        price: 75.00,
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
        price: 45.00,
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
        price: 60.00,
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
        price: 30.00,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Lemon', price: 5.00),
          Addon(name: 'Mint', price: 5.00),
        ],
        imagePath: '../../assets/images/drinks/drinks.jpg'),
  ];

  /* GETTERS */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /* OPERATIONS */
  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if food items are the same
      bool isSameFood = item.food == food;

      // check if addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if cart item already exists, increment quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      // create new cart item
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /* HELPER FUNCTIONS */

  //  generate a receipt

  // format double value into money

  // format list of addons into string summary
}










// ₱