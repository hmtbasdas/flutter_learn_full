import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlearn/101/app_bar_view.dart';
import 'package:flutterlearn/101/button_learn_view.dart';
import 'package:flutterlearn/101/card_learn.dart';
import 'package:flutterlearn/101/container_sized_box_learn_view.dart';
import 'package:flutterlearn/101/exm_screen.dart';
import 'package:flutterlearn/101/image_learn.dart';
import 'package:flutterlearn/101/padding_learn.dart';
import 'package:flutterlearn/101/scaffold_learn_view.dart';
import 'package:flutterlearn/101/stateless_learn.dart';
import 'package:flutterlearn/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sa',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),
      home: ExmScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
