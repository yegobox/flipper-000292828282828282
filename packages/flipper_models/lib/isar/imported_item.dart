library flipper_models;

import 'DateTimeConverter.dart';
import 'package:flipper_models/sync_service.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pocketbase/pocketbase.dart';
part 'imported_item.g.dart';

@JsonSerializable()
@Collection()
class ImportedItem extends IJsonSerializable {
  @JsonKey(fromJson: _dateTimeFromJson, toJson: _dateTimeToJson)
  DateTime? dclDate; // 1. Declaration date
  @Id()
  late String id;
  late String unit;
  late int branchId;

  late bool isTaxExempted;

  // RRA fields below
  // ----------------

  // 1. Item sequence
  int? itemSeq;

  // 2. Declaration number
  String? dclNo;

  // 3. HS Code
  String? hsCd;

  // 4. Item Name
  String? itemNm;

  // 5. Import Item Status Code
  String? imptItemsttsCd;

  // 6. Nation of origin code
  String? orgnNatCd;

  // 7. Destination nation code
  String? exptNatCd;

  // 8. Package
  int? pkg;

  // 9. Packaging Unit
  String? pkgUnitCd;

  // 10. Quantity
  int? qty;

  // 11. Quantity Unit Code
  String? qtyUnitCd;

  // 12. Gross Weight
  double? totWt;

  // 13. Net weight
  double? netWt;

  // 14. Supplier's name
  String? spplrNm;

  // 15. Agent's Name
  String? agntNm;

  // 16. Invoice Foreign Currency Amount
  double? invcFcurAmt;

  // 17. Foreign Currency Code
  String? invcFcurCd;

  // 18. Foreign Currency Exchange Rate
  double? invcFcurExcrt;

  int? tin;
  String? bhfId;

  /// property for stock but presented here for easy
  double? rsdQty;

  @JsonKey(includeIfNull: true)
  DateTime? lastTouched;

  // only for accor when fetching from remove
  static DateTime? _dateTimeFromJson(String? json) {
    const dateTimeConverter = DateTimeConverter();
    return dateTimeConverter.fromJson(json);
  }

  static String? _dateTimeToJson(DateTime? dateTime) {
    const dateTimeConverter = DateTimeConverter();
    return dateTimeConverter.toJson(dateTime);
  }

  ImportedItem(
      {required this.itemNm,
      required this.dclDate,
      required this.branchId,
      required this.itemSeq,
      required this.dclNo,
      this.hsCd,
      this.imptItemsttsCd,
      this.orgnNatCd,
      this.exptNatCd,
      this.pkg,
      this.pkgUnitCd,
      this.qty,
      this.qtyUnitCd,
      this.totWt,
      this.netWt,
      this.spplrNm,
      this.agntNm,
      this.invcFcurAmt,
      this.invcFcurCd,
      this.invcFcurExcrt,
      this.tin,
      this.bhfId,
      this.lastTouched});

  factory ImportedItem.fromRecord(RecordModel record) =>
      ImportedItem.fromJson(record.toJson());

  factory ImportedItem.fromJson(Map<String, dynamic> json) =>
      _$ImportedItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImportedItemToJson(this);
}
