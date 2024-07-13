// ignore_for_file: unused_result

import 'package:feather_icons/feather_icons.dart';
import 'package:flipper_models/realm/schemas.dart';
import 'package:flipper_models/view_models/mixins/riverpod_states.dart';
import 'package:flipper_services/constants.dart';
import 'package:flipper_services/proxy.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flipper_models/helperModels/extensions.dart';
import 'package:flutter/services.dart';

class QuickSellingView extends StatefulHookConsumerWidget {
  final GlobalKey<FormState> _formKey;
  final TextEditingController discountController;
  final TextEditingController receivedAmountController;
  final TextEditingController customerPhoneNumberController;
  final TextEditingController paymentTypeController;

  QuickSellingView({
    required GlobalKey<FormState> formKey,
    required this.discountController,
    required this.receivedAmountController,
    required this.customerPhoneNumberController,
    required this.paymentTypeController,
  }) : _formKey = formKey;

  @override
  _QuickSellingViewState createState() => _QuickSellingViewState();
}

class _QuickSellingViewState extends ConsumerState<QuickSellingView> {
  // static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<TransactionItem> transactionItems = [];
  final List<String> _customerTypes = [
    'Cash',
    'MOMO MTN',
    'Card',
  ];
  String _selectedPaymentMethod = 'Cash'; // Track the selected payment method

  double get grandTotal {
    double total = 0.0;
    double compositeTotal = 0.0;
    int compositeCount = 0;

    for (var item in transactionItems) {
      if (item.compositePrice != 0) {
        compositeTotal = item.compositePrice;
        compositeCount++;
      } else {
        total += item.price * item.qty;
      }
    }

    // If all items are composite, return just the compositeTotal
    if (compositeCount == transactionItems.length) {
      return compositeTotal;
    }

    // Otherwise, return the sum of regular items and composite items
    return total + compositeTotal;
  }

  double get totalAfterDiscountAndShipping {
    double discount = double.tryParse(widget.discountController.text) ?? 0.0;

    // double shipping =
    //     double.tryParse(widget.receivedAmountController.text) ?? 0.0;
    return grandTotal - discount + 0;
  }

