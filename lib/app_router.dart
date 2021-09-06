import 'package:flutter/material.dart';
import 'package:meal_monkey/screens/first_screen.dart';
import 'package:meal_monkey/screens/login_screen.dart';
import 'package:meal_monkey/screens/signup_screen.dart';
import 'package:meal_monkey/screens/splash_screen.dart';

class AppRouter {

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => FirstScreen()
          );

    }
  }
}
