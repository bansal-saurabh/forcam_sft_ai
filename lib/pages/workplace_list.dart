import 'package:flutter/material.dart';
import 'package:forcam_sft_ai/helpers/bridge_api/bridge_auth.dart';
import 'package:forcam_sft_ai/helpers/bridge_api/workplaces.dart';
import 'package:forcam_sft_ai/models/bridge_api/workplace.dart';
import 'package:forcam_sft_ai/models/bridge_api/workplace_collection.dart';

class WorkplaceList extends StatefulWidget {
  const WorkplaceList({Key? key, required this.apiToken}) : super(key: key);

  final String apiToken;

  @override
  _WorkplaceListState createState() => _WorkplaceListState();
}

class _WorkplaceListState extends State<WorkplaceList> {
  late String accessToken;

  final BridgeAuth bridgeAuth = BridgeAuth();
  // Token token = bridgeAuth.getToken() as Token;

  final Workplaces workplaceHelper = Workplaces();

  late List<Workplace> workplaces;

  @override
  void initState() {
    // bridgeAuth.getToken().then((result) {
    //   // print('ACCESS TOKEN: ' + result!.access_token);
    //   accessToken = result!.access_token;
    //
    //   workplaceHelper.getWorkplace(accessToken).then((result) {
    //     print(result!.properties.number);
    //   });
    //
    //   // workplaceHelper.getWorkplaces(accessToken)!.then((result) {
    //   //   print(result!.embedded.workplaces.first.properties.number);
    //   //   print(result.embedded.workplaces);
    //   //
    //   //   workplaces = result.embedded.workplaces;
    //   //
    //   // });
    //
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workplace List'),
      ),
      body: Center(
        child: FutureBuilder<WorkplaceCollection?>(
          future: workplaceHelper.getWorkplaces(widget.apiToken),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.embedded.workplaces.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Center(
                      child: Text(snapshot
                          .data!.embedded.workplaces[index].properties.number
                          + " : " + snapshot.data!.embedded.workplaces[index].properties.description ),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),

        // ListView.builder(
        //   itemCount: workplaces.length,
        //   itemBuilder: (context, index) {
        //     return ListTile(
        //       title: Text(workplaces[index].properties.number),
        //     );
        //   },
        // ),
      ),
    );
  }
}
