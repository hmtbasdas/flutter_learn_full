import 'package:flutter/material.dart';
import 'package:flutterlearn/202/oop_learn.dart';

class OopLearnView extends StatefulWidget {
  const OopLearnView({Key? key}) : super(key: key);

  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {

  FileDownload? _fileDownload;

  @override
  void initState() {
    super.initState();

    _fileDownload = FileDownload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircularProgressIndicator(
            color: Colors.green,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _fileDownload?.downloadItem(null);
          //_fileDownload?.toShare("www.google.com");
        },
      ),
    );
  }
}
