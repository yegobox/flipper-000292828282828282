import 'package:flipper_models/realmExtension.dart';
import 'package:flipper_dashboard/RefundReasonForm.dart';
import 'package:flipper_models/mixins/TaxController.dart';
import 'package:flipper_models/power_sync/schema.dart';
import 'package:flipper_models/realm/schemas.dart';
import 'package:flipper_services/constants.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_ui/flipper_ui.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:talker_flutter/talker_flutter.dart';

class Refund extends StatefulHookConsumerWidget {
  const Refund(
      {super.key,
      required this.refundAmount,
      required this.transactionId,
      this.currency = "RWF",
      this.transaction});
  final double refundAmount;
  final String transactionId;
  final String? currency;
  final ITransaction? transaction;

  @override
  _RefundState createState() => _RefundState();
}

class _RefundState extends ConsumerState<Refund> {
  bool isRefundProcessing = false;
  bool isPrintingCopy = false;
  final talker = TalkerFlutter.init();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: Container(
        width: 300,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${widget.currency} ${widget.refundAmount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Transaction ID: ${widget.transactionId}',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 32),
                RefundReasonForm(),
                const SizedBox(height: 32),
                BoxButton(
                  borderRadius: 1,
                  title: widget.transaction?.isRefunded == true
                      ? "Refunded"
                      : "Refund",
                  onTap: () async {
                    if (widget.transaction!.isRefunded) {
                      toast("This is already refunded");
                      return;
                    }

                    if (widget.transaction!.customerId != null &&
                        widget.transaction!.customerId != 0) {
                      // Show modal to request purchase code
                      bool purchaseCodeReceived = await showPurchaseCodeModal();
                      if (purchaseCodeReceived) {
                        // Proceed with refund
                        await proceed(receiptType: "CR");
                      }
                    } else {
                      if (widget.transaction!.receiptType! == "CS") {
                        await proceed(receiptType: "CR");
                      } else {
                        // Proceed with refund without purchase code
                        await proceed(
                            receiptType: widget.transaction!.receiptType!);
                      }
                    }
                  },
                  busy: isRefundProcessing,
                ),
                const SizedBox(height: 16),
                BoxButton(
                  borderRadius: 1,
                  busy: isPrintingCopy,
                  title: "Print Copy Receipt",
                  onTap: () async {
                    if (widget.transaction!.customerId != null &&
                        widget.transaction!.customerId != 0) {
                      bool purchaseCodeReceived = await showPurchaseCodeModal();
                      if (purchaseCodeReceived) {
                        if (widget.transaction!.isRefunded) {
                          await handleReceipt(filterType: FilterType.CR);
                        } else {
                          await handleReceipt(filterType: FilterType.CS);
                        }
                      }
                    } else {
                      if (widget.transaction!.isRefunded) {
                        await handleReceipt(filterType: FilterType.CR);
                      } else {
                        await handleReceipt(filterType: FilterType.CS);
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getStringReceiptType(FilterType filterType) {
    switch (filterType) {
      case FilterType.CS:
        return 'CS';
      case FilterType.NR:
        return 'NR';
      case FilterType.CR:
        return 'CR';
      case FilterType.PS:
        return 'PS';
      case FilterType.TS:
        return 'TS';
      case FilterType.NS:
        return 'NS';
      default:
        return 'CS';
    }
  }

  Future<bool> showPurchaseCodeModal() async {
    bool purchaseCodeReceived = false;

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        String purchaseCode = '';

        return AlertDialog(
          title: Text('Enter Purchase Code'),
          content: TextField(
            onChanged: (value) {
              purchaseCode = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter purchase code',
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 16,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2.0,
                ),
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Close the dialog without saving
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Save the purchase code and mark as received
                ProxyService.box
                    .writeString(key: 'purchaseCode', value: purchaseCode);
                purchaseCodeReceived = true;
                Navigator.of(context).pop();
              },
              child: Text('Submit'),
            ),
          ],
        );
      },
    );

    return purchaseCodeReceived;
  }

// Common refund logic
  Future<void> proceed({required String receiptType}) async {
    if (receiptType == "CR") {
      await handleReceipt(filterType: FilterType.CR);
    } else if (receiptType == "CS") {
      await handleReceipt(filterType: FilterType.CS);
    } else if (receiptType == "NR") {
      await handleReceipt(filterType: FilterType.NR);
    }

    talker.error("RefundableTransactionId: ${int.parse(widget.transactionId)}");
    talker.error("RefundableBranchId: ${widget.transaction?.id}");

    // Add stock back to same item refunded
    try {
      List<TransactionItem> items = ProxyService.local.transactionItems(
          transactionId: int.parse(widget.transactionId),
          doneWithTransaction: true,
          branchId: widget.transaction!.branchId!,
          active: true);
      talker.error("Items to Refund: ${items.length}");

      for (TransactionItem item in items) {
        Variant? variant =
            ProxyService.local.variant(variantId: item.variantId);
        if (variant != null) {
          talker.info("Refund Variant to refund ${variant.toEJson()}");

          Stock? stock = ProxyService.local.stockByVariantId(
              variantId: variant.id!, branchId: variant.branchId!);

          if (stock != null) {
            talker.info("Refund Stock to refund ${stock.toEJson()}");
            ProxyService.local.realm!.writeN(
              tableName: stocksTable,
              writeCallback: () {
                stock.ebmSynced = false;
                stock.currentStock = stock.currentStock + item.qty;
                return stock;
              },
              onAdd: (data) {
                ProxyService.backUp.replicateData(stocksTable, data);
              },
            );

            ProxyService.local.realm!.writeN(
              tableName: variantTable,
              writeCallback: () {
                variant.ebmSynced = false;
                return variant;
              },
              onAdd: (data) {
                ProxyService.backUp.replicateData(variantTable, data);
              },
            );

            ProxyService.local.realm!.writeN(
              tableName: transactionTable,
              writeCallback: () {
                widget.transaction!.isRefunded = true;
                return widget.transaction;
              },
              onAdd: (data) {
                ProxyService.backUp.replicateData(transactionTable, data);
              },
            );
          }
        }
      }
    } catch (e) {
      talker.error(e);
    }
  }

  Future<void> handleReceipt({required FilterType filterType}) async {
    try {
      setState(() {
        if (filterType == FilterType.CS) {
          isPrintingCopy = true;
        } else {
          isRefundProcessing = true;
        }
      });

      await TaxController(object: widget.transaction)
          .handleReceipt(filterType: filterType);

      setState(() {
        if (filterType == FilterType.CS) {
          isPrintingCopy = false;
        } else {
          isRefundProcessing = false;
        }
      });
    } catch (e) {
      talker.critical(e);
      setState(() {
        if (filterType == FilterType.CS) {
          isPrintingCopy = false;
        } else {
          isRefundProcessing = false;
        }
      });
    }
  }
}
