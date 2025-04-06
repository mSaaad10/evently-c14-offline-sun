import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.zero),
        onPressed: () {},
        child: Text(
          title,
          textAlign: TextAlign.end,
          style: Theme.of(context).textTheme.titleSmall,
        ));
  }
}
