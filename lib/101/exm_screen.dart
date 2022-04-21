import 'package:flutter/material.dart';

class ExmScreen extends StatelessWidget {

  final String _imagePath = "https://i.pinimg.com/originals/87/df/c4/87dfc4307ec9671201f234591609b87e.png";
  final String _title = "Create your first note";
  final String _desc = "Add a note ";

  final String _buttonText = "Create a Note";

  const ExmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(path: _imagePath),
            TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: SubtitleTextWidget(desc: _desc),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: (){

              },
              child: Text(
                _buttonText,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SubtitleTextWidget extends StatelessWidget {
  const SubtitleTextWidget({
    Key? key,
    required String desc, this.textAlign = TextAlign.center,
  }) : _desc = desc, super(key: key);

  final String _desc;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      _desc * 10,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required String title,
  }) : _title = title, super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Text(
      _title,
      style: Theme.of(context).textTheme.headline5?.copyWith(
        color: Colors.black,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class PngImage extends StatelessWidget {

  final String path;

  const PngImage({Key? key,required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      path,
      fit: BoxFit.cover,
      width: 200,
      height: 200,
    );
  }
}

