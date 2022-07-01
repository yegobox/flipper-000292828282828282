import 'package:flipper_models/isar_models.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class UserAdd extends StatefulWidget {
  const UserAdd({Key? key}) : super(key: key);

  @override
  State<UserAdd> createState() => _UserAddState();
}

class _UserAddState extends State<UserAdd> {
  List<SyncF>? _users;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddUserViewModel>.reactive(
        onModelReady: (model) async {
          List<SyncF> users = await model.loadExistingUsers();
          setState(() {
            _users = users;
          });
        },
        viewModelBuilder: () => AddUserViewModel(),
        builder: (context, model, widget) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Add Users"),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  const Text("Top top"),
                  ListView(
                      shrinkWrap: true,
                      children: const [Text("start adding users")]),
                ],
              ),
            ),
          );
        });
  }
}
