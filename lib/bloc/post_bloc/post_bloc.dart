import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_builder_example/services/network_helper.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvents, PostStates> {
  PostBloc({PostStates? initialState}) : super(initialState!) {
    on<PostEvents>((event, emit) async {
      // Start Code
      if (event is GetPostsEvent) {
        try {
          emit(LoadingState());
          List<dynamic> posts = await NetworkHelper().getPosts();
          emit(GetPostsState(posts));
        } on SocketException catch (e){
          emit(NoInternetConnectionState());
        }
      }
      // End Code
    });
  }
}
