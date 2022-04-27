import 'dart:ffi';

import 'package:flutter/material.dart';

class StatefulLearnView extends StatefulWidget {
  const StatefulLearnView({Key? key}) : super(key: key);

  @override
  State<StatefulLearnView> createState() => _StatefulLearnViewState();
}

class _StatefulLearnViewState extends State<StatefulLearnView> {

  int _value = 0;

  void _updateCounter(bool isIncrement){
    isIncrement ? _value++ : _value--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          _value.toString(),
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              setState(() {
                _updateCounter(true);
              });
            },
            child: const Icon(
              Icons.add,
            ),
          ),
          SizedBox(width: 10,),
          FloatingActionButton(
            onPressed: (){
              setState(() {
                _updateCounter(false);
              });
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      )
    );
  }
}
