// update existing model to support EBM API?
// -> if we update existing model then this means we are tied to one EBM or RW.
// -> then we need different way to adopt to every EBM of every country.
// -> It is important to know that the EBM data will be posted to respective EBM. of the country.
// -> so we need to know which EBM we are using.
// -> it is okey to use existing model but mapp key when posting to respective EBM.
// ->

import 'package:flipper_models/isar/imported_item.dart';
import 'package:flipper_models/isar_models.dart';
import 'package:flipper_models/isar/receipt_signature.dart';

abstract class TaxApi {
// 1. Device initialization with the "/initializer/selectInitInfo" URL
  Future<bool> initApi({
    required String tinNumber,
    required String bhfId,
    required String dvcSrlNo,
  });

// 2. Basic Data Management
// ========================

// 2.1. Get list of item classifications registered in the system with the "/itemClass/selectItemsClass" URL
  Future<bool> getItemClassifications(
      {required String tinNumber, required String bhfId, String lastReqDt});

// 2.2. Get a customer's info with TIN by using the "/customers/selectCustomer" URL
  Future<bool> getCustomer(
      {required String tinNumber,
      required String bhfId,
      required String custmTin});

// 2.3. Get a branch's basic info by using the "/branches/selectBranches" URL
  Future<bool> getBranch(
      {required String tinNumber, required String bhfId, String lastReqDt});

// 2.4. Get a list of notices received by the client (flipper) with the "/notices/selectNotices" URL
  Future<bool> getNotices(
      {required String tinNumber, required String bhfId, String lastReqDt});

// ---------------------------------------

// 3. Branch Information Management
// ================================

// 3.1. Save a customer to a branch with the "/branches/saveBrancheCustomers" URL
  Future<bool> saveCustomerToBranch({required Customer customer});

// --------------------------------------

// 4. Product Item Management
// ==========================

// 4.1. Lookup a list of items in the system with the "/items/selectItems" URL
  Future<bool> selectItems(
      {required String tinNumber, required String bhfId, String lastReqDt});

// 4.2. Save an item into the system with the "/items/saveItems" URL
  Future<bool> saveItem({required Variant variation});

// --------------------------------------

// 5. Import Item Management
// =========================

// 5.1. Lookup a list of imported items with the "/imports/selectImportItems" URL
  Future<bool> getImportItems(
      {required String tinNumber, required String bhfId, String lastReqDt});

// 5.2. Change import item status with the "/imports/updateImportItems" URL
  Future<bool> updateImportItem({required ImportedItem importedItem, required String newImportStatus});

// --------------------------------------

// 6. Sales Transaction Management
// ===============================

// 6.1. Record a new sales transaction with the "/trnsSales/saveSales" URL
  Future<ReceiptSignature?> createReceipt(
      {Customer? customer,
      required ITransaction transaction,
      required List<TransactionItem> items,
      required String receiptType,
      required Counter counter});

// --------------------------------------

// 7. Purchase transaction management
// =================================

// 7.1. Record a new purchase transaction with the "/trnsPurchase/savePurchases" URL
  // Future<bool> recordPurchase(
  //     {required ITransaction transaction,
  //     required List<TransactionItem> items});

// 7.2. Get a list of purchase transactions with the "/trnsPurchase/selectTrnsPurchaseSales" URL
  Future<bool> getPurchases(
      {required String tinNumber, required String bhfId, String lastReqDt});

// --------------------------------------

// 8. Stock management
// ===================

// 8.1. Record new stock master information with the "/stockMaster/saveStockMaster" URL
  Future<bool> saveStock({required Stock stock});

// 8.2. Record stock in/out information with the "/saveStockItems/saveStockItems" URL

// 8.3. Get stock movement information with the "/stock/selectStockItems" URL
// This method is used to retrieve stock movements for a specific product or all products.
  Future<bool> getStockMovementData(
      {required String tinNumber, required String bhfId, String lastReqDt});
}
