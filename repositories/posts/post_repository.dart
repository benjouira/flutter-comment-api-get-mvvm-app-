import 'package:post_api_mvvm/models/post_model.dart';

abstract class PostRepository {
  Future<List<PostModel>> getAllPosts();
  Future<PostModel> getPost(int id);
}
