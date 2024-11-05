import 'dart:io';
import 'dart:math';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flipper_models/helperModels/random.dart';
import 'package:flipper_models/helperModels/talker.dart';
import 'package:flipper_models/realm/schemas.dart';
import 'package:firestore_models/configurations.dart' as config;
import 'package:flipper_models/view_models/mixins/riverpod_states.dart';
import 'package:flipper_services/proxy.dart';
import 'package:flipper_ui/flipper_ui.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:excel/excel.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:realm/realm.dart';
import 'package:flipper_models/realmExtension.dart';
import 'package:flipper_models/power_sync/schema.dart';
import 'package:flipper_models/helperModels/extensions.dart';
import 'package:flutter/services.dart';

class Item {
  final String barCode;
  final String name;
  final String category;
  String price;

  Item({
    required this.barCode,
    required this.name,
    required this.category,
    required this.price,
  });

  @override
  String toString() {
    return 'Item(barCode: $barCode, name: $name, category: $category, price: $price)';
  }
}

class BulkAddProduct extends StatefulHookConsumerWidget {
  const BulkAddProduct({super.key});

  @override
  BulkAddProductState createState() => BulkAddProductState();
}

class BulkAddProductState extends ConsumerState<BulkAddProduct> {
  PlatformFile? _selectedFile;
  List<Map<String, dynamic>>? _excelData;
  Map<String, TextEditingController> _controllers = {};
  final Map<String, String> _selectedItemClasses = {};
  final Map<String, String> _selectedTaxTypes = {};
  final Map<String, TextEditingController> _quantityControllers = {};
  final Map<String, String> _selectedProductTypes = {};

  @override
  void initState() {
    super.initState();
    _initializeControllers();
  }

  void _updateQuantity(String barCode, String value) {
    final product = _excelData!.firstWhere((p) => p['BarCode'] == barCode);
    product['Quantity'] = value;
  }

  void _initializeControllers() {
    if (_excelData != null) {
      for (var product in _excelData!) {
        String barCode = product['BarCode'] ?? '';
        _controllers[barCode] = TextEditingController(text: product['Price']);
      }
    }
  }

  @override
  void dispose() {
    _controllers.forEach((_, controller) => controller.dispose());
    _quantityControllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }

