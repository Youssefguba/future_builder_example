import 'package:dio/dio.dart';

class NetworkHelper {

  /// Get Photos
  Future<List<dynamic>> getPhotos() async {
    final Response response =
        await Dio().get('https://jsonplaceholder.typicode.com/photos');

    return response.data;
  }

  /// Get Posts
  Future<List<dynamic>> getPosts() async {
    final response =
        await Dio().get("https://jsonplaceholder.typicode.com/posts");
    return response.data;
  }

  /// Get Comments of Post
  Future<List<dynamic>> getCommentsOfPost(int postId) async {
    final response =
        await Dio().get("https://jsonplaceholder.typicode.com/posts/$postId/comments");
    return response.data;
  }
}
