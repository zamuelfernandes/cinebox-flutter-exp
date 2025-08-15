import 'package:flutter/material.dart';

import 'ui/core/routes/routes.dart' show AppRoutes;
import 'ui/core/themes/theme.dart' show AppTheme;

class CineboxMainApp extends StatelessWidget {
  const CineboxMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinebox',
      theme: AppTheme.theme,
      routes: AppRoutes.routes,
    );
  }
}
