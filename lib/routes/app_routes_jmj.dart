import 'package:examen_jmj/models/models_jmj.dart';
import 'package:examen_jmj/screens/screens_jmj.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      icon: Icons.house_rounded,
      name: 'Home Screen',
      screen: const HomeScreen()),
    MenuOption(
      route: 'signin',
      icon: Icons.login_rounded,
      name: 'Sign In Screen',
      screen: const SigninScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*static Route<dynamic> onGenerateRoute (RouteSettings settings) {
      return MaterialPageRoute(
        builder: (context) => const AlertScreen()
      );
  }*/
}
