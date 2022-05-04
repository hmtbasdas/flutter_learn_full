import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key,required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {

  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Password",
        suffix: _onVisibilityIcon(),
      ),
      autofillHints: [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isVisible,
      //obscuringCharacter: "#",
    );
  }

  IconButton _onVisibilityIcon() {
    return IconButton(
        onPressed: (){
          _changeVisibility();
        },
        icon: AnimatedCrossFade(
          firstChild: Icon(
            Icons.visibility_outlined,
          ),
          secondChild: Icon(
            Icons.visibility_off_outlined
          ),
          crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(milliseconds: 500),
        ),
        /*Icon(
          _isVisible ? Icons.visibility : Icons.visibility_off,
        ),*/
      );
  }

  void _changeVisibility() {
    return setState(() {
          _isVisible = !_isVisible;
        });
  }
}

