import 'package:dio/dio.dart';

class GetToken {
  void getAccessToken() async {
    try {
      var response = await Dio().get('https://www.google.com');
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
