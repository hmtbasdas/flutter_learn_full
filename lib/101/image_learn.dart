import 'package:flutter/material.dart';

class ImageLearnView extends StatelessWidget {

  final randomImage = "https://picsum.photos/200/300";

  const ImageLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.network(
            randomImage,
            loadingBuilder: (context, child, loadingBuilder){
              return child;
            },
            errorBuilder: (context, error, loading){
              return Text("hata");
            },
            frameBuilder: (context, child, as, value){
              return value ? CircularProgressIndicator() : Text("yogh");
            },
          )
        ],
      ),
    );
  }
}
