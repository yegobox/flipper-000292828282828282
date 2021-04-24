import 'package:flipper_dashboard/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:flipper_models/view_models/product_viewmodel.dart';
import 'package:stacked/stacked.dart';

import 'package:flipper_services/proxy.dart';

class ReceiveStock extends StatelessWidget {
  const ReceiveStock({Key? key, required this.variantId}) : super(key: key);
  final String variantId;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProductViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          appBar: CustomAppBar(
            onPop: () {
              ProxyService.nav.back();
            },
            disableButton: false,
            title: 'Receive stock',
            onPressedCallback: () {
              model.updateStock(variantId: variantId);
              ProxyService.nav.back();
            },
            showActionButton: true,
            rightActionButtonName: 'Save',
            icon: Icons.close,
            multi: 3,
            bottomSpacer: 52,
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 40, 40, 40),
              child: Column(
                children: <Widget>[
                  ReceiveStockInputWidget(variantId: variantId, model: model),
                  Container(
                    height: 20,
                  ),
                  const Text(
                      'Inventory tracking will be enabled by\n default for items with stock count. To turn \n tracking off, visit your flipper Dashboard')
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => ProductViewModel(),
    );
  }
}

class ReceiveStockInputWidget extends StatelessWidget {
  const ReceiveStockInputWidget(
      {Key? key, required this.variantId, required this.model})
      : super(key: key);

  final String variantId;
  final ProductViewModel model;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: '0',
      keyboardType: TextInputType.number,
      textDirection: TextDirection.rtl,
      autofocus: true,
      style: const TextStyle(color: Colors.black),
      onChanged: (String count) async {
        if (count != '') {
          model.setStockValue(value: double.parse(count));
        }
      },
      decoration: const InputDecoration(
        hintText: 'Add Stock',
        focusColor: Colors.blue,
      ),
    );
  }
}
