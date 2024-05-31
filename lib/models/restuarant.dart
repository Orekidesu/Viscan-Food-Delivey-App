import 'package:viscan_food_delivery_app/models/cart_item.dart';
import './food.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Burger",
      description:
          'Succulent beef patty with crisp lettuce, ripe tomato, fresh onion, and tangy pickle.',
      price: 99.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
        Addon(name: 'Bacon', price: 20.00),
        Addon(name: 'Egg', price: 15.00),
        Addon(name: 'Mushroom', price: 15.00),
      ],
      imagePath: '../../assets/images/burgers/classic_burger.jpg',
    ),

    Food(
      name: "Double Decker Burger",
      description:
          'Two juicy beef patties, fresh lettuce, ripe tomato, and tangy pickle.',
      price: 149.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
        Addon(name: 'Bacon', price: 20.00),
        Addon(name: 'Egg', price: 15.00),
        Addon(name: 'Mushroom', price: 15.00),
      ],
      imagePath: '../../assets/images/burgers/double_decker.jpg',
    ),
    Food(
      name: "Veggie Burger",
      description:
          'Plant-based patty, crisp lettuce, ripe tomato, and fresh onion.',
      price: 129.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
        Addon(name: 'Extra Veggies', price: 20.00),
      ],
      imagePath: '../../assets/images/burgers/veggie_burger.jpg',
    ),
    Food(
      name: "Chicken Burger",
      description:
          'Grilled chicken breast, fresh lettuce, ripe tomato, and mayo.',
      price: 119.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
        Addon(name: 'Bacon', price: 20.00),
        Addon(name: 'Egg', price: 15.00),
        Addon(name: 'Mushroom', price: 15.00),
      ],
      imagePath: '../../assets/images/burgers/chicken_burger.jpg',
    ),
    Food(
      name: "Fish Burger",
      description:
          'Crispy fish fillet, fresh lettuce, ripe tomato, and tartar sauce.',
      price: 139.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
        Addon(name: 'Extra Fish Fillet', price: 30.00),
      ],
      imagePath: '../../assets/images/burgers/fish_burger.jpg',
    ),

    // salads
    Food(
      name: "Caesar Salad",
      description:
          'Crisp romaine lettuce, crunchy croutons, finely grated parmesan, all tossed in a creamy Caesar dressing.',
      price: 75.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Chicken', price: 20.00),
        Addon(name: 'Bacon', price: 20.00),
      ],
      imagePath: '../../assets/images/salads/caesar_salad.jpg',
    ),

    Food(
      name: "Greek Salad",
      description:
          'Fresh cucumbers, ripe tomatoes, crisp red onions, tangy olives, and feta cheese, all tossed in a light vinaigrette.',
      price: 85.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Chicken', price: 20.00),
      ],
      imagePath: '../../assets/images/salads/greek_salad.jpg',
    ),
    Food(
      name: "Cobb Salad",
      description:
          'Crisp lettuce, ripe tomatoes, boiled eggs, avocado, chicken, bacon, and blue cheese, all neatly arranged and served with your choice of dressing.',
      price: 95.00,
      category: FoodCategory.salads,
      availableAddons: [],
      imagePath: '../../assets/images/salads/cobb_salad.jpg',
    ),
    Food(
      name: "Spinach Salad",
      description:
          'Fresh spinach leaves, crispy bacon, boiled eggs, mushrooms, and red onion, all tossed in a warm bacon dressing.',
      price: 85.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Chicken', price: 20.00),
      ],
      imagePath: '../../assets/images/salads/spinach_salad.jpg',
    ),
    Food(
      name: "Caprese Salad",
      description:
          'Ripe tomatoes, fresh mozzarella, and basil leaves, drizzled with a sweet balsamic reduction.',
      price: 90.00,
      category: FoodCategory.salads,
      availableAddons: [],
      imagePath: '../../assets/images/salads/caprese_salad.jpg',
    ),
    // sides
    Food(
      name: "French Fries",
      description: 'Crispy golden fries served with a side of ketchup.',
      price: 45.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
      ],
      imagePath: '../../assets/images/sides/fries.jpg',
    ),
    Food(
      name: "Onion Rings",
      description:
          'Crispy fried onion rings served with a tangy dipping sauce.',
      price: 50.00,
      category: FoodCategory.sides,
      availableAddons: [],
      imagePath: '../../assets/images/sides/onion_ring.jpg',
    ),
    Food(
      name: "Mashed Potatoes",
      description: 'Creamy mashed potatoes with a hint of garlic and butter.',
      price: 40.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
        Addon(name: 'Bacon', price: 20.00),
      ],
      imagePath: '../../assets/images/sides/mashed_potato.jpg',
    ),
    Food(
      name: "Coleslaw",
      description: 'Crunchy cabbage and carrot slaw in a creamy dressing.',
      price: 35.00,
      category: FoodCategory.sides,
      availableAddons: [],
      imagePath: '../../assets/images/sides/coleslaw.jpg',
    ),
    Food(
      name: "Garlic Bread",
      description: 'Toasty bread slices slathered with garlic butter.',
      price: 30.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese', price: 10.00),
      ],
      imagePath: '../../assets/images/sides/garlic_bread.jpg',
    ),

    // desserts
    Food(
      name: "Banana Split",
      description:
          'A classic treat with ripe bananas, scoops of creamy vanilla, chocolate, and strawberry ice cream, all topped with rich chocolate syrup, sprinkles, and a cherry on top.',
      price: 60.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Sprinkles', price: 5.00),
        Addon(name: 'Extra Nuts', price: 10.00),
      ],
      imagePath: '../../assets/images/desserts/desserts.jpg',
    ),

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

  String _deliveryAddress = "Guadalupe, Baybay City, Leyte";
  /* GETTERS */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /* OPERATIONS */
  // user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)

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

  // update delivery address
  void updateDeliveryAddress(String address) {
    _deliveryAddress = address;
    notifyListeners();
  }

  /* HELPER FUNCTIONS */

  //  generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // format the date to inclide to up to seconds only

    String formattedDate =
        DateFormat('yyyy-MM-dd – kk:mm:ss').format(DateTime.now());

    receipt.writeln("Date: $formattedDate");
    receipt.writeln();
    receipt.writeln("====================================");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity}x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("Addons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("====================================");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivery To: $_deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return '₱${price.toStringAsFixed(2)}';
  }

  // format list of addons into string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}






// ₱