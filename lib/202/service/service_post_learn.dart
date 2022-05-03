import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearn/202/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  bool _isLoading = false;

  final String _path = "https://jsonplaceholder.typicode.com";
  late final Dio _networkManager;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _networkManager = Dio(
      BaseOptions(
        baseUrl: _path,
      ),
    );
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator() : SizedBox.shrink(),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "title",
            ),
          ),
          TextField(
            controller: _bodyController,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "body",
            ),
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            autofillHints: [AutofillHints.creditCardNumber],
            decoration: InputDecoration(
              labelText: "user id",
            ),
          ),
          TextButton(
            onPressed: _isLoading ? null : () {
              if (_titleController.text.isNotEmpty &&
                  _bodyController.text.isNotEmpty &&
                  _userIdController.text.isNotEmpty) {
                final model = PostModel(
                  body: _bodyController.text,
                  title: _titleController.text,
                  userId: int.tryParse(_userIdController.text),
                );

                _addItemToService(model);
              }
            },
            child: Text("send"),
          ),
        ],
      ),
    );
  }

  void _addItemToService(PostModel postModel) async {
    _changeLoading();
    final response = await _networkManager.post(
      "/posts",
      data: postModel,
    );

    if(response.statusCode == HttpStatus.created){
      print("post success ${response.statusCode}");
    }
    _changeLoading();
  }
}
