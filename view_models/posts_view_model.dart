import 'package:dio/dio.dart';
import 'package:post_api_mvvm/models/post_model.dart';
import 'package:post_api_mvvm/repositories/posts/post_repository.dart';
import 'package:post_api_mvvm/repositories/posts/posts_api.dart';
import 'package:post_api_mvvm/view_models/post_veiw_model.dart';

class PostsViewModel {
  final String title = "All Posts";
  PostRepository? postsRepository;
  PostsViewModel({this.postsRepository});
  Future<List<PostViewModel>> fetchAllPosts() async {
    List<PostModel> list = await postsRepository!.getAllPosts();
    // a7na haka besh njibou el data el type mte3ha List<ViewModel>
    // so 9bal ma nab3thouha ll view mte3na lazem n7awlouha l List 3adiya
    // esh najmou na3mloulha loop bl ViewBuilder
    // so lazem nmapiwha mn PostModel type ll ViewModel type
    return list.map((post) => PostViewModel(postModel: post)).toList();
  }
}
