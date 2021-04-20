import 'package:flutter/material.dart';
import 'package:flipper_models/view_models/product_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:flipper_services/proxy.dart';
import 'customappbar.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({Key? key}) : super(key: key);
  Future<bool> _onWillPop() async {
    // ignore: todo
    // TODO:show a modal for confirming if we want to exit
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      onModelReady: (model) {
        model.createTemporalProduct();
      },
      viewModelBuilder: () => ProductViewModel(),
      builder: (context, model, child) {
        return WillPopScope(
          onWillPop: _onWillPop,
          child: Scaffold(
            appBar: CustomAppBar(
              onPop: () {
                ProxyService.nav.back();
              },
              title: 'Create Product',
              disableButton: model.isLocked,
              showActionButton: true,
              onPressedCallback: () async {
                // await model.handleCreateItem();
                ProxyService.nav.back();
              },
              rightActionButtonName: 'Save',
              icon: Icons.close,
              multi: 3,
              bottomSpacer: 42,
            ),
            body: Container(
              child: Text('add Product'),
            ),
          ),
        );
      },
    );
  }
}
