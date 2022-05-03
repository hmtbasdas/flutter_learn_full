import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterlearn/202/service/comment_model.dart';
import 'package:flutterlearn/202/service/post_model.dart';

abstract class IPostService {
  Future<List<PostModel>?> fetchItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int id);
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> updateItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(PostModel postModel, int id);
}

class PostService implements IPostService {
  final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));

  @override
  Future<List<PostModel>?> fetchItemsAdvance() async {
    //try catch required
    final response = await _dio.get(_PostServicePath.posts.name);

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      return _data is List
          ? _data.map((e) => PostModel.fromJson(e)).toList()
          : null;
    } else {
      return null;
    }
  }

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    try{
      final response = await _dio.post(_PostServicePath.posts.name, data: postModel);

      return response.statusCode == HttpStatus.created;
    }
    on DioError catch(error){
      _ShowDebug.showDioError(error, this);
      return false;
    }
  }

  @override
  Future<bool> updateItemToService(PostModel postModel, int id) async {
    try{
      final response = await _dio.put("${_PostServicePath.posts.name}/$id", data: postModel);

      return response.statusCode == HttpStatus.ok;
    }
    on DioError catch(error){
      _ShowDebug.showDioError(error, this);
      return false;
    }
  }

  @override
  Future<bool> deleteItemToService(PostModel postModel, int id) async {
    try{
      final response = await _dio.delete("${_PostServicePath.posts.name}/$id");

      return response.statusCode == HttpStatus.ok;
    }
    on DioError catch(error){
      _ShowDebug.showDioError(error, this);
      return false;
    }
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int id) async {
    final response = await _dio.get(_PostServicePath.comments.name, queryParameters: {
      _PostQueryPath.postId.name : id,
    });

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      return _data is List
          ? _data.map((e) => CommentModel.fromJson(e)).toList()
          : null;
    } else {
      return null;
    }
  }
}

enum _PostServicePath { posts, comments }
enum _PostQueryPath { postId }

class _ShowDebug {
  static void showDioError<T>(DioError error, T type){
    if(kDebugMode){
      print(error.message);
      print(type);
    }
  }
}
