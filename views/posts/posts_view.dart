import 'package:flutter/material.dart';
import 'package:post_api_mvvm/repositories/posts/posts_api.dart';
import 'package:post_api_mvvm/view_models/post_veiw_model.dart';
import 'package:post_api_mvvm/view_models/posts_view_model.dart';

class PostsView extends StatefulWidget {
  PostsView({Key? key}) : super(key: key);

  @override
  _PostsViewState createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  // dependency injection
  var postsVM = PostsViewModel(
      postsRepository:
          PostsAPI() /*lehna n7otou selon m3a chnowa bech net3amlu sql, api wela test*/);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsVM.title),
      ),
      body: Center(
          child: FutureBuilder<List<PostViewModel>>(
        future: postsVM.fetchAllPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else {
            var posts = snapshot.data;
            return ListView.builder(
                itemCount: posts?.length,
                itemBuilder: (context, index) => ListTile(
                      title: Text(posts![index].title),
                    ));
          }
        },
      )),
    );
  }
}
