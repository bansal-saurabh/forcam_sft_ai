import 'package:flutter/material.dart';
import 'package:forcam_sft_ai/pages/shop_floor_terminal.dart';
import 'package:forcam_sft_ai/pages/workplace_list.dart';

import 'helpers/bridge_api/bridge_auth.dart';
import 'helpers/bridge_api/workplaces.dart';

void main() {
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
