import 'package:flutter/material.dart';
import 'package:forcam_sft_ai/pages/shop_floor_terminal.dart';
import 'package:forcam_sft_ai/pages/workplace_list.dart';

import 'helpers/bridge_api/bridge_auth.dart';
import 'helpers/bridge_api/workplaces.dart';
import 'models/bridge_api/token.dart';

void main() {
  // getHttp();

  final BridgeAuth bridgeAuth = BridgeAuth();
  // Token token = bridgeAuth.getToken() as Token;

  bridgeAuth.getToken().then((result) {
    // print('ACCESS TOKEN: ' + result!.access_token);
    String accessToken = result!.access_token;

    final Workplaces workplaceHelper = Workplaces();

    workplaceHelper.getWorkplace(accessToken).then((result) {
      print(result!.properties.number);
    });

    workplaceHelper.getWorkplaces(accessToken).then((result) {
      print(result!.embedded.workplaces.first.properties.number);
    });

  });

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
