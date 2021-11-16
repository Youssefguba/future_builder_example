import 'package:flutter/material.dart';
import 'package:future_builder_example/model/post_model.dart';
import 'package:future_builder_example/screens/comment_screen.dart';

class PostWidget extends StatelessWidget {
  PostModel? post;

  PostWidget({this.post});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => CommentsScreen(postId: post!.postId)));
      },
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(post!.title!),
            ),
            Text(
              post!.post!,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
