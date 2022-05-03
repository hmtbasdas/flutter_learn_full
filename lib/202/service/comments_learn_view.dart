import 'package:flutter/material.dart';
import 'package:flutterlearn/202/service/comment_model.dart';
import 'package:flutterlearn/202/service/post_service.dart';

class CommentsLearnView extends StatefulWidget {
  const CommentsLearnView({this.postId, Key? key}) : super(key: key);

  final int? postId;

  @override
  State<CommentsLearnView> createState() => _CommentsLearnViewState();
}

class _CommentsLearnViewState extends State<CommentsLearnView> {

  late final IPostService _postService;
  bool _isLoading = false;
  List<CommentModel>? _commentList;

  @override
  void initState() {
    super.initState();

    _postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }

  void fetchItemsWithId(int id) async {
    _changeLoading();

    _commentList = await _postService.fetchRelatedCommentsWithPostId(id);

    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _commentList?.length ?? 0,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              title: Text(
                _commentList?[index].name ?? "",
              ),
              subtitle: Text(
                _commentList?[index].body ?? "",
              ),
            ),
          );
        },
      ),
    );
  }
}
