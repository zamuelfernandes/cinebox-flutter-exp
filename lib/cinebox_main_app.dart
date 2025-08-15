import 'package:flutter/material.dart';

import 'ui/core/themes/theme.dart' show AppTheme;
import 'ui/screens/login/login_screen.dart' show LoginScreen;
import 'ui/screens/splash/splash_screen.dart' show SplashScreen;

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinebox',
      theme: AppTheme.theme,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
