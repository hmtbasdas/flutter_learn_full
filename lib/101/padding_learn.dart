import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  final String _text1 = "sa";
  final String _text2 = "as";

  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _text1,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: Padding(
        padding: ProjectPadding.pagePadding,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Text(
                _text2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {

  static const pagePadding = EdgeInsets.only(left: 12, right: 12, top: 24);
}
