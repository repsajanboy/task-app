import 'package:flutter/material.dart';

import './routing/app_router.dart';

class MyApp extends StatelessWidget {
  final AppRouter router;
  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.onGenerateRoute,
    );
  }
}