class PostModel {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int? id;
  String title;
  String body;

  PostModel2({this.userId = 0, this.id, required this.title, required this.body});
}

class PostModel3 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel3({this.userId, this.id, this.title, this.body});
}