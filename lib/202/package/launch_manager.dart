import 'package:url_launcher/url_launcher.dart';

mixin LaunchMixin {

  void overrideTest();

  void launchUrl(Uri url) async {
    if (!await canLaunchUrl(url)) throw 'Could not launch $url';
  }
}