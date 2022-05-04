import 'package:flutter/material.dart';

class LightTheme {

  final _lightColor = _LightColor();

  //debug modda final kaldırırsın
  late /*final*/ ThemeData themeData;

  LightTheme() {
    themeData = ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _lightColor._redColor,
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1: TextStyle(
            fontSize: 20,
            color: _lightColor._redColor,
          ),
      ),
      colorScheme: ColorScheme.light(

      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.light(
          onPrimary: Colors.purple,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        side: BorderSide(
          color: Colors.green,
        ),
        fillColor: MaterialStateProperty.all(Colors.green),
      ),
      scaffoldBackgroundColor: Colors.white70,
      appBarTheme: AppBarTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
        )
      )
    );
  }
}

class _LightColor {

  final Color _redColor = Colors.red;
}