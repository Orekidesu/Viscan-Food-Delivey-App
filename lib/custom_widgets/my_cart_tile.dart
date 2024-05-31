import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_quantity_selector.dart';
import 'package:viscan_food_delivery_app/models/cart_item.dart';
import 'package:viscan_food_delivery_app/models/restuarant.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        margin: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // food image
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        cartItem.food.imagePath,
                        height: 100.0,
                        width: 100.0,
                        fit: BoxFit.cover,
                      )),

                  const SizedBox(width: 8.0),
                  // food name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(
                        cartItem.food.name,
                      ),
                      // food price
                      Text('₱${cartItem.food.price}',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary)),
                    ],
                  ),
                  const Spacer(),

                  // increment or decrement quantity
                  QuantitySelector(
                      quantity: cartItem.quantity,
                      food: cartItem.food,
                      onIncrement: () {
                        restaurant.addToCart(
                            cartItem.food, cartItem.selectedAddons);
                      },
                      onDecrement: () {
                        restaurant.removeFromCart(cartItem);
                      }),
                ],
              ),
            ),

            // addons
            SizedBox(
              height: cartItem.selectedAddons.isNotEmpty ? 60 : 0,
              child: ListView(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                scrollDirection: Axis.horizontal,
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FilterChip(
                          label: Row(
                            children: [
                              // Addon name
                              Text(addon.name),

                              // Addon price
                              Text('  (₱${addon.price.toString()})'),
                            ],
                          ),
                          onSelected: (value) {},
                          shape: StadiumBorder(
                            side: BorderSide(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.secondary,
                          labelStyle: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 12.0),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
