
import 'package:flutter/material.dart';

import '../../style/app_typoraphy.dart';

extension ContextExtensions on BuildContext {
  AppTextStyle get typo => AppTextStyle();
}

extension StfulContextExtensions on State {
  AppTextStyle get typo => AppTextStyle();
}
