import 'package:realm/realm.dart';
part 'schemas.realm.dart';

@RealmModel()
class _Branch {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  ObjectId? realmId;
  bool? active;

  String? description;
  String? name;
  int? businessId;
  String? longitude;
  String? latitude;

  bool? isDefault;

  DateTime? lastTouched;

  String? action;

  DateTime? deletedAt;
}

@RealmModel()
class _Business {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;
  String? name;
  String? currency;
  String? categoryId;
  String? latitude;
  String? longitude;
  int? userId;
  String? timeZone;
  // List<String>? channels;
  String? country;
  String? businessUrl;
  String? hexColor;
  String? imageUrl;
  String? type;
  bool? active;
  String? chatUid;
  String? metadata;
  String? role;
  int? lastSeen;
  String? firstName;
  String? lastName;
  String? createdAt;
  String? deviceToken;
  bool? backUpEnabled;
  String? subscriptionPlan;
  String? nextBillingDate;
  String? previousBillingDate;
  bool? isLastSubscriptionPaymentSucceeded;
  String? backupFileId;
  String? email;
  String? lastDbBackup;
  String? fullName;
  int? tinNumber;
  String? bhfId;
  String? dvcSrlNo;
  // address
  String? adrs;
  bool? taxEnabled;
  String? taxServerUrl;
  bool? isDefault;
  int? businessTypeId;

  DateTime? lastTouched;

  String? action;

  DateTime? deletedAt;

  String? encryptionKey;
}

@RealmModel()
class _Category {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;
  bool? active;
  bool? focused;
  String? name;

  int? branchId;
  @override
  DateTime? deletedAt;
  DateTime? lastTouched;
  String? action;
}

@RealmModel()
class _PColor {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;
  late String? name;
  // List<String>? colors;
  late int? branchId;
  late bool active;

  DateTime? lastTouched;

  late String action;

  DateTime? deletedAt;
}

@RealmModel()
class _Conversation {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;
  late String userName;
  late String body;
  String? avatar;
  String? channelType;
  String? fromNumber;
  String? toNumber;

  String? createdAt;
  String? messageType;
  String? phoneNumberId;

  String? messageId;
  String? respondedBy;
  String? conversationId;

  /// properties that are here only useful when replying
  String? businessPhoneNumber;
  int? businessId;

  DateTime? scheduledAt;

  bool? delivered;

  DateTime? lastTouched;
  DateTime? deletedAt;
}

@RealmModel()
class _Counter {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  late int businessId;
  late int branchId;
  late String receiptType;
  late int totRcptNo;
  late int curRcptNo;
  DateTime? lastTouched;
  late String action;
}

@RealmModel()
class _Customer {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  //customer name
  late String custNm;
  late String email;
  // customer phone number
  late String telNo;

  /// address
  String? adrs;
  late int branchId;
  DateTime? updatedAt;
  // Customer Number
  late String custNo;
  //customer tin number
  late String custTin;
  //Registrant Name
  late String regrNm;
  // Registrant ID
  late String regrId;
  //Modifier Name
  late String modrNm;

  //Modifier ID
  late String modrId;

  /// because we can call EBM server to notify about new item saved into our stock
  /// and this operation might fail at time of us making the call and our software can work offline
  /// with no disturbing the operation, we added this field to help us know when to try to re-submit the data
  /// to EBM in case of failure
  late bool ebmSynced;
  DateTime? lastTouched;

  late String action;

  DateTime? deletedAt;

  /// this is the tin of the business adding this customer
  late String tin;
  late String bhfId;
  late String useYn;
  late String customerType;
}

@RealmModel()
class _Device {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  String? linkingCode;
  String? deviceName;
  String? deviceVersion;
  bool? pubNubPublished;
  String? phone;
  int? branchId;
  int? businessId;
  int? userId;
  String? defaultApp;

  /// for sync

  DateTime? lastTouched;
  DateTime? deletedAt;

  String? action;
}

@RealmModel()
class _Discount {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  late String name;

  /// this is to get ready when there will be option for percentage instead of amount!
  late double? amount;
  late int branchId;
}

@RealmModel()
class _Drawers {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  double? openingBalance;
  double? closingBalance;
  String? openingDateTime;
  String? closingDateTime;
  int? csSaleCount;
  String? tradeName;
  double? totalNsSaleIncome;
  double? totalCsSaleIncome;
  int? nrSaleCount;
  int? nsSaleCount;
  int? trSaleCount;
  int? psSaleCount;
  int? incompleteSale;
  int? otherTransactions;
  String? paymentMode;
  int? cashierId;
  bool? open;
}

@RealmModel()
class _EBM {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  late String bhfId;
  late int tinNumber;
  late String dvcSrlNo;
  late int userId;
  late String? taxServerUrl;
  late int businessId;
  late int branchId;

  DateTime? lastTouched;

  late String action;
}

@RealmModel()
class _Favorite {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  int? favIndex;

