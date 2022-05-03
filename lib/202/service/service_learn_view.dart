import 'package:flutter/material.dart';
import 'package:flutterlearn/202/service/comments_learn_view.dart';
import 'package:flutterlearn/202/service/post_model.dart';
import 'package:flutterlearn/202/service/post_service.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({Key? key}) : super(key: key);

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {

  List<PostModel>? _items;
  bool _isLoading = false;

  //final String _path = "https://jsonplaceholder.typicode.com";
  //late final Dio _networkManager;

  // TEST kod
  late final IPostService _postService;

  @override
  void initState() {
    super.initState();

    /*_networkManager = Dio(
      BaseOptions(
        baseUrl: _path,
      ),
    );*/

    _postService = PostService();

    fetchItemsAdvance();
  }

  void _changeLoading(){
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  void fetchItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fetchItemsAdvance();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator() : SizedBox.shrink(),
        ],
      ),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return PostCard(
            model: _items?[index],
          );
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    Key? key,
    required PostModel? model,
  }) : _model = model, super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => CommentsLearnView(postId: _model?.id ?? 0,)));
        },
        title: Text(
          _model?.title ?? "",
        ),
        subtitle: Text(
          _model?.body ?? "",
        ),
      ),
    );
  }
}