  Future<void> _selectFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['xlsx', 'xls'],
      );
      if (result != null && result.files.isNotEmpty) {
        setState(() {
          _selectedFile = result.files.first;
          _excelData = null;
        });
        _parseExcelData();
      }
    } catch (e) {
      print('Error selecting file: $e');
    }
  }

  Future<void> _parseExcelData() async {
    try {
      if (_selectedFile != null) {
        late Excel excel;

        if (_selectedFile!.bytes != null) {
          excel = Excel.decodeBytes(_selectedFile!.bytes!);
        } else if (_selectedFile!.path != null) {
          final file = File(_selectedFile!.path!);
          final bytes = await file.readAsBytes();
          excel = Excel.decodeBytes(bytes);
        } else {
          throw Exception('Unable to read file contents');
        }

        final sheet = excel.tables[excel.tables.keys.first];
        if (sheet == null) {
          throw Exception('No sheet found in the Excel file');
        }

        List<Map<String, dynamic>> data = [];
        List<String> headers = ['BarCode', 'Name', 'Category', 'Price'];

        // Find header row
        int headerRowIndex = sheet.rows.indexWhere(
          (row) => row.any((cell) => headers.contains(cell?.value?.toString())),
        );

        if (headerRowIndex == -1) {
          throw Exception('Required headers not found in the Excel file');
        }

        // Map column indices to headers
        Map<String, int> headerIndices = {};
        for (int i = 0; i < sheet.rows[headerRowIndex].length; i++) {
          String? cellValue = sheet.rows[headerRowIndex][i]?.value?.toString();
          if (cellValue != null && headers.contains(cellValue)) {
            headerIndices[cellValue] = i;
          }
        }

        // Parse data rows
        for (int i = headerRowIndex + 1; i < sheet.rows.length; i++) {
          Map<String, dynamic> rowData = {};
          for (String header in headers) {
            int? columnIndex = headerIndices[header];
            if (columnIndex != null) {
              rowData[header] =
                  sheet.rows[i][columnIndex]?.value?.toString() ?? '';
            }
          }
          if (rowData.isNotEmpty) {
            data.add(rowData);
          }
        }

        setState(() {
          _excelData = data;
        });
      }
    } catch (e, s) {
      print('Error parsing Excel data: $e');
      print('Error parsing Excel data: $s');
    }
  }

  void _updatePrice(String barCode, String newPrice) {
    setState(() {
      final index =
          _excelData!.indexWhere((product) => product['BarCode'] == barCode);
      if (index != -1) {
        _excelData![index]['Price'] = newPrice;
      }
    });
  }

  String randomizeColor() {
    return '#${(Random().nextInt(0x1000000) | 0x800000).toRadixString(16).padLeft(6, '0').toUpperCase()}';
  }

  Future<void> _saveAll() async {
    // Convert each row from the table to an Item model
    List<Item> items = _excelData!.map((product) {
      return Item(
        barCode: product['BarCode'] ?? '',
        name: product['Name'] ?? '',
        category: product['Category'] ?? '',
        price: product['Price'] ?? '',
      );
    }).toList();

    // Print all items to console
    for (var item in items) {
      try {
        /// create a new product
        Product product = Product(
          ObjectId(),
          id: randomNumber(),
          name: item.name,
          barCode: item.barCode,
        );
        config.Configurations? taxType = await ProxyService.strategy
            .getByTaxType(taxtype: _selectedTaxTypes[product.barCode] ?? "B");
        talker.warning(
            "ItemClass${_selectedItemClasses[product.barCode] ?? "5020230602"}");
        talker.warning("TaxType${_selectedTaxTypes[product.barCode] ?? "B"}");

        talker.warning(
            "ProductType${_selectedProductTypes[product.barCode] ?? "1"}");

        /// add the product to the Realm
        ProxyService.local.realm!.writeN(
          tableName: productsTable,
          writeCallback: () => ProxyService.local.realm!.add<Product>(product),
          onAdd: (data) {
            ProxyService.backUp.replicateData(productsTable, data);
          },
        );

        /// create variant for the product
        Variant variant = Variant(
          ObjectId(),
          id: randomNumber(),
          productId: product.id!,
          sku: product.barCode,
          name: product.barCode,
          productName: product.name,
          qty: double.parse(_quantityControllers[product.barCode]?.text ?? "1"),
          rsdQty:
              double.parse(_quantityControllers[product.barCode]?.text ?? "1"),
          retailPrice: double.parse(item.price),
          supplyPrice: double.parse(item.price),
          color: randomizeColor(),
          itemSeq: 1,
          pkg: "1",
          taxTyCd: _selectedTaxTypes[product.barCode] ?? "B",
          itemClsCd: _selectedItemClasses[product.barCode] ?? "5020230602",
          spplrItemCd: "",
          spplrItemClsCd: "",
          bcd: randomNumber().toString(),

          /// it is okay to make everything be pieces or item which is U stands for.
          qtyUnitCd: "U",
          regrNm: item.name,
          tin: ProxyService.box.tin(),
          bhfId: ProxyService.box.bhfId() ?? "00",
          isTaxExempted: false,
          itemNm: product.name,
          ebmSynced: false,
          itemStdNm: product.name,
          orgnNatCd: "RW",
          prc: double.parse(item.price),
          splyAmt: double.parse(item.price),
          itemCd: DateTime.now().generateFlipperClip(),
          modrNm: product.name,
          modrId: product.barCode,
          pkgUnitCd: "BJ",
          regrId: product.barCode,
          useYn: "N",
          itemTyCd: _selectedProductTypes[product.barCode] ?? "1",
          lastTouched: DateTime.now(),
          branchId: ProxyService.box.getBranchId()!,
          taxPercentage: taxType?.taxPercentage ?? 18,
        );

        /// add the variant to the Realm
        ProxyService.local.realm!.writeN(
          tableName: variantTable,
          writeCallback: () => ProxyService.local.realm!.add<Variant>(variant),
          onAdd: (data) {
            ProxyService.backUp.replicateData(variantTable, data);
          },
        );

        /// create stock for the variant
        Stock stock = Stock(
          ObjectId(),
          id: randomNumber(),
          variantId: variant.id!,
          currentStock: variant.qty,
          lowStock: 0,
          canTrackingStock: false,
          showLowStockAlert: true,
          productId: variant.productId,
          active: true,
          value: variant.qty,
          rsdQty: variant.qty,
          supplyPrice: variant.supplyPrice,
          retailPrice: variant.retailPrice,
          lastTouched: DateTime.now(),
          variant: variant,
          branchId: ProxyService.box.getBranchId()!,
          ebmSynced: false,
        );
        // update variant with stock
        ProxyService.local.realm!.writeN(
          tableName: variantTable,
          writeCallback: () {
            variant.stock = stock;
            return variant;
          },
          onAdd: (data) {
            ProxyService.backUp.replicateData(variantTable, data);
          },
        );

        /// add the stock to the Realm
        ProxyService.local.realm!.writeN(
          tableName: stocksTable,
          writeCallback: () => ProxyService.local.realm!.add<Stock>(stock),
          onAdd: (data) {
            ProxyService.backUp.replicateData(stocksTable, data);
          },
        );
      } catch (e) {
        talker.error(e);
      }
      //pop
    }
    final combinedNotifier = ref.read(refreshProvider);
    combinedNotifier.performActions(productName: "", scanMode: true);
    Navigator.maybePop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            FlipperButton(
              textColor: Colors.black,
              onPressed: _selectFile,
              text: 'Choose Excel File',
            ),
            const SizedBox(height: 24.0),
            if (_selectedFile != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Selected File: ${_selectedFile!.name}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            const SizedBox(height: 16),
            FlipperButton(
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                if (_excelData != null) {
                  _saveAll();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('No data to save'),
                    ),
                  );
                }
              },
              text: 'Save All',
            ),
            const SizedBox(height: 24.0),
            if (_excelData == null && _selectedFile != null)
              const Center(child: CircularProgressIndicator()),
            if (_excelData != null)
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    columns: const [
                      DataColumn(
                        label: Text('BarCode',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Category',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Price',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Quantity',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Item Class',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Tax Type',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Product Type',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                    rows: _excelData!.map((product) {
                      String barCode = product['BarCode'] ?? '';
                      if (!_controllers.containsKey(barCode)) {
                        _controllers[barCode] =
                            TextEditingController(text: product['Price']);
                      }
                      if (!_quantityControllers.containsKey(barCode)) {
                        _quantityControllers[barCode] = TextEditingController(
                            text: product['Quantity'] ?? '0');
                      }

                      return DataRow(
                        cells: [
                          DataCell(Text(product['BarCode'] ?? '')),
                          DataCell(Text(product['Name'] ?? '')),
                          DataCell(Text(product['Category'] ?? '')),
                          DataCell(
                            TextField(
                              controller: _controllers[barCode],
                              onChanged: (value) {
                                _updatePrice(product['BarCode'], value);
                              },
                            ),
                          ),
                          DataCell(
                            TextField(
                              controller: _quantityControllers[barCode],
                              onChanged: (value) {
                                _updateQuantity(product['BarCode'], value);
                              },
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 200,
                              child: _buildUniversalProductDropDown(
                                context,
                                barCode: barCode,
                                selectedValue: _selectedItemClasses[barCode],
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 100,
                              child: _buildTaxDropdown(
                                context,
                                barCode: barCode,
                                selectedValue: _selectedTaxTypes[barCode],
                              ),
                            ),
                          ),
                          DataCell(
                            SizedBox(
                              width: 100,
                              child: _productTypeDropDown(
                                context,
                                barCode: barCode,
                                selectedValue: _selectedProductTypes[barCode],
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _productTypeDropDown(
    BuildContext context, {
    required String barCode,
    String? selectedValue,
  }) {
    final List<Map<String, String>> options = [
      {"name": "Raw Material", "value": "1"},
      {"name": "Finished Product", "value": "2"},
      {"name": "Service without stock", "value": "3"},
    ];

    // Use the first option's value as default if selectedValue is null
    final effectiveValue = selectedValue ?? options.first['value'];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: DropdownButtonHideUnderline(
        // Better way to hide underline
        child: DropdownButton<String>(
          value: effectiveValue,
          items: options.map((option) {
            return DropdownMenuItem<String>(
              value: option['value'],
              child: Text(
                option['name']!,
                style: const TextStyle(fontSize: 14),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            _updateProductType(context, barCode, newValue);
          },
          isExpanded: true,
        ),
      ),
    );
  }

// Separated the update logic for better readability and maintenance
  void _updateProductType(
      BuildContext context, String barCode, String? newValue) {
    if (newValue == null) return;

    try {
      if (_excelData == null) {
        throw Exception('Excel data is not loaded');
      }

      final rowIndex =
          _excelData!.indexWhere((row) => row['BarCode'] == barCode);
      if (rowIndex == -1) {
        throw Exception('Row not found for barCode: $barCode');
      }

      setState(() {
        _selectedProductTypes[barCode] = newValue;
        _excelData![rowIndex]['ProductType'] = newValue;
      });
    } catch (e) {
      talker.error('Error updating product type: $e');
      _showErrorSnackBar(context, e.toString());
    }
  }

// Separated snackbar logic for reusability
  void _showErrorSnackBar(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Failed to update product type: $errorMessage'),
        backgroundColor: Colors.red, // Added for better error visibility
        behavior:
            SnackBarBehavior.floating, // Makes it float above bottom navigation
        duration: const Duration(seconds: 3),
      ),
    );
  }

  Widget _buildTaxDropdown(BuildContext context,
      {required String barCode, String? selectedValue}) {
    final List<String> options = ["A", "B", "C", "D"];

    // Initialize the tax type if not already set
    if (!_selectedTaxTypes.containsKey(barCode)) {
      _selectedTaxTypes[barCode] = selectedValue ?? "B";
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButton<String>(
        value: _selectedTaxTypes[barCode],
        items: options.map((String option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
        onChanged: (String? newValue) {
          if (newValue != null && newValue != _selectedTaxTypes[barCode]) {
            try {
              if (_excelData != null) {
                final rowIndex =
                    _excelData!.indexWhere((row) => row['BarCode'] == barCode);
                if (rowIndex != -1) {
                  setState(() {
                    _selectedTaxTypes[barCode] = newValue;
                    _excelData![rowIndex]['TaxType'] = newValue;
                  });
                } else {
                  talker.error('Row not found for barCode: $barCode');
                }
              } else {
                talker.error('Excel data is null');
              }
            } catch (e) {
              talker.error('Error updating tax type: $e');
              // Optionally show an error message to the user
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Failed to update tax type: ${e.toString()}'),
                ),
              );
            }
          }
        },
        isExpanded: true,
        underline: const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildUniversalProductDropDown(
    BuildContext context, {
    required String barCode,
    String? selectedValue,
  }) {
    final unitsAsyncValue = ref.watch(universalProductsNames);

    return unitsAsyncValue.when(
      data: (items) {
        final List<String> itemClsCdList = items.asData?.value
                .map((unit) => ((unit.itemClsNm ?? "") + " " + unit.itemClsCd!))
                .toList() ??
            [];

        return Container(
          width: double.infinity,
          child: DropdownSearch<String>(
            items: itemClsCdList,
            selectedItem: selectedValue ??
                (itemClsCdList.isNotEmpty ? itemClsCdList.first : null),
            dropdownDecoratorProps: DropDownDecoratorProps(
              dropdownSearchDecoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
              ),
            ),
            onChanged: (String? newValue) {
              if (newValue != null) {
                setState(() {
                  _selectedItemClasses[barCode] = newValue;

                  // Update the Excel data
                  final rowIndex = _excelData!
                      .indexWhere((row) => row['BarCode'] == barCode);
                  if (rowIndex != -1) {
                    // Extract the item class code from the selected value
                    final itemClassCode = newValue.split(' ').last;
                    _excelData![rowIndex]['ItemClass'] = itemClassCode;
                  }
                });
              }
            },
          ),
        );
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }
}
