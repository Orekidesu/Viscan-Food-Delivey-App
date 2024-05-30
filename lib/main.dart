import 'dart:js';
import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/models/restuarant.dart';
import 'package:viscan_food_delivery_app/screens/authentication/login_or_register.dart';
import 'package:viscan_food_delivery_app/screens/homepage/home_page.dart';
import 'package:viscan_food_delivery_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        // restaurant provider
        ChangeNotifierProvider(create: (context) => Restaurant()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginOrRegister(),
      home: HomePage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
