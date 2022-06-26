import 'package:flutter/material.dart';
import 'package:flutterlearn/202/image_learn.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with SingleTickerProviderStateMixin {

  bool _isVisible = false;
  bool _isOpacity = false;

  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _isVisible = !_isVisible;
            controller.animateTo(_isVisible ? 1 : 0);
          });
        },
      ),
      body: Column(
        children: [
          AnimatedCrossFade(
            firstChild: /*ImagePaths.dice.toWidget(200)*/ textWidget(context),
            secondChild: SizedBox.shrink(),
            duration: Duration(milliseconds: 500),
            crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
          ListTile(
            title: AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: _isOpacity ? 1 : 0,
              child: Text(
                "sasasa",
              ),
            ),
            trailing: IconButton(
              onPressed: (){
                setState(() {
                  _isOpacity = !_isOpacity;
                });
              },
              icon: Icon(
                Icons.present_to_all_sharp
              ),
            ),
          ),
          AnimatedDefaultTextStyle(
            child: Text(
              "bu halıda",
            ),
            duration: Duration(milliseconds: 500),
            style: (_isVisible ? context.textTheme().subtitle2 : context.textTheme().subtitle1) ?? TextStyle(),
          ),
          AnimatedIcon(
            icon: AnimatedIcons.menu_arrow,
            progress: controller,
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 2000),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.green,
            margin: EdgeInsets.only(left: _isVisible ? 0 : 80),
          ),
          Expanded(
            child: Stack(
              children: [
                AnimatedPositioned(
                  child: Text("allah"),
                  duration: Duration(seconds: 1),
                  bottom: 40,
                  curve: Curves.fastOutSlowIn,
                )
              ],
            ),
          ),
          Expanded(
            child: AnimatedList(
                itemBuilder: (context, index, animation) {
                  return Text("ssadasdas");
                }),
          ),
        ],
      )
    );
  }

  Text textWidget(BuildContext context) {
    return Text(
      "data",
      style: context.textTheme().subtitle1,
    );
  }
}

extension BuildContextExtension on BuildContext {

  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}
