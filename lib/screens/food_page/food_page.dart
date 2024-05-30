import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_button.dart';
import 'package:viscan_food_delivery_app/models/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    // initialize selected addons to be false
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //  food image
                Image(image: AssetImage(widget.food.imagePath)),

                // food name

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      // food price
                      Text(
                        '₱' + widget.food.price.toString(),
                        style: TextStyle(
                            fontSize: 16.0,
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      const SizedBox(height: 10.0),

                      // food description
                      Text(
                        widget.food.description,
                      ),
                      const SizedBox(height: 10.0),

                      // Addons
                      Text(
                        'Add-ons',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),

                      const SizedBox(height: 10.0),

                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(height: 10.0),
                      // food add ons
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            // get individual add on
                            Addon addon = widget.food.availableAddons[index];

                            // return checkbox list tile
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text('₱' + addon.price.toString(),
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary)),
                              value: widget.selectedAddons[addon],
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // add to cart button
                MyButton(
                  text: 'Add to cart',
                  onTap: () {},
                ),
                const SizedBox(height: 25.0),
              ],
            ),
          ),
        ),

        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.7,
            child: Container(
              margin: const EdgeInsets.only(left: 25.0),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
