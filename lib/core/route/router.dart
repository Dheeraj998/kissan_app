import 'package:flutter/material.dart';
import 'package:kisan_app/core/route/route_name.dart';
import 'package:kisan_app/presentation/Seller/add_product.dart';
import 'package:kisan_app/presentation/auth/nick_name_screen.dart';
import 'package:kisan_app/presentation/auth/register_screen.dart';
import 'package:kisan_app/presentation/auth/signin_screen.dart';
import 'package:kisan_app/presentation/landing/landing_screen.dart';
import 'package:kisan_app/presentation/main/main_screen.dart';

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
      case RouteName.nickNameScreeen:
        return MaterialPageRoute(
          builder: (context) => NickNameScreen(),
        );
      case RouteName.registerScreen:
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        );
      case RouteName.mainScreen:
        return MaterialPageRoute(
          builder: (context) => MainScreen(),
        );
      case RouteName.addProductScreen:
        return MaterialPageRoute(
          builder: (context) => AddProductScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => SiginInScreen(),
        );
    }
  }
}
