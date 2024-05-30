import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Text Style
    var myPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var mySecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: EdgeInsets.all(25.0),
      margin: EdgeInsets.only(left: 25, bottom: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Delivery Fee
          Column(
            children: [
              Text("100.00", style: myPrimaryTextStyle),
              Text("Delivery Fee", style: mySecondaryTextStyle),
            ],
          ),

          // Delivery Time

          Column(
            children: [
              Text("30 min", style: myPrimaryTextStyle),
              Text("Delivery Time", style: mySecondaryTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
