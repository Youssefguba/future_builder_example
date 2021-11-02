class PostModel {
  final int? userId;
  final int? postId;
  final String? title;
  final String? post;

  PostModel({
    this.post,
    this.postId,
    this.title,
    this.userId,
  });

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      userId: map['userId'],
      postId: map['id'],
      title: map['title'],
      post: map['body'],
    );
  }
}
