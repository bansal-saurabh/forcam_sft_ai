import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:forcam_sft_ai/pages/workplace_list.dart';

class ShopFloorTerminal extends StatefulWidget {
  const ShopFloorTerminal({Key? key}) : super(key: key);

  @override
  _ShopFloorTerminalState createState() => _ShopFloorTerminalState();
}

class _ShopFloorTerminalState extends State<ShopFloorTerminal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forcam Force AI SFT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WorkplaceList()),
                );
              },
              child: Text('Retrieve Workplace List'),
            )
          ],
        ),
      ),
    );
  }
}

void getHttp() async {
  try {
    var response = await Dio().get('https://www.google.com');
    print(response);
  } catch (e) {
    print(e);
  }
}
