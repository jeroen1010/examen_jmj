import 'package:flutter/material.dart';

class AppTheme {
  //Color primario
  //
  static const Color primary = Color.fromARGB(255, 13, 179, 19);

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color primario
        primaryColor: primary,
        //Appbar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          iconTheme: IconThemeData(color: Colors.white)
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: primary,
        ),
        //TetxButton Theme
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
        ),
        //InputDecoration
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.circular(10)
          ), 
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          )
        )
  );
}