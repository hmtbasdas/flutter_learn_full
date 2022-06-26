import 'package:flutter/material.dart';
import 'package:flutterlearn/202/state_manage/state_learn_view_model.dart';

class StateManagerLearnView extends StatefulWidget {
  const StateManagerLearnView({Key? key}) : super(key: key);

  @override
  State<StateManagerLearnView> createState() => _StateManagerLearnViewState();
}

class _StateManagerLearnViewState extends StateLearnViewModel {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.blue,
      ),
      backgroundColor: isVisible ? Colors.green : Colors.pink,
    );
  }
}
