import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, this.userName}) : super(key: key);

  final String name = "Veli";

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome $name ${name.length} ${name.toUpperCase()} " * 10,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              textScaleFactor: .75,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              "Welcome $name ${name.length} ${name.toUpperCase()} " * 10,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              textScaleFactor: .75,
              style: ProjectStyles.welcomeStyle,
            ),
            Text(
              "Welcome $name ${name.length} ${name.toUpperCase()} " * 10,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
              textScaleFactor: .75,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.lime,
              ),
            ),
            Text(
              userName ?? "",
            )
          ],
        )
      ),
    );
  }
}

class ProjectStyles {

  static TextStyle welcomeStyle = TextStyle(
    decoration: TextDecoration.lineThrough,
    wordSpacing: 2,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.italic,
    letterSpacing: 2,
    fontSize: 16,
    color: Colors.blue,
  );
}