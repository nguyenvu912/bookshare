import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppShadow {
  static final boxShadowTop = [
    const BoxShadow(
        color: AppColors.shadowColor, offset: Offset(0, -4), blurRadius: 12)
  ];
  static final boxShadow = [
    const BoxShadow(color: AppColors.shadowColor, blurRadius: 12)
  ];
  static final snackBarShadow = [
    const BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.08), blurRadius: 10)
  ];
}
