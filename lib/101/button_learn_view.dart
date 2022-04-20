import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: (){
              debugPrint("basıldı");
            },
            child: Text(
              "text",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states){
                if(states.contains(MaterialState.pressed)){
                  return Colors.green;
                }
                return Colors.white;
              }),
            ),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text(
              "elevated"
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.save,
            ),
          ),
          FloatingActionButton(
            onPressed: (){

            },
            child: Icon(
              Icons.add
            ),
          ),
          OutlinedButton(
            onPressed: (){

            },
            child: Text(
              "outlined"
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: CircleBorder(),
            ),
          ),
          InkWell(
            onTap: (){
              debugPrint("custom tik");
            },
            onDoubleTap: (){
              debugPrint("custom double tik");
            },
            child: Text(
                "custom"
            ),
          ),

          OutlinedButton.icon(
            onPressed: (){

            },
            icon: Icon(Icons.light),
            label: Text(
              "sanki polat alemdar"
            ),
          ),

          ElevatedButton(
            onPressed: (){

            },
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
              child: Text(
                "Place bid",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              )
            ),
          )
        ],
      ),
    );
  }
}