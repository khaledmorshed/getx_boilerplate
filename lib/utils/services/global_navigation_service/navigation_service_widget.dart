import 'package:flutter/material.dart';

import '../../../view/features/splash/splash_screen.dart';

/// Navigation Service Without Context

/// For NavigationService
class GlobalNavigationService {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static final  currentContext = navigatorKey.currentState!.context;

  dynamic routeTo(dynamic route, {dynamic arguments}) {
    return navigatorKey.currentState?.pushNamed(route, arguments: arguments);
  }

  dynamic goBack() {
    return navigatorKey.currentState?.pop();
  }
}

/// For RouteGenerator
    class RouteGenerator {
    static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
    case '/dashboard':
    return MaterialPageRoute(builder: (context) => const SplashScreen());

    default:
      return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("Not found ${settings.name}"),
            ),
          ));
    }
  }
}