// food item
class Food {
  final String name;
  final String description;
  final String price;
  final String image;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.category,
    required this.availableAddons,
  });
}

// food category
enum FoodCategory {
  burger,
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
