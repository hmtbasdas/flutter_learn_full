import 'package:flutter/cupertino.dart';
import 'package:flutterlearn/202/state_manage/state_manage_learn_view.dart';

abstract class StateLearnViewModel extends State<StateManagerLearnView> {

  bool isVisible = false;
  bool isOpacity = false;

  void changeVisibility(){
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity(){
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}