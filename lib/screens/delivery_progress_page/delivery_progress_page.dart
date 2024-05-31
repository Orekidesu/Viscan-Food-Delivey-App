import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Progress'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text('Your order is on the way!'),
      ),
    );
  }
}
