import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantitySelector(
      {super.key,
      required this.quantity,
      required this.food,
      required this.onIncrement,
      required this.onDecrement});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // decrement button

          GestureDetector(
            onTap: onDecrement,
            child: Icon(
              Icons.remove,
              size: 20.0,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          // quantity count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: 20.0,
              child: Center(
                child: Text(quantity.toString()),
              ),
            ),
          ),

          // increment button

          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 20.0,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
