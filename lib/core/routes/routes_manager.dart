import 'package:evently/authentication/signIn/signIn.dart';
import 'package:evently/authentication/signUp/signUp.dart';
import 'package:evently/create_event/create_event_screen.dart';
import 'package:evently/main_layout/main_layout.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';
  static const String mainLayout = '/mainLayout';
  static const String createEvent = '/createEvent';

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
      case mainLayout:
        return CupertinoPageRoute(
          builder: (context) => const MainLayout(),
        );
      case createEvent:
        return CupertinoPageRoute(
          builder: (context) => const CreateEventScreen(),
        );
    }
  }
}
