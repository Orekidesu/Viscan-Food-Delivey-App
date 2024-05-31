import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viscan_food_delivery_app/models/restuarant.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  final TextEditingController textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your location"),
              content: TextField(
                controller: textController,
                decoration: InputDecoration(hintText: "Enter Address"),
              ),
              actions: [
                // cancel button
                MaterialButton(onPressed: () {
                  Navigator.pop(context);
                  textController.clear();
                }),

                // save button
                MaterialButton(
                  onPressed: () {
                    // update delivery address
                    String newAddress = textController.text;
                    context
                        .read<Restaurant>()
                        .updateDeliveryAddress(newAddress);
                    Navigator.pop(context);
                    textController.clear();
                  },
                  child: Text("Save"),
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Deliver Now!",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        // address
        GestureDetector(
          onTap: () => openLocationSearchBox(context),
          child: Row(
            children: [
              Consumer<Restaurant>(
                builder: (context, restaurant, child) => Text(
                  restaurant.deliveryAddress,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),

              // Dropdown menu
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        ),
      ]),
    );
  }
}
