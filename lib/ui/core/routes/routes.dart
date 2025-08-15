import 'package:flutter/material.dart';

import '../../screens/login/login_screen.dart' show LoginScreen;
import '../../screens/splash/splash_screen.dart' show SplashScreen;

sealed class AppRoutes {
  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    '/': (context) => const SplashScreen(),
    '/login': (context) => const LoginScreen(),
  };
}
