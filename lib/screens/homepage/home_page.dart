import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_current_location.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_description_box.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_drawer.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_sliver_app_bar.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_tab_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxScrolled) => [
                MySliverAppBar(
                  title: MyTabBar(tabController: tabController),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Divider(
                        indent: 25,
                        endIndent: 25,
                        color: Theme.of(context).colorScheme.secondary,
                      ),

                      // my current location
                      const MyCurrentLocation(),

                      //  description box
                      const MyDescriptionBox(),
                    ],
                  ),
                ),
              ],
          body: Container(
            color: Theme.of(context).colorScheme.secondary,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                    itemBuilder: (context, index) => Text('$index Tab 1'),
                    itemCount: 5),
                ListView.builder(
                    itemBuilder: (context, index) => Text('$index Tab 2'),
                    itemCount: 5),
                ListView.builder(
                    itemBuilder: (context, index) => Text('$index Tab 3'),
                    itemCount: 5),
              ],
            ),
          )),
    );
  }
}
