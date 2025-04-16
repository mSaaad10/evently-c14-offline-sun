import 'package:flutter/material.dart';

extension Style on BuildContext {
  TextStyle get profileUserName => Theme.of(this).textTheme.headlineMedium!;

  TextStyle get profileAccount => Theme.of(this).textTheme.headlineSmall!;
}
