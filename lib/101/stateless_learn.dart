import 'package:flutter/material.dart';

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const _TextWidgets(titleText: "sa",),
          const _TextWidgets(titleText: "as",),
          const _TextWidgets(titleText: "nbr?",),
          const _TextWidgets(),
          Container(

          ),
        ],
      ),
    );
  }
}

class _TextWidgets extends StatelessWidget {

  final String titleText;

  const _TextWidgets({Key? key, this.titleText = "bos"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}
