import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  dynamic post;
  PostWidget({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: Text(post['name']),
            subtitle: Text(post['email']),
          ),
          Text(
            post['body'],
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
