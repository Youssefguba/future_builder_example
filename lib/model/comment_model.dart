class CommentModel {
  final int? userId;
  final int? postId;
  final String? name;
  final String? email;
  final String? body;

  CommentModel({this.email, this.postId, this.name, this.userId, this.body});

  factory CommentModel.fromMap(Map<String, dynamic> map) {
    return CommentModel(
        userId: map['id'],
        postId: map['postId'],
        name: map['name'],
        body: map['body'],
        email: map['email']);
  }
}
