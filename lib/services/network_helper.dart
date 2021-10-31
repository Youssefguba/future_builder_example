import 'package:dio/dio.dart';

class NetworkHelper {

  Future<List<dynamic>> getPhotos() async {
    final Response response =
        await Dio().get('https://jsonplaceholder.typicode.com/photos');

    return response.data;
  }
}
