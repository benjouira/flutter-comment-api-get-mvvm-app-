import 'package:dio/dio.dart';
import 'package:post_api_mvvm/models/post_model.dart';
import 'package:post_api_mvvm/repositories/posts/post_repository.dart';

class PostsAPI extends PostRepository {
  @override
  Future<List<PostModel>> getAllPosts() async {
    List<PostModel> posts = [];
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      var list = response.data as List;
      posts = list.map((post) => PostModel.fromJson(post)).toList();
    } catch (exception) {
      print(exception);
    }
    print(posts);
    return posts;
  }

  @override
  Future<PostModel> getPost(int id) {
    // TODO: implement getPost
    throw UnimplementedError();
  }
}
