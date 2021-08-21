import 'package:dio/dio.dart';
import 'package:forcam_sft_ai/models/bridge_api/token.dart';

import 'logging.dart';

class DioAuth {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl:
          'https://forcebridgehackathon.force.eco:25443/ffauth/oauth2.0/accessToken',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  )..interceptors.add(Logging());

  // final _baseUrlFaceAPI = 'https://reqres.in/api';

  // final _baseUrlBridgeAPI = 'https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3/';

  Future<Token?> getToken() async {
    Token? token;

    try {
      Response userData = await _dio.get(
          '?client_id=GitHub&client_secret=GitHub&grant_type=client_credentials&scope=read');
      print('Token Info: ${userData.data}');
      token = Token.fromJson(userData.data);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }

    return token;
  }
}
