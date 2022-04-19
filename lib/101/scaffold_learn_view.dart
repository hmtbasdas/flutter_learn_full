import 'package:flutter/material.dart';
import 'package:flutterlearn/101/container_sized_box_learn_view.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scaffold Learn"),
        centerTitle: true,
      ),
      extendBody: true,
      body: Container(),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context,
          builder: (context) => Container(
            height: 200,
            child: Text("asda"),
          ),
          );
        },
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      onDrawerChanged: (value){
        debugPrint("sol: " + value.toString());
      },
      onEndDrawerChanged: (value){
        debugPrint("sag: " + value.toString());
      },
      //bottomSheet: Text("anan"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 200,
        margin: EdgeInsets.all(20),
        decoration: ProjectUtility.boxDecoration,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "labelc5",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "sanki polat alemdar",
            ),
          ],
        ),
      )
    );
  }
}
