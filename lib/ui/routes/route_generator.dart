import 'package:flutter/material.dart';
import 'package:mmovie/ui/screens/main_screen.dart';

import '../screens/splash_screen.dart';
import 'route_list.dart';

class RouteGenerator {
  static Route<dynamic>? generate(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case routeSplash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: const RouteSettings(name: routeSplash),
        );

      case routeMain:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
          settings: const RouteSettings(name: routeMain),
        );
    }

    return null;
  }
}
