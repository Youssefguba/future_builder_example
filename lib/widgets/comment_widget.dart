import 'package:flutter/material.dart';
import 'package:future_builder_example/model/comment_model.dart';

class CommentWidget extends StatelessWidget {
  CommentModel? comment;
  CommentWidget({this.comment});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(comment!.name!),
            ),
            Text(
              comment!.body!,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
