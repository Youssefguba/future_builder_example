import 'package:flutter/material.dart';
import 'package:future_builder_example/services/network_helper.dart';
import 'package:future_builder_example/widgets/album_widget.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  Future<List<dynamic>>? listOfPhotos;

  @override
  void initState() {
    super.initState();
    listOfPhotos = NetworkHelper().getPhotos();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Album')),
      body: FutureBuilder<List<dynamic>>(
        future: listOfPhotos,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
              itemBuilder: (context, index) {
                return AlbumWidget(album: snapshot.data![index]);
              },
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
