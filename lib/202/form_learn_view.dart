import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({Key? key}) : super(key: key);

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {

  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              key: _key,
              autovalidateMode: AutovalidateMode.always,
              validator: (value) {
                return FormFieldValidator().isNotEmpty(value);
              },
              onChanged: (value){
                print(value);
              },
            ),
            DropdownButtonFormField<String>(
              validator: (value){
                return FormFieldValidator().isNotEmpty(value);
              },
              autovalidateMode: AutovalidateMode.always,
              items: [
                DropdownMenuItem(
                  child: Text("haha"),
                  value: "v1",
                ),
                DropdownMenuItem(
                  child: Text("hasdasha"),
                  value: "v2",
                ),
                DropdownMenuItem(
                  child: Text("asdashaha"),
                  value: "v3",
                ),
              ].toList(),
              onChanged: (value){

              },
            ),
            ElevatedButton(
              onPressed: (){
                if(_key.currentState?.validate() ?? false){
                  print("err");
                }
              },
              child: Text("save"),
            )
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {

  String? isNotEmpty(String? data){
    return (data?.isNotEmpty ?? false) ? null : ValidatorMessage()._notEmpty;
  }
}

class ValidatorMessage {
  final String _notEmpty = "Boş geçilmez";
}
