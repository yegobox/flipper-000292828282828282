import 'dart:developer';

import 'package:flipper_dashboard/Refund.dart';
import 'package:flipper_dashboard/popup_modal.dart';
import 'package:flipper_models/realm/schemas.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_socials/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:talker_flutter/talker_flutter.dart';

class DataView extends StatefulWidget {
  const DataView(
      {super.key,
      required this.transactions,
      required this.startDate,
      required this.endDate,
      required this.workBookKey,
      required this.showPluReport});

  final List<ITransaction> transactions;
  final DateTime startDate;
  final DateTime endDate;
  final GlobalKey<SfDataGridState> workBookKey;
  final bool showPluReport;

  @override
  _DataViewState createState() => _DataViewState();
}

final int rowsPerPage = 10;
List<ITransaction> transactions = [];

class _DataViewState extends State<DataView> {
  bool isProcessing = false;
  static const double dataPagerHeight = 60;
  late TransactionDataSource _transactionDataSource;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    transactions = widget.transactions;
    _transactionDataSource =
        TransactionDataSource(showPluReport: widget.showPluReport);
    _transactionDataSource.addListener(updateWidget);
  }

  @override
  void dispose() {
    _transactionDataSource.removeListener(updateWidget);
    super.dispose();
  }

  updateWidget() {
    setState(() {});
  }

  final talker = TalkerFlutter.init();

  void handleCellTap(DataGridCellTapDetails details) {
    final rowIndex = details.rowColumnIndex.rowIndex;
    if (rowIndex < 1 || rowIndex > transactions.length) return;

    final transaction =
        transactions[pageIndex == 0 ? rowIndex - 1 : rowIndex - 1];

    talker.warning(
        'Tapped row: ID = ${transaction.id}, Name = ${transaction.subTotal}');
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) => OptionModal(
        child: Refund(
          refundAmount: transaction.subTotal,
          transactionId: transaction.id.toString(),
          currency: "RWF",
          transaction: transaction,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const EdgeInsets headerPadding =
        EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);

    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (model) {},
      builder: (context, model, child) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (context, constraint) {
              return Column(
                children: [
                  Expanded(
                    child: SfDataGridTheme(
                      data: SfDataGridThemeData(
                        headerHoverColor: Colors.yellow,
                        gridLineColor: Colors.amber,
                        gridLineStrokeWidth: 1.0,
                        rowHoverColor: Colors.yellow,
                        selectionColor: Colors.yellow,
                        rowHoverTextStyle: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                      ),
                      child: SizedBox(
                        height: constraint.maxHeight - dataPagerHeight,
                        width: constraint.maxWidth,
                        child: SfDataGrid(
                          rowsPerPage: rowsPerPage,
                          allowFiltering: true,
                          highlightRowOnHover: true,
                          gridLinesVisibility: GridLinesVisibility.both,
                          headerGridLinesVisibility: GridLinesVisibility.both,
                          key: widget.workBookKey,
                          source: _transactionDataSource,
                          columnWidthMode: ColumnWidthMode.fill,
                          onCellTap: handleCellTap,
                          columns: widget.showPluReport
                              ? pluReportTableHeader(headerPadding)
                              : zReportTableHeader(headerPadding),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: dataPagerHeight,
                    child: SfDataPager(
                      lastPageItemVisible: false,
                      nextPageItemVisible: false,
                      delegate: _transactionDataSource,
                      pageCount: (widget.transactions.length / rowsPerPage)
                          .ceilToDouble(),
                      direction: Axis.horizontal,
                      onPageNavigationEnd: (index) {
                        log("Page Index ${index}");
                        setState(() {
                          pageIndex = index;
                        });
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  List<GridColumn> pluReportTableHeader(EdgeInsets headerPadding) {
    return <GridColumn>[
      GridColumn(
        columnName: 'Item Code',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('Item Code', overflow: TextOverflow.ellipsis),
        ),
      ),
      GridColumn(
        columnName: 'Name',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('Name', overflow: TextOverflow.ellipsis),
        ),
      ),
      GridColumn(
        columnName: 'Price',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('Pricw', overflow: TextOverflow.ellipsis),
        ),
      ),
      GridColumn(
        columnName: 'Tax Rate',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('TaxRate', overflow: TextOverflow.ellipsis),
        ),
      ),
      GridColumn(
        columnName: 'Stock Remain',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('Stock remain', overflow: TextOverflow.ellipsis),
        ),
      ),
    ];
  }

  List<GridColumn> zReportTableHeader(EdgeInsets headerPadding) {
    return <GridColumn>[
      GridColumn(
        columnName: 'id',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('ID', overflow: TextOverflow.ellipsis),
        ),
      ),
      GridColumn(
        columnName: 'Type',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('Type', overflow: TextOverflow.ellipsis),
        ),
      ),
      GridColumn(
        columnName: 'Amount',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('Amount', overflow: TextOverflow.ellipsis),
        ),
      ),
      GridColumn(
        columnName: 'CashReceived',
        label: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(4.0),
          ),
          padding: headerPadding,
          alignment: Alignment.center,
          child: const Text('Cash Received', overflow: TextOverflow.ellipsis),
        ),
      ),
    ];
  }
}

class TransactionDataSource extends DataGridSource {
  TransactionDataSource({required this.showPluReport}) {
    buildPaginatedDataGridRows();
  }
  final bool showPluReport;

  List<DataGridRow> dataGridRows = [];

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map<Widget>((e) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: Text(e.value.toString()),
        );
      }).toList(),
    );
  }

  @override
  Future<bool> handlePageChange(int oldPageIndex, int newPageIndex) async {
    final int startRowIndex = newPageIndex * rowsPerPage;
    final int endIndex = startRowIndex + rowsPerPage;

    if (startRowIndex < transactions.length) {
      transactions.sublist(
        startRowIndex,
        endIndex > transactions.length ? transactions.length : endIndex,
      );
      buildPaginatedDataGridRows();
      notifyListeners();
    }
    return true;
  }

  void buildPaginatedDataGridRows() {
    if (showPluReport) {
      List<TransactionItem> items = ProxyService.realm.transactionItems(
          transactionId: transactions.first.id!,
          doneWithTransaction: true,
          active: false);

      dataGridRows = items.map<DataGridRow>((item) {
        Stock? stock =
            ProxyService.realm.stockByVariantId(variantId: item.variantId!);

        return DataGridRow(cells: [
          DataGridCell<String>(
              columnName: 'Item code', value: item.itemClsCd!.toString()),
          DataGridCell<String>(columnName: 'Name', value: item.name ?? "-"),
          DataGridCell<double>(columnName: 'Price', value: item.price),
          DataGridCell<double>(columnName: 'Tax Rate', value: 18),
          DataGridCell<double>(
              columnName: 'Stock Remain', value: stock?.currentStock),
        ]);
      }).toList();
    } else {
      dataGridRows = transactions.map<DataGridRow>((transaction) {
        return DataGridRow(cells: [
          DataGridCell<String>(
              columnName: 'id', value: transaction.id!.toString()),
          DataGridCell<String>(
              columnName: 'Type', value: transaction.receiptType ?? "-"),
          DataGridCell<double>(
              columnName: 'Amount', value: transaction.subTotal),
          DataGridCell<double>(
              columnName: 'CashReceived', value: transaction.cashReceived),
        ]);
      }).toList();
    }
  }
}
