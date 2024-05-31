import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/screens/cart_page/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        expandedHeight: 340.0,
        collapsedHeight: 120.0,
        floating: false,
        pinned: true,
        actions: [
          IconButton(
            onPressed: () {
              // go to cart page
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: Center(child: const Text('Diner\'s Delight')),
        flexibleSpace: FlexibleSpaceBar(
          background: Padding(
            padding: const EdgeInsets.only(
              bottom: 50.0,
            ),
            child: child,
          ),
          title: title,
          centerTitle: true,
          titlePadding: const EdgeInsets.only(
            left: 0,
            right: 0,
            top: 0,
          ),
          expandedTitleScale: 1.0,
        ));
  }
}
