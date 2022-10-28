import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  static ThemeData theme = ThemeData(
    primaryColor: AppColors.main,
    primaryTextTheme: const TextTheme(button: TextStyle(color: Colors.white)),
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.main,
      selectionHandleColor: AppColors.main,
    ),
  );
}
