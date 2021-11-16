import 'package:flutter/material.dart';
import 'package:future_builder_example/model/comment_model.dart';
import 'package:future_builder_example/services/network_helper.dart';
import 'package:future_builder_example/widgets/comment_widget.dart';

class CommentsScreen extends StatefulWidget {
  final int? postId;
  const CommentsScreen({Key? key, this.postId}) : super(key: key);

  @override
  _CommentsScreenState createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  Future<List<dynamic>>? listOfComments;

  @override
  void initState() {
    super.initState();
    // get comment of post
    listOfComments = NetworkHelper().getCommentsOfPost(widget.postId!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments Screen'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: listOfComments,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                final commentModel =
                    CommentModel.fromMap(snapshot.data![index]);
                return CommentWidget(comment: commentModel);
              },
            );
            // }
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
