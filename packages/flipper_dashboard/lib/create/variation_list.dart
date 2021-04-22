import 'package:flutter/material.dart';

import 'package:flipper_models/models/variant_stock.dart';

class VariationList extends StatelessWidget {
  const VariationList({Key? key, required this.variations}) : super(key: key);
  final List<VariantStock> variations;
  Widget _buildVariationsList({required List<VariantStock> variations}) {
    final List<Widget> list = <Widget>[];
    for (var i = 0; i < variations.length; i++) {
      //TODO: show regular when stocked! i.e stock is not 0
      if (variations[i].variantName != 'temp') {
        // &&
        // variations[i].variantName != 'Regular'
        list.add(
          Center(
            child: SizedBox(
              height: 90,
              width: 350,
              child: ListView(children: <Widget>[
                ListTile(
                  leading: const Icon(
                    Icons.dehaze,
                  ),
                  subtitle: Text(
                      '${variations[i].variantName} \nRWF ${variations[i].retailPrice}'),
                  trailing:
                      Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    FlatButton(
                      child: Text(
                        variations[i].currentStock == 0
                            ? 'Receive Stock'
                            : variations[i].currentStock.toString() +
                                ' ' +
                                'in Stock',
                      ),
                      onPressed: () {
                        // ProxyService.nav.navigateTo(
                        //   Routing.receiveStock,
                        //   arguments: ReceiveStockScreenArguments(
                        //     id: variations[i].id,
                        //   ),
                        // );
                      },
                    ),
                  ]),
                  dense: true,
                )
              ]),
            ),
          ),
        );
      }
    }
    return Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return _buildVariationsList(variations: variations);
  }
}
