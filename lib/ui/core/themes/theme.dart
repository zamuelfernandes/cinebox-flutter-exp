import 'package:flutter/material.dart'
    show ThemeData, ColorScheme, Colors, AppBarTheme;

import 'text_styles.dart' show AppTextStyles;

abstract final class AppTheme {
  static get theme => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: AppTextStyles.semiBoldMedium.copyWith(
        color: Colors.black,
      ),
    ),
  );
}
