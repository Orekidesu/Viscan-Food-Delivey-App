import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/data/services/auth/auth_service.dart';
import '../../custom_widgets/my_textfield.dart';
import '../../custom_widgets/my_button.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void login() async {
    // get instance of auth service

    final _authService = AuthService();

    // try sign in
    try {
      await _authService.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
      // display error message if sign in fails
    } catch (e) {
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Logo
          Icon(Icons.fastfood,
              size: 100, color: Theme.of(context).colorScheme.inversePrimary),

          // Message, App Slogan
          const SizedBox(height: 20.0),
          Text(
            'Viscan Food Delivery App',
            style: TextStyle(
              fontSize: 18.0,
              color: Theme.of(context).colorScheme.primary,
              fontStyle: FontStyle.italic,
            ),
          ),

          // email textfield

          const SizedBox(height: 20.0),
          MyTextField(
            controller: emailController,
            hintText: 'Email',
            obscureText: false,
          ),

          // password textfield

          MyTextField(
            controller: passwordController,
            hintText: 'Password',
            obscureText: true,
          ),

          // sign in button
          MyButton(onTap: login, text: 'Sign in '),
          // not a member? register now
          SizedBox(height: 20.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member yet?',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Register now',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
