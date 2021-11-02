import 'package:flutter/material.dart';
import 'package:future_builder_example/model/post_model.dart';

class PostWidget extends StatelessWidget {
  PostModel? post;
  PostWidget({this.post});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(post!.title!),
          ),
          Text(
            post!.title!,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );

  }
}
