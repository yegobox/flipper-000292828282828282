// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionItem _$TransactionItemFromJson(Map<String, dynamic> json) =>
    TransactionItem(
      id: json['id'] as int?,
      action: json['action'] as String,
      name: json['name'] as String,
      transactionId: json['transactionId'] as int,
      variantId: json['variantId'] as int,
      qty: (json['qty'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      branchId: json['branchId'] as int,
      remainingStock: (json['remainingStock'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      isTaxExempted: json['isTaxExempted'] as bool,
      prc: (json['prc'] as num).toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      type: json['type'] as String?,
      isRefunded: json['isRefunded'] as bool?,
      doneWithTransaction: json['doneWithTransaction'] as bool?,
      active: json['active'] as bool?,
      dcRt: (json['dcRt'] as num?)?.toDouble(),
      dcAmt: (json['dcAmt'] as num?)?.toDouble(),
      taxblAmt: (json['taxblAmt'] as num?)?.toDouble(),
      taxAmt: (json['taxAmt'] as num?)?.toDouble(),
      totAmt: (json['totAmt'] as num?)?.toDouble(),
      itemSeq: json['itemSeq'] as String?,
      isrccCd: json['isrccCd'] as String?,
      isrccNm: json['isrccNm'] as String?,
      isrcRt: json['isrcRt'] as String?,
      isrcAmt: json['isrcAmt'] as String?,
      taxTyCd: json['taxTyCd'] as String?,
      bcd: json['bcd'] as String?,
      itemClsCd: json['itemClsCd'] as String?,
      itemTyCd: json['itemTyCd'] as String?,
      itemStdNm: json['itemStdNm'] as String?,
      orgnNatCd: json['orgnNatCd'] as String?,
      pkg: json['pkg'] as String?,
      itemCd: json['itemCd'] as String?,
      pkgUnitCd: json['pkgUnitCd'] as String?,
      qtyUnitCd: json['qtyUnitCd'] as String?,
      itemNm: json['itemNm'] as String?,
      splyAmt: (json['splyAmt'] as num?)?.toDouble(),
      tin: json['tin'] as int?,
      bhfId: json['bhfId'] as String?,
      dftPrc: (json['dftPrc'] as num?)?.toDouble(),
      addInfo: json['addInfo'] as String?,
      isrcAplcbYn: json['isrcAplcbYn'] as String?,
      useYn: json['useYn'] as String?,
      regrId: json['regrId'] as String?,
      regrNm: json['regrNm'] as String?,
      modrId: json['modrId'] as String?,
      modrNm: json['modrNm'] as String?,
      lastTouched:
          TransactionItem._dateTimeFromJson(json['lastTouched'] as String?),
      deletedAt:
          TransactionItem._dateTimeFromJson(json['deletedAt'] as String?),
    );

Map<String, dynamic> _$TransactionItemToJson(TransactionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transactionId': instance.transactionId,
      'variantId': instance.variantId,
      'qty': instance.qty,
      'price': instance.price,
      'discount': instance.discount,
      'type': instance.type,
      'remainingStock': instance.remainingStock,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'isTaxExempted': instance.isTaxExempted,
      'isRefunded': instance.isRefunded,
      'doneWithTransaction': instance.doneWithTransaction,
      'active': instance.active,
      'dcRt': instance.dcRt,
      'dcAmt': instance.dcAmt,
      'taxblAmt': instance.taxblAmt,
      'taxAmt': instance.taxAmt,
      'totAmt': instance.totAmt,
      'itemSeq': instance.itemSeq,
      'isrccCd': instance.isrccCd,
      'isrccNm': instance.isrccNm,
      'isrcRt': instance.isrcRt,
      'isrcAmt': instance.isrcAmt,
      'taxTyCd': instance.taxTyCd,
      'bcd': instance.bcd,
      'itemClsCd': instance.itemClsCd,
      'itemTyCd': instance.itemTyCd,
      'itemStdNm': instance.itemStdNm,
      'orgnNatCd': instance.orgnNatCd,
      'pkg': instance.pkg,
      'itemCd': instance.itemCd,
      'pkgUnitCd': instance.pkgUnitCd,
      'qtyUnitCd': instance.qtyUnitCd,
      'itemNm': instance.itemNm,
      'prc': instance.prc,
      'splyAmt': instance.splyAmt,
      'tin': instance.tin,
      'bhfId': instance.bhfId,
      'dftPrc': instance.dftPrc,
      'addInfo': instance.addInfo,
      'isrcAplcbYn': instance.isrcAplcbYn,
      'useYn': instance.useYn,
      'regrId': instance.regrId,
      'regrNm': instance.regrNm,
      'modrId': instance.modrId,
      'modrNm': instance.modrNm,
      'lastTouched': TransactionItem._dateTimeToJson(instance.lastTouched),
      'deletedAt': TransactionItem._dateTimeToJson(instance.deletedAt),
      'action': instance.action,
      'branchId': instance.branchId,
    };
