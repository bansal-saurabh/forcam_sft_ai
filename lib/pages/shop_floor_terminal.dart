import 'package:flutter/material.dart';
import 'package:forcam_sft_ai/helpers/bridge_api/bridge_auth.dart';
import 'package:forcam_sft_ai/models/bridge_api/token.dart';
import 'package:forcam_sft_ai/pages/workplace_list.dart';
import 'package:forcam_sft_ai/utils/file_picker_util.dart';

class ShopFloorTerminal extends StatefulWidget {
  const ShopFloorTerminal({Key? key}) : super(key: key);

  @override
  _ShopFloorTerminalState createState() => _ShopFloorTerminalState();
}

class _ShopFloorTerminalState extends State<ShopFloorTerminal> {

  late final BridgeAuth bridgeAuth;
  late String accessToken;

  @override
  void initState() {
    bridgeAuth = BridgeAuth();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forcam Force AI SFT'),
      ),
      body: Center(
        child: FutureBuilder<Token?>(
          future: bridgeAuth.getToken(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              // print(snapshot.data!.access_token);
              accessToken = snapshot.data!.access_token;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FilePickerUtil()),
                      );
                    },
                    child: Text('Authenticate SFT User'),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WorkplaceList(apiToken: accessToken)),
                      );
                    },
                    child: Text('Retrieve Workplace List'),
                  )
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
