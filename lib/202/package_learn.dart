import 'package:flutter/material.dart';
import 'package:flutterlearn/202/package/launch_manager.dart';
import 'package:flutterlearn/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with SingleTickerProviderStateMixin, LaunchMixin {

  final Uri url = Uri.parse("https://www.youtube.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          launchUrl(url);
        },
      ),
      body: const LoadingBar(),
    );
  }

  @override
  void overrideTest() {}
}

/*class Ahmet {

}

class Mehmet {

}

class Veli extends Ahmet with Mehmet {

}*/
