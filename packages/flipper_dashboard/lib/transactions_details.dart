import 'package:flipper_models/isar_models.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class TransactionDetail extends StatefulWidget {
  const TransactionDetail({Key? key, required this.order}) : super(key: key);
  final Order order;
  @override
  State<TransactionDetail> createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  List<Widget> _list({required List<OrderItem> items}) {
    return items
        .map((item) => Column(
              children: [
                Text(item.name),
                Container(
                  margin: const EdgeInsets.all(4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.wallet),
                      Text(item.price.toString()),
                    ],
                  ),
                ),
              ],
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BusinessHomeViewModel>.reactive(
        viewModelBuilder: () => BusinessHomeViewModel(),
        onModelReady: (model) async {
          List<OrderItem> items =
              await ProxyService.isarApi.orderItems(orderId: widget.order.id);
          model.completedOrderItems = items;
        },
        builder: (context, model, child) {
          return Flexible(
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Transactions'),
                elevation: 1,
              ),
              body: Column(
                children: [
                  // button
                  OutlinedButton(
                    onPressed: () {
                      debugPrint('Issue Refund');
                    },
                    child: const Text('Click Me'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      // debugPrint('New receipt');
                      // GoRouter.of(context).push(
                      //   Routes.afterSale + "/${order.subTotal}",
                      //   extra: order)
                    },
                    child: const Text('Click Me'),
                  ),
                  ..._list(items: model.completedOrderItems)
                ],
              ),
            ),
          );
        });
  }
}
