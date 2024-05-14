import 'package:flipper_dashboard/ImportWidget.dart';
import 'package:flipper_dashboard/PurchaseSalesWidget.dart';
import 'package:flipper_models/helperModels/RwApiResponse.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:overlay_support/overlay_support.dart';

class ImportPurchasePage extends StatefulWidget {
  @override
  _ImportPurchasePageState createState() => _ImportPurchasePageState();
}

class _ImportPurchasePageState extends State<ImportPurchasePage> {
  DateTime _selectedDate = DateTime.now();
  Future<RwApiResponse>? _futureImportResponse;
  Future<RwApiResponse>? _futurePurchaseResponse;
  Item? _selectedItem;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _supplyPrice = TextEditingController();
  final TextEditingController _retailPrice = TextEditingController();
  List<Item> finalItemList = [];
  List<ItemList> finalItemListPurchase = [];
  List<SaleList>? finalSaleList = [];
  GlobalKey<FormState> _importFormKey = GlobalKey<FormState>();

  bool isLoading = false;

  bool isImport = true;

  @override
  void initState() {
    super.initState();
  }

  Future<RwApiResponse> _fetchData({required DateTime selectedDate}) {
    String convertedDate = convertDateToString(selectedDate);
    if (isImport) {
      setState(() {
        isLoading = true;
      });
      final data = ProxyService.realm.selectImportItems(
        tin: ProxyService.box.tin(),
        bhfId: ProxyService.box.bhfId(),
        lastReqDt: convertedDate,
      );
      setState(() {
        isLoading = false;
      });
      return data;
    } else {
      setState(() {
        isLoading = true;
      });
      final data = ProxyService.tax.selectTrnsPurchaseSales(
        tin: ProxyService.box.tin(),
        bhfId: ProxyService.box.bhfId(),
        lastReqDt: convertedDate,
      );
      setState(() {
        isLoading = false;
      });
      return data;
    }
  }

  String convertDateToString(DateTime date) {
    // Define the desired output format
    final outputFormat = DateFormat('yyyyMMddHHmmss');

    // Format the date as desired
    return outputFormat.format(date);
  }

  void _pickDate() async {
    // working 03/31/2021 to get data from import API
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    // if (pickedDate != null && pickedDate != _selectedDate) {
    if (pickedDate != null) {
      if (isImport) {
        setState(() {
          _selectedDate = pickedDate;
          _futureImportResponse = _fetchData(selectedDate: _selectedDate);
          _selectedItem = null;
          _nameController.clear();
        });
      } else {
        setState(() async {
          _selectedDate = pickedDate;
          _futurePurchaseResponse = _fetchData(selectedDate: _selectedDate);
          finalSaleList = (await _futurePurchaseResponse)?.data?.saleList ?? [];
          _nameController.clear();
        });
      }
    }
  }

  void _selectItem(Item? item) {
    setState(() {
      _selectedItem = item;
      if (item != null) {
        _nameController.text = item.itemNm;
      } else {
        _nameController.clear();
      }
    });
  }

  void _selectItemPurchase(ItemList? item) {
    setState(() {
      if (item != null) {
        _nameController.text = item.itemNm;
      } else {
        _nameController.clear();
      }
    });
  }

  void _saveItemName() {
    if (_importFormKey.currentState?.validate() ?? false) {
      if (_selectedItem != null) {
        setState(() {
          _selectedItem!.itemNm = _nameController.text;
          _selectedItem!.supplyPrice = double.tryParse(_supplyPrice.text);
          _selectedItem!.retailPrice = double.tryParse(_retailPrice.text);
        });
        int index = finalItemList
            .indexWhere((item) => item.hsCd == _selectedItem!.hsCd);
        if (index != -1) {
          finalItemList[index].itemNm = _nameController.text;
        }
      }

      /// clear the field for next manipulation if there will be any!
      _nameController.clear();
      _supplyPrice.clear();
      _retailPrice.clear();
    }
  }

  Future<void> _acceptPurchase() async {
    try {
      setState(() {
        isLoading = true;
      });

      /// take finalItemList and submit for approval
      for (SaleList item in finalSaleList ?? []) {
        // call the api
        await ProxyService.tax.savePurchases(item: item);
      }
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      toast("Internal error, could not save");
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _acceptAllImport() async {
    try {
      setState(() {
        isLoading = true;
      });
      for (Item item in finalItemList) {
        await ProxyService.tax.updateImportItems(item: item);
      }
    } catch (e) {
      toast("Internal error, could not save");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Import From Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate)}',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Switch(
                        value: isImport,
                        onChanged: (value) {
                          setState(() {
                            isImport = value;
                          });
                        },
                      ),
                      Text(isImport ? "Import" : "Purchase"),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: _pickDate,
                        child: Text('Pick Date'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                isImport
                    ? ImportSalesWidget(
                        futureResponse: _futureImportResponse,
                        formKey: _importFormKey,
                        nameController: _nameController,
                        supplyPriceController: _supplyPrice,
                        retailPriceController: _retailPrice,
                        saveItemName: _saveItemName,
                        acceptAllImport: _acceptAllImport,
                        selectItem: (Item? selectedItem) {
                          _selectItem(selectedItem);
                        },
                        selectedItem: _selectedItem,
                        finalItemList: finalItemList,
                      )
                    : PurchaseSaleWidget(
                        futureResponse: _futurePurchaseResponse,
                        formKey: _importFormKey,
                        nameController: _nameController,
                        supplyPriceController: _supplyPrice,
                        retailPriceController: _retailPrice,
                        saveItemName: _saveItemName,
                        acceptPurchases: _acceptPurchase,
                        selectSale: (ItemList? selectedItem) {
                          _selectItemPurchase(selectedItem);
                        },
                        finalSalesList: finalItemListPurchase,
                        finalSaleList: finalSaleList ?? [],
                      )
              ],
            ),
          ),
        ),
        isLoading
            ? Center(
                child: CircularProgressIndicator(), // Or any other spinner
              )
            : Container(),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}