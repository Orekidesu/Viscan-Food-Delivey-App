// food item
class Food {
  final String name;
  final String description;
  final String price;
  final FoodCategory category;
  List<Addon> availableAddons;
  final String imagePath;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.availableAddons,
    required this.imagePath,
  });
}

// food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// food add-ons

class Addon {
  String name;
  double price;
  Addon({required this.name, required this.price});
}
