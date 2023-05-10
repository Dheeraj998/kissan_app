import 'package:flutter/material.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/presentation/auth/signin_screen.dart';
import 'package:kisan_app/presentation/landing/landing_screen.dart';

class AppRouter {
  AppRouter._();
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.landingPage:
        return MaterialPageRoute(
          builder: (context) => LandingScreen(),
        );
      case RouteName.signinScreen:
        return MaterialPageRoute(
          builder: (context) => SiginInScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => SiginInScreen(),
        );
    }
  }
}
