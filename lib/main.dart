import 'package:flutter/material.dart';
import 'package:future_builder_example/screens/album_screen.dart';
import 'package:future_builder_example/widgets/album_widget.dart';

import 'screens/posts_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostsScreen(),
    );
  }
}






