import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Your location"),
              content: TextField(
                decoration: InputDecoration(hintText: "Search Address"),
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Cancel")),
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Save")),
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
              Text(
                "Guadalupe, Baybay City, Leyte",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
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
