import 'package:flutter/material.dart';
import 'package:future_builder_example/model/post_model.dart';
import 'package:future_builder_example/services/network_helper.dart';
import 'package:future_builder_example/widgets/post_widget.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  Future<List<dynamic>>? listOfPosts;

  @override
  void initState() {
    super.initState();
    listOfPosts = NetworkHelper().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts Screen'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: listOfPosts,
        builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  final post =
                      PostModel.fromMap(snapshot.data![index]);
                  return PostWidget(post: post);
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
