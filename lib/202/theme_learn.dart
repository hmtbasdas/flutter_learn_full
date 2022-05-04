import 'package:flutter/material.dart';
import 'package:flutterlearn/202/password_text_field.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({Key? key}) : super(key: key);

  @override
  State<ThemeLearnView> createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {

  bool _value = false;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CheckboxListTile(
            value: _value,
            onChanged: (value){
              setState(() {
                _value = !_value;
              });
            },
            title: Text(
              "what",
            ),
            subtitle: Text(
              "sa"
            ),
          ),
          PasswordTextField(controller: controller,),
        ],
      ),
    );
  }
}


