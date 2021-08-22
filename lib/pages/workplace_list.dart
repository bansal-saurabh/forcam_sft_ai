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
  final BridgeAuth bridgeAuth = BridgeAuth();
  final Workplaces workplaceHelper = Workplaces();

  late String accessToken;
  late List<Workplace> workplaces;

  @override
  void initState() {
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
                      child: Text(
                          snapshot.data!.embedded.workplaces[index].properties.number +
                          " : " +
                          snapshot.data!.embedded.workplaces[index].properties.description
                      ),
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
      ),
    );
  }
}