  @override
  Widget build(BuildContext context) {
    final transaction =
        ref.watch(pendingTransactionProvider(TransactionType.sale));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final transactionItemsNotifier =
          ref.watch(transactionItemsProvider(transaction.value?.id!).notifier);
      transactionItemsNotifier.updatePendingTransaction();
    });
    final transactionItemsAsyncValue =
        ref.watch(transactionItemsProvider(transaction.value?.id));

    return transactionItemsAsyncValue.when(
        data: (items) {
          transactionItems = items;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Table(
                    columnWidths: {
                      0: FlexColumnWidth(3),
                      1: FlexColumnWidth(1),
                      2: FlexColumnWidth(2),
                      3: FlexColumnWidth(1),
                      4: FlexColumnWidth(1),
                    },
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Product',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Price',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Qty',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Total',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      if (transactionItems.isEmpty)
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'No data available',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(''),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(''),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(''),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(''),
                            ),
                          ],
                        )
                      else
                        for (var item in items)
                          TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      item.name?.extractNameAndNumber() !=
                                                  null &&
                                              item.name!
                                                      .extractNameAndNumber()
                                                      .length >=
                                                  5
                                          ? item.name!
                                              .extractNameAndNumber()
                                              .substring(0, 5)
                                          : item.name?.extractNameAndNumber() ??
                                              "",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(item.price.toStringAsFixed(0)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Colors.red,
                                      child: IconButton(
                                        icon: Icon(Icons.remove,
                                            color: Colors.white),
                                        onPressed: () {
                                          /// if item is not part of composite then we are allowed to
                                          /// modify the qty while selling
                                          if (!item.partOfComposite) {
                                            ProxyService.realm.realm!.write(() {
                                              if (item.qty > 0) item.qty--;
                                            });
                                            ref.refresh(
                                                transactionItemsProvider(
                                                    transaction.value?.id));
                                          }
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 1.0),
                                      child: Text(item.qty.toString()),
                                    ),
                                    Container(
                                      color: Colors.blue,
                                      child: IconButton(
                                        icon: Icon(Icons.add,
                                            color: Colors.white),
                                        onPressed: () {
                                          /// if item is not part of composite then we are allowed to
                                          /// modify the qty while selling
                                          if (!item.partOfComposite) {
                                            ProxyService.realm.realm!.write(() {
                                              if (item.qty > 0) item.qty++;
                                            });
                                            ref.refresh(
                                                transactionItemsProvider(
                                                    transaction.value?.id));
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    (item.price * item.qty).toStringAsFixed(0)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    if (!item.partOfComposite) {
                                      try {
                                        ProxyService.realm.realm!.write(() {
                                          ProxyService.realm.realm!
                                              .delete(item);
                                        });
                                        ref.refresh(transactionItemsProvider(
                                            transaction.value?.id));
                                      } catch (e) {
                                        talker.error(e);
                                      }
                                    } else {
                                      Composite coo = ProxyService.realm
                                          .composite(
                                              variantId: item.variantId!);

                                      talker.warning(
                                          "ProductId:${coo.productId}");
                                      final composites = ProxyService.realm
                                          .composites(
                                              productId: coo.productId!);

                                      // Batch delete operation

                                      for (final composite in composites) {
                                        final deletableItem = ProxyService.realm
                                            .getTransactionItemByVariantId(
                                                variantId:
                                                    composite.variantId!);

                                        if (deletableItem != null) {
                                          ProxyService.realm.realm!.write(() {
                                            ProxyService.realm.realm!
                                                .delete(deletableItem);
                                          });
                                        }
                                        ref.refresh(transactionItemsProvider(
                                            transaction.value?.id));
                                      }
                                      ref.refresh(transactionItemsProvider(
                                          transaction.value?.id));
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Grand Total: \ ${grandTotal.toRwf()}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Form(
                    key: widget._formKey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: widget.discountController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Discount',
                                  labelStyle: const TextStyle(
                                    // Add labelStyle
                                    color: Colors.black,
                                  ),
                                  suffixIcon: Icon(
                                    FluentIcons.shopping_bag_percent_24_regular,
                                    color: Colors.blue,
                                  ),
                                  border: OutlineInputBorder(),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                  // When in error state and focused
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                ),
                                onChanged: (value) => null,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty)
                                    return null;
                                  final number = double.tryParse(value);
                                  if (number == null) {
                                    return 'Please enter a valid number';
                                  }
                                  if (number < 0 || number > 100) {
                                    return 'Discount must be between 0 and 100';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: TextFormField(
                                controller: widget.receivedAmountController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Received Amount',
                                  labelStyle: const TextStyle(
                                    // Add labelStyle
                                    color: Colors.black,
                                  ),
                                  suffixIcon: Icon(
                                    FeatherIcons.dollarSign,
                                    color: Colors.blue,
                                  ),
                                  border: OutlineInputBorder(),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                  // When in error state and focused
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                ),
                                onChanged: (value) => null,
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter received amount';
                                  }
                                  final number = double.tryParse(value);
                                  if (number == null) {
                                    return 'Please enter a valid number';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 6.0,
                          height: 6,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller:
                                    widget.customerPhoneNumberController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: 'Customer Phone number',
                                  labelStyle: const TextStyle(
                                    // Add labelStyle
                                    color: Colors.black,
                                  ),
                                  suffixIcon: Icon(
                                    FluentIcons.call_20_regular,
                                    color: Colors.blue,
                                  ),
                                  border: OutlineInputBorder(),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                  // When in error state and focused
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .error),
                                  ),
                                ),
                                onChanged: (value) => ProxyService.box
                                    .writeString(
                                        key: 'currentSaleCustomerPhoneNumber',
                                        value: value),
                                validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter a phone number';
                                  }
                                  // Regular expression for validating a phone number without a leading zero
                                  final phoneExp = RegExp(r'^[1-9]\d{8}$');
                                  if (!phoneExp.hasMatch(value)) {
                                    return 'Please enter a valid 9-digit phone number without a leading zero';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Expanded(
                              child: TextFormField(
                                controller: widget.paymentTypeController,
                                keyboardType: TextInputType.text,
                                readOnly: true,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please select or enter a payment method';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'Payment Method',
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400,
                                        width: 1.0),
                                  ),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      DropdownButton<String>(
                                        isDense: true,
                                        alignment:
                                            AlignmentDirectional.topStart,
                                        value: _selectedPaymentMethod,
                                        icon: const Icon(Icons.arrow_drop_down),
                                        elevation: 16,
                                        style: const TextStyle(
                                            color: Colors.black),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.transparent,
                                        ),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            _selectedPaymentMethod = newValue!;
                                            // Update the TextFormField's controller
                                            widget.paymentTypeController.text =
                                                newValue;
                                          });
                                        },
                                        items: _customerTypes
                                            .map<DropdownMenuItem<String>>(
                                          (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          },
                                        ).toList(),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          FluentIcons
                                              .credit_card_clock_20_regular,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Total - Discount: \ ${totalAfterDiscountAndShipping.toRwf()}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              final transaction = ref.watch(
                                  pendingTransactionProvider(
                                      TransactionType.sale));
                              Clipboard.setData(ClipboardData(
                                  text:
                                      transaction.asData!.value.id.toString()));
                              showSnackBar(
                                  context, "TransactionId copied to keypad ",
                                  textColor: Colors.white,
                                  backgroundColor: Colors.blueAccent);
                            },
                            child: Text(
                              "ID: ${transaction.asData?.value.id.toString()} ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        loading: () => CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'));
  }
}