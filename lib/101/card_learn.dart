import 'package:flutter/material.dart';

class CardViewLearn extends StatelessWidget {
  const CardViewLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CardWidget(
            widget: Container(
              height: 100,
              width: 300,
            ),
          ),
          CardWidget(
            widget: Container(
              height: 100,
              width: 200,
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {

  final Widget widget;

  const CardWidget({
    Key? key, required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: widget,
      margin: EdgeInsets.only(left: 30, top: 50),
      elevation: 4,
      color: Theme.of(context).colorScheme.onBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          width: 2,
          color: Colors.pinkAccent,
          style: BorderStyle.solid
        )
      ),
      shadowColor: Colors.green,
      semanticContainer: false,
      borderOnForeground: false,
      clipBehavior: Clip.hardEdge,
      key: GlobalKey(),
    );
  }
}