  int? productId;
  int? branchId;

  DateTime? lastTouched;

  late String action;

  DateTime? deletedAt;
}

@RealmModel()
class _Product {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  String? name;
  String? description;
  String? taxId;
  String? color;
  int? businessId;

  int? branchId;
  String? supplierId;
  int? categoryId;
  String? createdAt;
  String? unit;
  String? imageUrl;
  String? expiryDate;

  String? barCode;
  bool? nfcEnabled;

  int? bindedToTenantId;
  bool? isFavorite;

  DateTime? lastTouched;

  String? action;
  DateTime? deletedAt;
}

@RealmModel()
class _Receipt {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  String? resultCd;
  String? resultMsg;
  String? resultDt;
  int? rcptNo;
  String? intrlData;
  String? rcptSign;
  int? totRcptNo;
  String? vsdcRcptPbctDate;
  String? sdcId;
  String? mrcNo;
  String? qrCode;
  String? receiptType;
  int? branchId;

  int? transactionId;

  DateTime? lastTouched;
  String? action;
}

@RealmModel()
class _Setting {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  String? email;

  int? userId;
  bool? openReceiptFileOSaleComplete;
  bool? autoPrint;
  bool? sendDailyReport;
  String? defaultLanguage;
  bool? attendnaceDocCreated;
  bool? isAttendanceEnabled;
  String? type;
  bool? enrolledInBot;
  String? deviceToken;
  String? businessPhoneNumber;
  bool? autoRespond;
  String? token;

  // @JsonKey(fromJson: _toInt)
  int? businessId;
  String? createdAt;

  DateTime? lastTouched;

  DateTime? deletedAt;
  String? action;
}

@RealmModel()
class _Stock {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  ObjectId? realmId;

  int? branchId;
  int? variantId;
  double? lowStock = 0;
  double? currentStock;

  bool? canTrackingStock = true;
  bool? showLowStockAlert = true;

  int? productId;
  bool? active;
  // the value of stock is currentStock * retailPrice
  double? value;
  // RRA fields
  double? rsdQty;

  double? supplyPrice;
  double? retailPrice;

  DateTime? lastTouched;

  String? action;

  DateTime? deletedAt;

  /// because we can call EBM server to notify about new item saved into our stock
  /// and this operation might fail at time of us making the call and our software can work offline
  /// with no disturbing the operation, we added this field to help us know when to try to re-submit the data
  /// to EBM in case of failure
  bool? ebmSynced;
}

@RealmModel()
class _Variant {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  DateTime? deletedAt;

  String? name;
  String? color;
  String? sku;

  int? productId;
  String? unit;
  String? productName;
  int? branchId;
  String? taxName;
  double? taxPercentage;

  bool? isTaxExempted;

  // add RRA fields
  String? itemSeq;
  // insurance code
  String? isrccCd;
  // insurance name
  String? isrccNm;
  // premium rate
  String? isrcRt;
  // insurance amount
  String? isrcAmt;
  // taxation type code.
  String? taxTyCd;
  // bar code
  String? bcd;
  // Item code
  String? itemClsCd;
  // Item type code
  String? itemTyCd;
  // Item standard name
  String? itemStdNm;
  // Item origin
  String? orgnNatCd;
  // packaging unit code
  String? pkg;
  // item code
  String? itemCd;
  // packacking unit these are mainly AM
  ///Certainly! Here are the codes along with their explanations:

// AM: Ampoule Ampoule
// BA: Barrel Barrel
// BC: Bottlecrate Bottlecrate
// BE: Bundle Bundle
// BF: Balloon, non-protected Balloon, non-protected
// BG: Bag Bag
// BJ: Bucket Bucket
// BK: Basket Basket
// BL: Bale Bale
// BQ: Bottle, protected cylindrical Bottle, protected cylindrical
// BR: Bar Bar
// BV: Bottle, bulbous Bottle, bulbous
// BZ: Bag Bag
// CA: Can Can
// CH: Chest Chest
// CJ: Coffin Coffin
// CL: Coil Coil
// CR: Wooden Box, Wooden Case Wooden Box, Wooden Case

  String? pkgUnitCd;

  String? qtyUnitCd;
  // same as name but for rra happiness
  String? itemNm;
  double? qty;
  // unit price
  double? prc;
  // supply amount
  double? splyAmt;
  int? tin;
  String? bhfId;
  double? dftPrc;
  String? addInfo;
  String? isrcAplcbYn;
  String? useYn;
  String? regrId;
  String? regrNm;
  String? modrId;
  String? modrNm;

  /// property for stock but presented here for easy
  double? rsdQty;

  DateTime? lastTouched;

  double? supplyPrice;

  double? retailPrice;

  String? action;

  /// these fields are empty in normal business when this item is owned by a business
  /// but in case when this item is owned by a supplier then these fields will be filled
  /// this is the case after purchase action is done
  String? spplrItemClsCd;
  String? spplrItemCd;
  String? spplrItemNm;

