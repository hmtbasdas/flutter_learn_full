import 'package:flutter/material.dart';

class WidgetSizeEnumView extends StatefulWidget {
  const WidgetSizeEnumView({Key? key}) : super(key: key);

  @override
  State<WidgetSizeEnumView> createState() => _WidgetSizeEnumViewState();
}

class _WidgetSizeEnumViewState extends State<WidgetSizeEnumView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.red,
        ),
      ),
    );
  }
}

enum WidgetSizes {
  normalCardHeight,
  circleProfileWidth
}

extension WidgetSizeExtension on WidgetSizes {

  double value(){
    switch(this){
      case WidgetSizes.normalCardHeight:
        return 50;
      case WidgetSizes.circleProfileWidth:
        return 25;
      default: return 20;
    }
  }
}
