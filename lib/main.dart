import 'package:flutter/material.dart';

import 'app.dart';
import './routing/app_router.dart';

void main() {
  runApp(
    MyApp(
      router: AppRouter(),
    ),
  );
}
