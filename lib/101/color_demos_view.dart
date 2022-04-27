import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({Key? key}) : super(key: key);

  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor = Colors.transparent;

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.red,
            ),
            label: "red",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.yellow,
            ),
            label: "yellow",
          ),
          BottomNavigationBarItem(
            icon: _ColorContainer(
              color: Colors.blue,
            ),
            label: "blue",
          ),
        ],
        onTap: _colorOnTap,
      ),
    );
  }

  void _colorOnTap(value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors {
  red,
  yellow,
  blue,
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
