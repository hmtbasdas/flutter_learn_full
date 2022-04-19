import 'package:flutter/material.dart';
import 'package:flutterlearn/101/container_sized_box_learn_view.dart';
import 'package:flutterlearn/101/scaffold_learn_view.dart';
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
      theme: ThemeData.dark(),
      home: ScaffoldLearn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
