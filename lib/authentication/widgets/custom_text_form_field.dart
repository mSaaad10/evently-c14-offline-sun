import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.label,
      this.hint,
      this.prefixIcon,
      this.suffixIcon,
      this.isSecure = false,
      this.onClick,
      this.lines = 1});

  final String? label;
  final String? hint;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  bool isSecure;
  VoidCallback? onClick;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines,
      style: Theme.of(context).textTheme.displaySmall,
      obscureText: isSecure,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: IconButton(
          onPressed: onClick,
          icon: Icon(suffixIcon),
        ),
        labelText: label,
      ),
    );
  }
}
