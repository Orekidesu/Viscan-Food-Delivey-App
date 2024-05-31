import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_button.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_cart_tile.dart';
import 'package:viscan_food_delivery_app/models/restuarant.dart';
import 'package:viscan_food_delivery_app/screens/payment_page/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold
        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear all cart items button
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text('Are you sure you want to clear your cart?'),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('cancel'),
                        ),
                        // yes button
                        TextButton(
                          onPressed: () {
                            restaurant.clearCart();
                            Navigator.pop(context);
                          },
                          child: const Text('yes'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          body: Column(
            children: [
              // List of Cart Items
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                                child: Text('Your cart is currently empty')))
                        : Expanded(
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                // get individual cart item
                                final cartItem = userCart[index];

                                // return cart item tile
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),

              // Button to pay
              MyButton(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage(),
                    )),
                text: 'Go to checkout',
              ),

              const SizedBox(height: 25.0),
            ],
          ),
        );
      },
    );
  }
}
