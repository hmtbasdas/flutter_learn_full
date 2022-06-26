import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

import 'custom_exception.dart';

abstract class IFileDownload {

  void downloadItem(FileItem? fileItem);

  void toShare(String path) async {
    await launch(path);
  }
}

class FileDownload extends IFileDownload with ShareMixin {

  @override
  void downloadItem(FileItem? fileItem) {
    if(fileItem == null) throw FileDownloadException();

    print("err");
  }

  @override
  void toShowFile() {
    // TODO: implement toShowFile
  }

  /*@override
  void toShare(String path) {}*/
}

class SmsDownload implements IFileDownload{

  @override
  void downloadItem(FileItem? fileItem) {
    if(fileItem == null) throw FileDownloadException();

    print("err");
  }

  @override
  void toShare(String path) async {
    await launch("sms:$path");
  }

}

class VeliDownload implements ShareMixin {
  @override
  void downloadItem(FileItem? fileItem) {
    // TODO: implement downloadItem
  }

  @override
  void toShare(String path) {
    // TODO: implement toShare
  }

  @override
  void toShowFile() {
    // TODO: implement toShowFile
  }
  
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {

  void toShowFile();
}