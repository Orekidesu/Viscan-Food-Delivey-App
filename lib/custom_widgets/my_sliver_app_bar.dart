import 'package:flutter/material.dart';

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
        expandedHeight: 320.0,
        collapsedHeight: 120.0,
        floating: false,
        pinned: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.background,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Moonlit Diner'),
        flexibleSpace: FlexibleSpaceBar(
          background: child,
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
