import 'package:flutter/material.dart';

class CustomWidgetLearnView extends StatelessWidget {
  const CustomWidgetLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Food",
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: const StadiumBorder(
              side: BorderSide(
                color: Colors.red,
                width: 0.5,
                style: BorderStyle.solid,
              )
            ),
          ),
        ),
      ),
    );
  }
}
