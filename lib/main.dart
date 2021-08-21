import 'package:flutter/material.dart';
import 'package:forcam_sft_ai/pages/shop_floor_terminal.dart';

void main() {
  getHttp();
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
