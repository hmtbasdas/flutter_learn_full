import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DarkTheme {

  ThemeData themeData = ThemeData.dark().copyWith(
    tabBarTheme: TabBarTheme(
      //vs
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.red,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
  );
}