import 'package:flutter/material.dart';
import 'package:forcam_sft_ai/pages/shop_floor_terminal.dart';
import 'package:forcam_sft_ai/utils/dio_auth.dart';
import 'package:forcam_sft_ai/utils/get_token.dart';

void main() {
  // getHttp();
  GetToken token = new GetToken();
  token.getAccessToken();

  final DioAuth auth = DioAuth();
  auth.getToken();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forcam Force AI App',
      debugShowCheckedModeBanner: false,
      home: ShopFloorTerminal(),
    );
  }
}
