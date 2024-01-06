import 'package:flutter/material.dart';
import 'package:messaging_app/components/appstyle.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      cursorColor: Colors.black,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
        fillColor: Theme.of(context).colorScheme.tertiary,
        filled: true,
        hintText: hintText,
      ),
      style: appstyle(
        25,
        Theme.of(context).colorScheme.inversePrimary,
        FontWeight.bold,
      ),
    );
  }
}
