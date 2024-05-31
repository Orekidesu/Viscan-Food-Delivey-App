import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/data/services/auth/login_or_register.dart';
import 'package:viscan_food_delivery_app/screens/homepage/home_page.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // if user is logged in, return home page
          if (snapshot.hasData) {
            return const HomePage();
            // if user is not logged in, return login page
          } else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
