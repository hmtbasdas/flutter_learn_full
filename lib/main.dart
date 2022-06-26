import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlearn/101/app_bar_view.dart';
import 'package:flutterlearn/101/button_learn_view.dart';
import 'package:flutterlearn/101/card_learn.dart';
import 'package:flutterlearn/101/color_demos_view.dart';
import 'package:flutterlearn/101/container_sized_box_learn_view.dart';
import 'package:flutterlearn/101/custom_widget_learn.dart';
import 'package:flutterlearn/101/exm_screen.dart';
import 'package:flutterlearn/101/image_learn.dart';
import 'package:flutterlearn/101/padding_learn.dart';
import 'package:flutterlearn/101/scaffold_learn_view.dart';
import 'package:flutterlearn/101/stateful_learn.dart';
import 'package:flutterlearn/101/stateless_learn.dart';
import 'package:flutterlearn/101/text_learn_view.dart';
import 'package:flutterlearn/202/animated_learn.dart';
import 'package:flutterlearn/202/form_learn_view.dart';
import 'package:flutterlearn/202/image_learn.dart';
import 'package:flutterlearn/202/oop_learn.dart';
import 'package:flutterlearn/202/oop_learn_view.dart';
import 'package:flutterlearn/202/package_learn.dart';
import 'package:flutterlearn/202/service/comments_learn_view.dart';
import 'package:flutterlearn/202/service/service_learn_view.dart';
import 'package:flutterlearn/202/service/service_post_learn.dart';
import 'package:flutterlearn/202/state_manage/state_manage_learn_view.dart';
import 'package:flutterlearn/202/tab_learn.dart';
import 'package:flutterlearn/202/theme/dark_theme.dart';
import 'package:flutterlearn/202/theme/light_theme.dart';
import 'package:flutterlearn/202/theme_learn.dart';
import 'package:flutterlearn/202/widget_size_enum.dart';

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
      theme: LightTheme().themeData /*or -- DarkTheme().themeData*/,
      /*ThemeData.dark().copyWith(
        tabBarTheme: TabBarTheme(
          //vs
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
      ),*/
      home: FormLearnView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
