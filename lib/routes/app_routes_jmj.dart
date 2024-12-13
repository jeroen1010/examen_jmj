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
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'signin',
      icon: Icons.login_rounded,
      name: 'Sign In Screen',
      screen: const SigninScreen(),
    ),
    MenuOption(
      route: 'listview',
      icon: Icons.list_alt_rounded,
      name: 'List View',
      screen: const ListviewScreen(), 
    ),
    /*MenuOption(
      route: 'pistas',
      icon: Icons.explore,
      name: 'Pistas Screen',
      screen: const PistasScreen(), 
    ),
    MenuOption(
      route: 'monitores',
      icon: Icons.tv,
      name: 'Monitores Screen',
      screen: const MonitoresScreen(), 
    ),*/
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in MenuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }
}

