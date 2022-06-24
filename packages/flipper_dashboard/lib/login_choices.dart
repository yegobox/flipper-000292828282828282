import 'package:flipper_models/isar_models.dart';
import 'package:flipper_routing/routes.router.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stacked/stacked.dart';

class LoginChoices extends StatefulWidget {
  const LoginChoices({Key? key}) : super(key: key);

  @override
  State<LoginChoices> createState() => _LoginChoicesState();
}

class _LoginChoicesState extends State<LoginChoices> {
  List<Business> _businesses = [];
  late List<Branch> _branches = [];
  var isNext = false;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BusinessHomeViewModel>.reactive(
        viewModelBuilder: () => BusinessHomeViewModel(),
        onModelReady: (model) async {
          String? userId = ProxyService.box.getUserId();
          _businesses = await ProxyService.isarApi.businesses(userId: userId!);
        },
        builder: (context, model, child) {
          return Scaffold(
            body: !isNext
                ? ListView(
                    children: _businesses
                        .map((e) => GestureDetector(
                            onTap: () async {
                              model.setDefaultBusiness(business: e);
                              _branches = await ProxyService.isarApi
                                  .branches(businessId: e.id);
                              setState(() {
                                isNext = true;
                              });
                            },
                            child: Text(e.name!)))
                        .toList(),
                  )
                : ListView(
                    children: _branches
                        .map((e) => GestureDetector(
                            onTap: () async {
                              model.setDefaultBranch(branch: e);
                              if (await ProxyService.isarApi.isDrawerOpen(
                                      cashierId:
                                          ProxyService.box.getBusinessId()!) ==
                                  null) {
                                GoRouter.of(context).push("/drawer/open");
                              }
                              GoRouter.of(context).go(Routes.home);
                            },
                            child: Text(e.name!)))
                        .toList(),
                  ),
          );
        });
  }
}
