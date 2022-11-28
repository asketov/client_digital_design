import 'package:client_digital_design/ui/roots/auth.dart';
import 'package:client_digital_design/ui/roots/loader.dart';
import 'package:flutter/cupertino.dart';

class NavigationRoutes {
  static const loaderWidget = "/";
  static const auth = "/auth";
  static const home = "/home";
}

class AppNavigator {
  static final key = GlobalKey<NavigatorState>();

  static void toLoader() {
    key.currentState?.pushNamedAndRemoveUntil(
        NavigationRoutes.loaderWidget, ((route) => false));
  }

  static void toAuth() {
    key.currentState
        ?.pushNamedAndRemoveUntil(NavigationRoutes.auth, ((route) => false));
  }

  static Route<dynamic>? OnGeneratedRoutes(RouteSettings settings, context) {
    switch (settings.name) {
      case NavigationRoutes.loaderWidget:
        return PageRouteBuilder(
            pageBuilder: ((_, __, ___) => LoaderWidget.create()));
      case NavigationRoutes.auth:
        return PageRouteBuilder(pageBuilder: (_, __, ___) => Auth.create());
    }
    return null;
  }
}
