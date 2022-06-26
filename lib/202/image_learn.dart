import 'package:flutter/material.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePaths.dice.toWidget(80),
    );
  }
}

enum ImagePaths {
  dice,
}

extension ImagePathsExtension on ImagePaths {
  String path(){
    return "assets/$name.png";
  }

  Widget toWidget(double height) {
    return Image.asset(
      path(),
      height: height,
    );
  }
}