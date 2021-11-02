import 'package:post_api_mvvm/models/post_model.dart';
import 'package:post_api_mvvm/repositories/posts/post_repository.dart';

class PostsLocal extends PostRepository {
  @override
  Future<List<PostModel>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPost(int id) {
    // TODO: implement getPost
    throw UnimplementedError();
  }
}
