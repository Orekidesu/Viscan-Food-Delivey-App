import 'package:flutter/material.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_button.dart';
import 'package:viscan_food_delivery_app/custom_widgets/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
            "Let's Create an Account",
            style: TextStyle(
              fontSize: 18.0,
              color: Theme.of(context).colorScheme.primary,
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

          // confirm password textfield
          MyTextField(
            controller: confirmPasswordController,
            hintText: 'Confirm Password',
            obscureText: true,
          ),

          MyButton(onTap: () {}, text: 'Sign up '),
          SizedBox(height: 20.0),

          // if already a member
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login Here",
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
