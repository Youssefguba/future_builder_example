part of 'post_bloc.dart';

abstract class PostStates {}

class InitialPostState extends PostStates {}

class GetPostsState extends PostStates {
  final List<dynamic> posts;
  GetPostsState(this.posts);
}

class NoInternetConnectionState extends PostStates {}

class NoDataFoundedState extends PostStates {}

class LoadingState extends PostStates {}