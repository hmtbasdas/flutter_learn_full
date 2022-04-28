import 'package:flutter/material.dart';
import 'package:flutterlearn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {

  @override
  void initState() {
    super.initState();

    final user1 = PostModel2(
      id: 1,
      userId: 2,
      body: "body",
      title: "title",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
