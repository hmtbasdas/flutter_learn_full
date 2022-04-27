import 'package:flutter/material.dart';
import 'package:flutterlearn/101/card_learn.dart';
import 'package:flutterlearn/101/image_learn.dart';

class TabLearnView extends StatefulWidget {
  const TabLearnView({Key? key}) : super(key: key);

  @override
  State<TabLearnView> createState() => _TabLearnViewState();
}

class _TabLearnViewState extends State<TabLearnView> with TickerProviderStateMixin {

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _MyTabView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabView.values.length,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: TabBar(
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.blue,
            labelColor: Colors.pink,
            onTap: (value){
              debugPrint("click $value");
            },
            controller: _tabController,
            tabs: _MyTabView.values.map((e) => Tab(text: e.name,)).toList(),
          ),
        ),
        /*appBar: AppBar(
          bottom: TabBar(
            controller: _tabAppController,
            tabs: [
              Tab(
                text: "Page1",
              ),
              Tab(
                text: "Page2",
              ),
            ],
          ),
        ),*/
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            _tabController.animateTo(0);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: TabBarView(
          controller: _tabController,
          physics: BouncingScrollPhysics(),
          children: [
            CardViewLearn(),
            ImageLearnView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

enum _MyTabView {
  home, settings, favorite, profile
}

extension _MyTabViewExtension on _MyTabView {

  void home(){

  }
}
