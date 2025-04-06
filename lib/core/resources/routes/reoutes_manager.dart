import 'package:evently/authentication/signIn/signIn.dart';
import 'package:evently/authentication/signUp/signUp.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case signUp:
        return CupertinoPageRoute(
          builder: (context) => const SignUp(),
        );
      case signIn:
        return CupertinoPageRoute(
          builder: (context) => const SignIn(),
        );
    }
  }
}
