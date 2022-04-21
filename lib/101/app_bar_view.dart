import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterlearn/101/stateless_learn.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);

  final String _title = "Welcome to learn Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        leading: Icon(
          Icons.chevron_left,
        ),
        actions: [
          IconButton(
            onPressed: (){

            },
            icon: Icon(
              Icons.menu,
            ),
          ),
          Center(
            child: CircularProgressIndicator(
              strokeWidth: 2,
            ),
          ),
          Text(
            _title.substring(0,4),
          )
        ],
        //centerTitle: true,
        //backgroundColor: Colors.transparent,
        //elevation: 0,
        //systemOverlayStyle: SystemUiOverlayStyle.light,
        //leadingWidth: 60,
        actionsIconTheme: IconThemeData(
          color: Colors.red,
        ),
        toolbarTextStyle: TextStyle(
          color: Colors.green,
        ),
        //otomatik back butonu gelmesin
        //automaticallyImplyLeading: false,

      ),
      body: Container(
      ),
    );
  }
}
