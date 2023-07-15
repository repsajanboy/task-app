import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyle {
  TextStyle dashboardTitle() {
    return const TextStyle(
      color: AppColors.mainColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Lato',
      fontSize: 20.0,
    );
  }

  TextStyle dashboardUser() {
    return const TextStyle(
      color: AppColors.mainColor,
      fontWeight: FontWeight.bold,
      fontFamily: 'Lato',
      fontSize: 18.0,
    );
  }

  TextStyle dashboardGreyTexts() {
    return const TextStyle(
      color: Colors.black54,
      fontWeight: FontWeight.w500,
      fontFamily: 'Lato'
    );
  }
}
