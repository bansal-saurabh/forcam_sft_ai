import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:forcam_sft_ai/models/bridge_api/workplace.dart';
import 'package:forcam_sft_ai/models/bridge_api/workplace_collection.dart';

import 'package:forcam_sft_ai/utils/logging.dart';

class Workplaces {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl:
          'https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3/',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  )..interceptors.add(Logging());

  // final _baseUrlBridgeAPI = 'https://forcebridgehackathon.force.eco:24443/ffwebservices/api/v3/';

  Future<Workplace?> getWorkplace(String accessToken) async {
    Workplace? workplace;

    try {
      _dio.options.headers['Authorization'] = 'Bearer $accessToken';
      _dio.options.headers['Content-Type'] = 'application/json';
      Response workplaceData = await _dio.get('workplaces/6C0A7352FA2348FBA0EB876815EB8781');
      // print('Workplace Info: ${workplaceData.data}');
      workplace = Workplace.fromJson(json.decode(workplaceData.data));
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

    return workplace;
  }

  Future<WorkplaceCollection?> getWorkplaces(String accessToken) async {
    WorkplaceCollection? workplaces;

    try {
      _dio.options.headers['Authorization'] = 'Bearer $accessToken';
      _dio.options.headers['Content-Type'] = 'application/json';
      Response workplaceData = await _dio.get('workplaces');
      // print('Workplaces Info: ${workplaceData.data}');
      workplaces = WorkplaceCollection.fromJson(json.decode(workplaceData.data));
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

    return workplaces;
  }
}
