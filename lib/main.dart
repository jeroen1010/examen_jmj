import 'package:examen_jmj/routes/app_routes_jmj.dart';
import 'package:examen_jmj/screens/screens_jmj.dart';
import 'package:examen_jmj/theme/app_theme_jmj.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen App',
      //home: const Listview2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      theme: AppTheme.darkTheme
    );
  }
}