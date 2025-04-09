import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.title, required this.onClick});

  final String title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onClick,
        child: Text(
          "Sign-In",
          style: Theme.of(context).textTheme.titleMedium,
        ));
  }
}
