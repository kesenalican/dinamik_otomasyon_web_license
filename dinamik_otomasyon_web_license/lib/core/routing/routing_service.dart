import 'package:dinamik_otomasyon_web_license/core/constants/route_constants.dart';
import 'package:dinamik_otomasyon_web_license/core/routing/not_found_widget.dart';
import 'package:dinamik_otomasyon_web_license/view/screens/auth/view/auth.dart';
import 'package:dinamik_otomasyon_web_license/view/screens/home/view/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? _createRoute(Widget goto, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => goto,
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => goto,
      );
    } else {
      return CupertinoPageRoute(
        settings: settings,
        builder: (context) => goto,
      );
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.home:
        return _createRoute(const HomePage(), settings);
      case RouteConstants.login:
        return _createRoute(const LoginPage(), settings);
      default:
        return MaterialPageRoute(
            builder: (context) => const NotFoundNavigationWidget());
    }
  }
}
