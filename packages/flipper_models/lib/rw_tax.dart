import 'dart:convert';
import 'dart:developer';
import 'package:flipper_models/isar_models.dart';
import 'package:flipper_models/isar/receipt_signature.dart';
import 'package:flipper_models/mail_log.dart';
import 'package:flipper_models/tax_api.dart';
import 'package:flipper_services/proxy.dart';
import 'package:http/http.dart' as http;
import 'package:sentry/sentry.dart';

class RWTax implements TaxApi {
  String itemPrefix = "flip-";

  RWTax();

// 1. Initialization of EBM service within the device
  @override
  Future<bool> initApi({
    required String tinNumber,
    required String bhfId,
    required String dvcSrlNo,
  }) async {
    String? token = ProxyService.box.readString(key: 'bearerToken');
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    var headers = {'Authorization': token!, 'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse(ebm!.taxServerUrl! + 'initializer/selectInitInfo'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "dvcSrlNo": dvcSrlNo});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

  // -------------------------------

  // 2. Basic Data Management
  // ========================

  // 2.1. Get list of item classifications registered in the system with the "/itemClass/selectItemsClass" URL
  @override
  Future<bool> getItemClassifications({
    required String tinNumber,
    required String bhfId,
    String lastReqDt = "20210523000000",
  }) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/itemClass/selectItemsClass'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "lastReqDt": lastReqDt});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": tinNumber,
            "bhfId": bhfId,
            "lastReqDt": lastReqDt
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

  // 2.2. Get a customer's info with TIN by using the "/customers/selectCustomer" URL
  @override
  Future<bool> getCustomer(
      {required String tinNumber,
      required String bhfId,
      required String custmTin}) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/customers/selectCustomer'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "custmTin": custmTin});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {"tin": tinNumber, "bhfId": bhfId, "custmTin": custmTin}
              .toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

  // 2.3. Get a branch's basic info by using the "/branches/selectBranches" URL
  @override
  Future<bool> getBranch({
    required String tinNumber,
    required String bhfId,
    String lastReqDt = "20210523000000",
  }) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/branches/selectBranches'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "lastReqDt": lastReqDt});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": tinNumber,
            "bhfId": bhfId,
            "lastReqDt": lastReqDt
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

  // 2.4. Get a list of notices received by the client (flipper) with the "/notices/selectNotices" URL
  @override
  Future<bool> getNotices({
    required String tinNumber,
    required String bhfId,
    String lastReqDt = "20210523000000",
  }) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/notices/selectNotices'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "lastReqDt": lastReqDt});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": tinNumber,
            "bhfId": bhfId,
            "lastReqDt": lastReqDt
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

  // -------------------------------------------------

  // 3. Branch Information Management
  // ================================

  // 3.1. Save a customer to a branch with the "/branches/saveBrancheCustomers" URL

  @override
  Future<bool> saveCustomerToBranch({
    required Customer customer,
  }) async {
    Business? business = await ProxyService.isar.getBusiness();
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request('POST',
        Uri.parse(ebm.taxServerUrl! + '/branches/saveBrancheCustomers'));
    request.body = json.encode({
      "tin": ebm.tinNumber,
      "bhfId": ebm.bhfId,
      "custNo": customer.tinNumber,
      "custTin": customer.tinNumber,
      "custNm": customer.name,
      "adrs": customer.address!,
      "telNo": customer.phone,
      "email": customer.email,
      "faxNo": null,
      "useYn": "Y",
      "remark": null,
      "regrNm": business?.name,
      "regrId": business?.tinNumber,
      "modrNm": business?.name,
      "modrId": business?.tinNumber
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": ebm.tinNumber,
            "bhfId": ebm.bhfId,
            "custNo": customer.tinNumber,
            "custTin": customer.tinNumber,
            "custNm": customer.name,
            "adrs": customer.address!,
            "telNo": customer.phone,
            "email": customer.email,
            "faxNo": null,
            "useYn": "Y",
            "remark": null,
            "regrNm": business?.name,
            "regrId": business?.tinNumber,
            "modrNm": business?.name,
            "modrId": business?.tinNumber
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

  // --------------------------------------

  // 4. Product Item Management
  // ==========================

  // 4.1. Lookup a list of items in the system with the "/items/selectItems" URL

  @override
  Future<bool> selectItems({
    required String tinNumber,
    required String bhfId,
    String lastReqDt = "20210523000000",
  }) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/items/selectItems'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "lastReqDt": lastReqDt});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": tinNumber,
            "bhfId": bhfId,
            "lastReqDt": lastReqDt
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

  // 4.2. Save an item into the system with the "/items/saveItems" URL
  @override
  Future<bool> saveItem({required Variant variation}) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request =
        http.Request('POST', Uri.parse(ebm.taxServerUrl! + '/items/saveItems'));
    // log(variation.toJson().toString());
    request.body = json.encode(variation.toJson());

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: variation.toJson().toString(),
          responseData: response.stream.bytesToString().toString());
      ProxyService.sentry.debug(event: variation.toJson().toString());
      // log(await response.stream.bytesToString());
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }
/* Comments from Richard about 4.2
   ===============================

   Allows you to save an item to RRR API for later purchase.
   In flipper we don't save product we have variation of product, since these
   variations are the ones to be reported to EBM server at the end.
   
   @[itemCd] @[itemClsCd] @[itemStdNm] and others will be required to be passed
  when creating an invoice or receipt. You can save the product information in
  the server. This API function performs storing item information managed by the
  taxpayer client in the server. For more information, refer to
  ‘3.2.4.1 ItemSaveReq/Res’. After saving an item, we can then use the item
  endPoint to get the item information of item saved before. */

// --------------------------------------

// 5. Import Item Management
// =========================

// 5.1. Lookup a list of imported items with the "/imports/selectImportItems" URL
  Future<bool> getImportItems(
      {required String tinNumber,
      required String bhfId,
      String lastReqDt = "20210523000000"}) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/imports/selectImportItems'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "lastReqDt": lastReqDt});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": tinNumber,
            "bhfId": bhfId,
            "lastReqDt": lastReqDt
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

// 5.2. Change import item status with the "/imports/updateImportItems" URL
  Future<bool> updateImportItem(
      {required ImportedItem importedItem,
      required String newImportStatus}) async {
    Business? business = await ProxyService.isar.getBusiness();
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/imports/updateImportItems'));
    request.body = json.encode({
      "tin": ebm.tinNumber,
      "bhfId": ebm.bhfId,
      "taskCd": importedItem.taskCd,
      "dclDate": importedItem.dclDate
          .toString()
          .replaceAll(":", "")
          .replaceAll("-", "")
          .replaceAll(" ", "")
          .substring(0, 8),
      "itemSeq": importedItem.itemSeq,
      "hsCd": importedItem.hsCd,
      "itemClCd": importedItem.itemClCd,
      "itemCd": importedItem.itemCd,
      "imptItemsttsCd": newImportStatus,
      "remark": "Changing import status code to ${newImportStatus}",
      "modrNm": business?.name,
      "modrId": business?.tinNumber
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": ebm.tinNumber,
            "bhfId": ebm.bhfId,
            "taskCd": importedItem.taskCd,
            "dclDate": importedItem.dclDate
                .toString()
                .replaceAll(":", "")
                .replaceAll("-", "")
                .replaceAll(" ", "")
                .substring(0, 8),
            "itemSeq": importedItem.itemSeq,
            "hsCd": importedItem.hsCd,
            "itemClCd": importedItem.itemClCd,
            "itemCd": importedItem.itemCd,
            "imptItemsttsCd": newImportStatus,
            "remark": "Changing import status code to ${newImportStatus}",
            "modrNm": business?.name,
            "modrId": business?.tinNumber
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

// --------------------------------------

// 6. Sales Transaction Management
// ===============================

// 6.1. Record a new sales transaction with the "/trnsSales/saveSales" URL

  @override
  Future<ReceiptSignature?> createReceipt(
      {Customer? customer,
      required ITransaction transaction,
      required List<TransactionItem> items,
      required String receiptType,
      required Counter counter}) async {
    Business? business = await ProxyService.isar.getBusiness();

    String date = DateTime.now()
        .toString()
        .replaceAll(":", "")
        .replaceAll("-", "")
        .replaceAll(" ", "")
        .substring(0, 14);
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return null;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/trnsSales/saveSales'));
    List<Map<String, dynamic>> itemsList = [];
    for (var item in items) {
      itemsList.add(item.toJson());
    }

    double totalMinusExemptedProducts = 0;
    for (var item in items) {
      if (!item.isTaxExempted) {
        totalMinusExemptedProducts += (item.prc! * item.qty);
      }
    }
    // default is Normal sale
    String salesTyCd = "N";
    String rcptTyCd = "S";
    // normal refund
    if (receiptType == "NR") {
      salesTyCd = "N";
      rcptTyCd = "R";
    }
    // copy sale
    if (receiptType == "CS") {
      salesTyCd = "C";
      rcptTyCd = "S";
    }
    // training sale
    if (receiptType == "TS") {
      salesTyCd = "T";
      rcptTyCd = "S";
    }
    // profoma invoice
    if (receiptType == "PS") {
      salesTyCd = "P";
      rcptTyCd = "S";
    }

    request.body = json.encode({
      "tin": business!.tinNumber,
      "bhfId": business.bhfId,
      "invcNo": transaction.id.substring(0, 10),
      "orgInvcNo": 0,
      "custTin": customer == null ? "" : customer.tinNumber,
      "custNm": customer == null ? "" : customer.name,
      "salesTyCd": salesTyCd,
      "rcptTyCd": rcptTyCd,
      "pmtTyCd": "01",
      "salesSttsCd": "02",
      "cfmDt": date,
      "salesDt": date.substring(0, 8),
      "stockRlsDt": date,
      "cnclReqDt": null,
      "cnclDt": null,
      "rfdDt": null,
      "rfdRsnCd": null,
      "totItemCnt": itemsList.length,
      "taxblAmtA": 0,
      "taxblAmtB": totalMinusExemptedProducts,
      "taxblAmtC": 0,
      "taxblAmtD": 0,
      "taxRtA": 0,
      "taxRtB": 18,
      "taxRtC": 0,
      "taxRtD": 0,
      "taxAmtA": 0,
      "taxAmtB": (totalMinusExemptedProducts * 18 / 118).toStringAsFixed(2),
      "taxAmtC": 0,
      "taxAmtD": 0,
      "totTaxblAmt": totalMinusExemptedProducts,
      "totTaxAmt": (totalMinusExemptedProducts * 18 / 118).toStringAsFixed(2),
      "totAmt": totalMinusExemptedProducts,
      "prchrAcptcYn": "N",
      "remark": null,
      "regrId": transaction.id,
      "regrNm": transaction.id,
      "modrId": transaction.id,
      "modrNm": transaction.id,
      "receipt": {
        "curRcptNo": counter.curRcptNo,
        "totRcptNo": counter.totRcptNo,
        "custTin": customer == null ? "" : customer.tinNumber,
        "custMblNo": customer == null ? "" : customer.phone,
        "rptNo": date,
        "rcptPbctDt": date,
        "intrlData": itemPrefix +
            transaction.id.toString() +
            DateTime.now().microsecondsSinceEpoch.toString().substring(0, 10),
        "rcptSign": itemPrefix +
            transaction.id.toString() +
            DateTime.now().microsecondsSinceEpoch.toString().substring(0, 11),
        "jrnl": "",
        "trdeNm": business.name,
        "adrs": business.adrs,
        "topMsg": "Shop with us",
        "btmMsg": "Welcome",
        // Whether buyers receive item or not. default to Y es
        "prchrAcptcYn": "Y"
      },
      "itemList": itemsList
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      ProxyService.sentry.debug(event: request.body.toString());

      sendEmailNotification(
          requestData: request.body,
          responseData: response.stream.bytesToString().toString());
      if (ProxyService.remoteConfig.isMarketingFeatureEnabled()) {
        SentryId sentryId = await Sentry.captureMessage("EBM-JSON");

        final userFeedback = SentryUserFeedback(
          eventId: sentryId,
          comments: request.body,
          email: ProxyService.box.getUserPhone(),
          name: ProxyService.box.getUserPhone(),
        );

        Sentry.captureUserFeedback(userFeedback);
      }
      return Future.value(ReceiptSignature.fromJson(
          json.decode(await response.stream.bytesToString())));
    } else {
      return null;
    }
  }

  // --------------------------------------

// 7. Purchase transaction management
// =================================

// 7.1. Record a new purchase transaction with the "/trnsPurchase/savePurchases" URL (not working yet)

// 7.2. Get a list of purchase transactions with the "/trnsPurchase/selectTrnsPurchaseSales" URL
  Future<bool> getPurchases(
      {required String tinNumber,
      required String bhfId,
      String lastReqDt = "20210523000000"}) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request('POST',
        Uri.parse(ebm.taxServerUrl! + '/trnsPurchase/selectTrnsPurchaseSales'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "lastReqDt": lastReqDt});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": tinNumber,
            "bhfId": bhfId,
            "lastReqDt": lastReqDt
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }

// --------------------------------------

// 8. Stock management
// ===================

// 8.1. Record new stock master information with the "/stockMaster/saveStockMaster" URL

  @override
  Future<bool> saveStock({required Stock stock}) async {
    var headers = {'Content-Type': 'application/json'};
    Variant? variant =
        await ProxyService.isar.getVariantById(id: stock.variantId);
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    var request = http.Request(
        'POST', Uri.parse(ebm!.taxServerUrl! + '/stockMaster/saveStockMaster'));
    variant?.rsdQty = stock.rsdQty;
    request.body = json.encode(variant?.toJson());
    request.headers.addAll(headers);
    // log(variant!.toJson().toString());

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      ProxyService.sentry.debug(event: stock.toJson().toString());
      log(await response.stream.bytesToString());
      return Future.value(true);
    } else {
      log(response.reasonPhrase!);
      return Future.value(false);
    }
  }

/* Comments from Richard about 8.1
   ===============================
   This method is used to save or update stock of an item saved before, so it is
  an item i.e variant we pass back. The API will not fail even if the item Code
  @[itemCd] is not found in a list of saved Items.
  
  @[rsdQty] is the remaining stock of the item. It is very important to note
  that given on how RRA data is structured, we ended up mixing data for stock
  and variant but data stay in related models. We just borrow properties to
  simplify accesibility */

// 8.2. Record stock in/out information with the "/saveStockItems/saveStockItems" URL
// Implementation to be done later

// 8.3. Get stock movement information with the "/stock/selectStockItems" URL
// This method is used to retrieve stock movements for a specific product or all products.
  Future<bool> getStockMovementData(
      {required String tinNumber,
      required String bhfId,
      String lastReqDt = "20210523000000"}) async {
    var headers = {'Content-Type': 'application/json'};
    EBM? ebm = await ProxyService.isar
        .getEbmByBranchId(branchId: ProxyService.box.getBranchId()!);
    if (ebm == null) {
      return false;
    }
    var request = http.Request(
        'POST', Uri.parse(ebm.taxServerUrl! + '/stock/selectStockItems'));
    request.body =
        json.encode({"tin": tinNumber, "bhfId": bhfId, "lastReqDt": lastReqDt});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      sendEmailNotification(
          requestData: {
            "tin": tinNumber,
            "bhfId": bhfId,
            "lastReqDt": lastReqDt
          }.toString(),
          responseData: response.stream.bytesToString().toString());
      return Future.value(true);
    } else {
      // print(response.reasonPhrase);
      return Future.value(false);
    }
  }
}
