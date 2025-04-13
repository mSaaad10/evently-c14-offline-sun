import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.title,
      required this.onClick,
      this.alignment = Alignment.centerRight});

  final String title;
  final VoidCallback onClick;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: Theme.of(context).textButtonTheme.style?.copyWith(
              alignment: alignment,
            ),
        onPressed: onClick,
        child: Text(
          title,
          textAlign: TextAlign.end,
        ));
  }
}
