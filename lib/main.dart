import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/data/services/auth/auth_gate.dart';
import 'package:viscan_food_delivery_app/firebase_options.dart';
import 'package:viscan_food_delivery_app/models/restuarant.dart';
import 'package:viscan_food_delivery_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
