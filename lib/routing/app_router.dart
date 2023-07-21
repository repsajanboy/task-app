import 'package:flutter/material.dart';

import './app_router_names.dart';
import '../presentation/create_task/create_task.dart';
import '../presentation/bottom_tab/bottom_tab.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.menu:
        return MaterialPageRoute(
          builder: (_) => const BottomNavBarPage(
            currIndex: 0,
          ),
        );
      case RouteNames.createTask:
        return MaterialPageRoute(
          builder: (_) => const CreateTaskPage(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route define for ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
