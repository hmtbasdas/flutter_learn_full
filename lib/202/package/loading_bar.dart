import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  const LoadingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitChasingDots(
      color: Colors.red,
      size: 50.0,
      //controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
    );
  }
}
