import 'package:flutter/material.dart';
import 'package:future_builder_example/bloc/post_bloc/post_bloc.dart';
import 'package:future_builder_example/model/post_model.dart';
import 'package:future_builder_example/services/network_helper.dart';
import 'package:future_builder_example/widgets/post_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {

  @override
  void initState() {
    super.initState();
    context.read<PostBloc>().add(GetPostsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts Screen'),
      ),
      body: BlocBuilder<PostBloc, PostStates>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(child: CircularProgressIndicator());
          }
          if(state is NoInternetConnectionState) {
            return Center(child: Text('No Internet Connection, try again'));
          }
          if (state is GetPostsState) {
          return ListView.builder(
              itemCount: state.posts.length,
              itemBuilder: (BuildContext context, int index) {
                final post = PostModel.fromMap(state.posts[index]);
                return PostWidget(post: post);
              },
            );
          }

          return SizedBox();
        },
      ),
    );
  }
}
