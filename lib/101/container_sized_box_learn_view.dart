import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            child: Text(
              'sadas' * 20,
            ),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 100,
            child: Text("bbb" * 1000),
          ),

          Container(
            height: 50,
            constraints: BoxConstraints(
              minWidth: 50,
              maxWidth: 100,
            ),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: /*ProjectContainerDecoration(),*/ ProjectUtility.boxDecoration,
          ),
        ],
      )
    );
  }

}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(
        colors: [
          Colors.red,
          Colors.black,
        ]
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.green,
        offset: Offset(0.1, 1),
        blurRadius: 20,
      ),
    ],
    border: Border.all(width: 10, color: Colors.white12),
  );
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration() : super (
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
          colors: [
            Colors.red,
            Colors.black,
          ]
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.green,
          offset: Offset(0.1, 1),
          blurRadius: 20,
        ),
      ],
      border: Border.all(width: 10, color: Colors.white12),
  );
}