  /// because we can call EBM server to notify about new item saved into our stock
  /// and this operation might fail at time of us making the call and our software can work offline
  /// with no disturbing the operation, we added this field to help us know when to try to re-submit the data
  /// to EBM in case of failure
  bool? ebmSynced = false;
}

@RealmModel()
class _TransactionItem {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  late String name;

  late int transactionId;
  late int variantId;
  // quantity
  late double qty;
  late double price;
  double? discount;
  String? type;
  late double remainingStock;
  late String createdAt;
  late String updatedAt;
  late bool isTaxExempted;
  bool? isRefunded;

  /// property to help us adding new item to transaction
  bool? doneWithTransaction;
  bool? active;

  // RRA fields
  // discount rate
  double? dcRt;
  // discount amount
  double? dcAmt;

  double? taxblAmt;
  double? taxAmt;

  double? totAmt;

  /// properties from respective variants
  /// these properties will be populated when adding a variant to transactionItem from a variant
  /// I believe there can be a smart way to clean this duplicate code
  /// but I want things to work in first place then I can refactor later.
  /// add RRA fields
  String? itemSeq;
  // insurance code
  String? isrccCd;
  // insurance name
  String? isrccNm;
  // premium rate
  String? isrcRt;
  // insurance amount
  String? isrcAmt;
  // taxation type code.
  String? taxTyCd;
  // bar code
  String? bcd;
  // Item code
  String? itemClsCd;
  // Item type code
  String? itemTyCd;
  // Item standard name
  String? itemStdNm;
  // Item origin
  String? orgnNatCd;
  // packaging unit code
  String? pkg;
  // item code
  String? itemCd;

  String? pkgUnitCd;

  String? qtyUnitCd;
  // same as name but for rra happiness
  String? itemNm;
  // unit price
  // check if prc is saved as same as retailPrice again this property is same as price on this model!
  late double prc;
  // supply amount
  double? splyAmt;
  int? tin;
  String? bhfId;
  double? dftPrc;
  String? addInfo;
  String? isrcAplcbYn;
  String? useYn;
  String? regrId;
  String? regrNm;
  String? modrId;
  String? modrNm;

  DateTime? lastTouched;
  DateTime? deletedAt;
  late String action;

  late int branchId;
}

@RealmModel()
class _ITransaction {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  String? reference;
  String? categoryId;
  String? transactionNumber;
  int? branchId;
  String? status;
  String? transactionType;
  double? subTotal;
  String? paymentType;
  double? cashReceived;
  double? customerChangeDue;
  String? createdAt;
  // add receipt type offerered on this transaction
  /// remember we also have receipt model where each receipt generated is saved.
  String? receiptType;
  String? updatedAt;

  int? customerId;
  String? customerType;
  String? note;

  DateTime? lastTouched;

  String? action;

  // int categoryId;

  String? ticketName;
  DateTime? deletedAt;

  // fields when a transaction is created for ordering system
  int? supplierId;

  /// because we can call EBM server to notify about new item saved into our stock
  /// and this operation might fail at time of us making the call and our software can work offline
  /// with no disturbing the operation, we added this field to help us know when to try to re-submit the data
  /// to EBM in case of failure
  bool? ebmSynced;

  // Add methods to check type
  bool? isIncome;

  bool? isExpense;
  // bool isIncome() {
  //   return this.transactionType == "cashIn" ||
  //       this == "sale" ||
  //       this == "onlineSale";
  // }

  // bool isExpense() {
  //   return this.transactionType == "cashOut";
  // }
}

@RealmModel()
class _IUnit {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  int? branchId;
  String? name;
  String? value;
  bool? active;

  DateTime? lastTouched;

  String? action;
}

@RealmModel()
class _Voucher {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;
  int? value;
  int? interval;
  bool? used;
  int? createdAt;
  int? usedAt;
  String? descriptor;
}

@RealmModel()
class _Tenant {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  late ObjectId realmId;

  String? name;
  String? phoneNumber;
  String? email;
  bool? nfcEnabled;
  int? businessId;
  int? userId;
  String? imageUrl;

  DateTime? lastTouched;
  DateTime? deletedAt;

  int? pin;

  /// [sessionActive] is not comming from server, this is to check which
  /// tenant is currently have active session but the main session will be still active
  bool? sessionActive;

  bool? isDefault;

  ///helper property, these are property that are not peristed
  ///but used in ui to achieve some functionality

  bool? isLongPressed;
}

@RealmModel()
class _Pin {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  ObjectId? realmId;
  String? userId;
  String? phoneNumber;
  int? pin;
  int? branchId;
  int? businessId;
}

@RealmModel()
class _Permission {
  int? id;
  @PrimaryKey()
  @MapTo('_id')
  ObjectId? realmId;
  String? name;
  int? userId;
}
