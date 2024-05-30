import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_drawer_tile.dart';
import 'package:viscan_food_delivery_app/screens/settings/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        // App logo
        const Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: Icon(Icons.fastfood, size: 60),
        ),

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(color: Theme.of(context).colorScheme.secondary),
        ),

        // Home List tile
        MyDrawerTile(
          text: 'Home',
          icon: Icons.home,
          onTap: () => Navigator.pop(context),
        ),

        // settings list tile
        MyDrawerTile(
          text: 'Settings',
          icon: Icons.logout,
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SettingsPage()));
          },
        ),
        // logout list tile
        const Spacer(),
        MyDrawerTile(
          text: 'Logout',
          icon: Icons.settings,
          onTap: () => Navigator.pop(context),
        ),
        const SizedBox(height: 20.0)
      ]),
    );
  }
}
