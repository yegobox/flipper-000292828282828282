// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable, no_leading_underscores_for_local_identifiers, inference_failure_on_function_invocation

extension GetOrderItemCollection on Isar {
  IsarCollection<OrderItem> get orderItems => getCollection();
}

const OrderItemSchema = CollectionSchema(
  name: 'OrderItem',
  schema:
      '{"name":"OrderItem","idName":"id","properties":[{"name":"addInfo","type":"String"},{"name":"bcd","type":"String"},{"name":"bhfId","type":"String"},{"name":"createdAt","type":"String"},{"name":"dcAmt","type":"Double"},{"name":"dcRt","type":"Double"},{"name":"dftPrc","type":"Double"},{"name":"discount","type":"Double"},{"name":"isRefunded","type":"Bool"},{"name":"isTaxExempted","type":"Bool"},{"name":"isrcAmt","type":"String"},{"name":"isrcAplcbYn","type":"String"},{"name":"isrcRt","type":"String"},{"name":"isrccCd","type":"String"},{"name":"isrccNm","type":"String"},{"name":"itemCd","type":"String"},{"name":"itemClsCd","type":"String"},{"name":"itemNm","type":"String"},{"name":"itemSeq","type":"String"},{"name":"itemStdNm","type":"String"},{"name":"itemTyCd","type":"String"},{"name":"modrId","type":"String"},{"name":"modrNm","type":"String"},{"name":"name","type":"String"},{"name":"orderId","type":"Long"},{"name":"orgnNatCd","type":"String"},{"name":"pkg","type":"String"},{"name":"pkgUnitCd","type":"String"},{"name":"prc","type":"Double"},{"name":"price","type":"Double"},{"name":"qty","type":"Double"},{"name":"qtyUnitCd","type":"String"},{"name":"regrId","type":"String"},{"name":"regrNm","type":"String"},{"name":"remainingStock","type":"Double"},{"name":"reported","type":"Bool"},{"name":"splyAmt","type":"Double"},{"name":"taxAmt","type":"Double"},{"name":"taxTyCd","type":"String"},{"name":"taxblAmt","type":"Double"},{"name":"tin","type":"Long"},{"name":"totAmt","type":"Double"},{"name":"type","type":"String"},{"name":"updatedAt","type":"String"},{"name":"useYn","type":"String"},{"name":"variantId","type":"Long"}],"indexes":[{"name":"orderId","unique":false,"replace":false,"properties":[{"name":"orderId","type":"Value","caseSensitive":false}]},{"name":"variantId_orderId","unique":false,"replace":false,"properties":[{"name":"variantId","type":"Value","caseSensitive":false},{"name":"orderId","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'addInfo': 0,
    'bcd': 1,
    'bhfId': 2,
    'createdAt': 3,
    'dcAmt': 4,
    'dcRt': 5,
    'dftPrc': 6,
    'discount': 7,
    'isRefunded': 8,
    'isTaxExempted': 9,
    'isrcAmt': 10,
    'isrcAplcbYn': 11,
    'isrcRt': 12,
    'isrccCd': 13,
    'isrccNm': 14,
    'itemCd': 15,
    'itemClsCd': 16,
    'itemNm': 17,
    'itemSeq': 18,
    'itemStdNm': 19,
    'itemTyCd': 20,
    'modrId': 21,
    'modrNm': 22,
    'name': 23,
    'orderId': 24,
    'orgnNatCd': 25,
    'pkg': 26,
    'pkgUnitCd': 27,
    'prc': 28,
    'price': 29,
    'qty': 30,
    'qtyUnitCd': 31,
    'regrId': 32,
    'regrNm': 33,
    'remainingStock': 34,
    'reported': 35,
    'splyAmt': 36,
    'taxAmt': 37,
    'taxTyCd': 38,
    'taxblAmt': 39,
    'tin': 40,
    'totAmt': 41,
    'type': 42,
    'updatedAt': 43,
    'useYn': 44,
    'variantId': 45
  },
  listProperties: {},
  indexIds: {'orderId': 0, 'variantId_orderId': 1},
  indexValueTypes: {
    'orderId': [
      IndexValueType.long,
    ],
    'variantId_orderId': [
      IndexValueType.long,
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _orderItemGetId,
  setId: _orderItemSetId,
  getLinks: _orderItemGetLinks,
  attachLinks: _orderItemAttachLinks,
  serializeNative: _orderItemSerializeNative,
  deserializeNative: _orderItemDeserializeNative,
  deserializePropNative: _orderItemDeserializePropNative,
  serializeWeb: _orderItemSerializeWeb,
  deserializeWeb: _orderItemDeserializeWeb,
  deserializePropWeb: _orderItemDeserializePropWeb,
  version: 4,
);

int? _orderItemGetId(OrderItem object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _orderItemSetId(OrderItem object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _orderItemGetLinks(OrderItem object) {
  return [];
}

void _orderItemSerializeNative(
    IsarCollection<OrderItem> collection,
    IsarCObject cObj,
    OrderItem object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  IsarUint8List? addInfo$Bytes;
  final addInfo$Value = object.addInfo;
  if (addInfo$Value != null) {
    addInfo$Bytes = IsarBinaryWriter.utf8Encoder.convert(addInfo$Value);
  }
  IsarUint8List? bcd$Bytes;
  final bcd$Value = object.bcd;
  if (bcd$Value != null) {
    bcd$Bytes = IsarBinaryWriter.utf8Encoder.convert(bcd$Value);
  }
  IsarUint8List? bhfId$Bytes;
  final bhfId$Value = object.bhfId;
  if (bhfId$Value != null) {
    bhfId$Bytes = IsarBinaryWriter.utf8Encoder.convert(bhfId$Value);
  }
  final createdAt$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.createdAt);
  IsarUint8List? isrcAmt$Bytes;
  final isrcAmt$Value = object.isrcAmt;
  if (isrcAmt$Value != null) {
    isrcAmt$Bytes = IsarBinaryWriter.utf8Encoder.convert(isrcAmt$Value);
  }
  IsarUint8List? isrcAplcbYn$Bytes;
  final isrcAplcbYn$Value = object.isrcAplcbYn;
  if (isrcAplcbYn$Value != null) {
    isrcAplcbYn$Bytes = IsarBinaryWriter.utf8Encoder.convert(isrcAplcbYn$Value);
  }
  IsarUint8List? isrcRt$Bytes;
  final isrcRt$Value = object.isrcRt;
  if (isrcRt$Value != null) {
    isrcRt$Bytes = IsarBinaryWriter.utf8Encoder.convert(isrcRt$Value);
  }
  IsarUint8List? isrccCd$Bytes;
  final isrccCd$Value = object.isrccCd;
  if (isrccCd$Value != null) {
    isrccCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(isrccCd$Value);
  }
  IsarUint8List? isrccNm$Bytes;
  final isrccNm$Value = object.isrccNm;
  if (isrccNm$Value != null) {
    isrccNm$Bytes = IsarBinaryWriter.utf8Encoder.convert(isrccNm$Value);
  }
  IsarUint8List? itemCd$Bytes;
  final itemCd$Value = object.itemCd;
  if (itemCd$Value != null) {
    itemCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(itemCd$Value);
  }
  IsarUint8List? itemClsCd$Bytes;
  final itemClsCd$Value = object.itemClsCd;
  if (itemClsCd$Value != null) {
    itemClsCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(itemClsCd$Value);
  }
  IsarUint8List? itemNm$Bytes;
  final itemNm$Value = object.itemNm;
  if (itemNm$Value != null) {
    itemNm$Bytes = IsarBinaryWriter.utf8Encoder.convert(itemNm$Value);
  }
  IsarUint8List? itemSeq$Bytes;
  final itemSeq$Value = object.itemSeq;
  if (itemSeq$Value != null) {
    itemSeq$Bytes = IsarBinaryWriter.utf8Encoder.convert(itemSeq$Value);
  }
  IsarUint8List? itemStdNm$Bytes;
  final itemStdNm$Value = object.itemStdNm;
  if (itemStdNm$Value != null) {
    itemStdNm$Bytes = IsarBinaryWriter.utf8Encoder.convert(itemStdNm$Value);
  }
  IsarUint8List? itemTyCd$Bytes;
  final itemTyCd$Value = object.itemTyCd;
  if (itemTyCd$Value != null) {
    itemTyCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(itemTyCd$Value);
  }
  IsarUint8List? modrId$Bytes;
  final modrId$Value = object.modrId;
  if (modrId$Value != null) {
    modrId$Bytes = IsarBinaryWriter.utf8Encoder.convert(modrId$Value);
  }
  IsarUint8List? modrNm$Bytes;
  final modrNm$Value = object.modrNm;
  if (modrNm$Value != null) {
    modrNm$Bytes = IsarBinaryWriter.utf8Encoder.convert(modrNm$Value);
  }
  final name$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.name);
  IsarUint8List? orgnNatCd$Bytes;
  final orgnNatCd$Value = object.orgnNatCd;
  if (orgnNatCd$Value != null) {
    orgnNatCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(orgnNatCd$Value);
  }
  IsarUint8List? pkg$Bytes;
  final pkg$Value = object.pkg;
  if (pkg$Value != null) {
    pkg$Bytes = IsarBinaryWriter.utf8Encoder.convert(pkg$Value);
  }
  IsarUint8List? pkgUnitCd$Bytes;
  final pkgUnitCd$Value = object.pkgUnitCd;
  if (pkgUnitCd$Value != null) {
    pkgUnitCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(pkgUnitCd$Value);
  }
  IsarUint8List? qtyUnitCd$Bytes;
  final qtyUnitCd$Value = object.qtyUnitCd;
  if (qtyUnitCd$Value != null) {
    qtyUnitCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(qtyUnitCd$Value);
  }
  IsarUint8List? regrId$Bytes;
  final regrId$Value = object.regrId;
  if (regrId$Value != null) {
    regrId$Bytes = IsarBinaryWriter.utf8Encoder.convert(regrId$Value);
  }
  IsarUint8List? regrNm$Bytes;
  final regrNm$Value = object.regrNm;
  if (regrNm$Value != null) {
    regrNm$Bytes = IsarBinaryWriter.utf8Encoder.convert(regrNm$Value);
  }
  IsarUint8List? taxTyCd$Bytes;
  final taxTyCd$Value = object.taxTyCd;
  if (taxTyCd$Value != null) {
    taxTyCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(taxTyCd$Value);
  }
  IsarUint8List? type$Bytes;
  final type$Value = object.type;
  if (type$Value != null) {
    type$Bytes = IsarBinaryWriter.utf8Encoder.convert(type$Value);
  }
  final updatedAt$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.updatedAt);
  IsarUint8List? useYn$Bytes;
  final useYn$Value = object.useYn;
  if (useYn$Value != null) {
    useYn$Bytes = IsarBinaryWriter.utf8Encoder.convert(useYn$Value);
  }
  final size = staticSize +
      (addInfo$Bytes?.length ?? 0) +
      (bcd$Bytes?.length ?? 0) +
      (bhfId$Bytes?.length ?? 0) +
      (createdAt$Bytes.length) +
      (isrcAmt$Bytes?.length ?? 0) +
      (isrcAplcbYn$Bytes?.length ?? 0) +
      (isrcRt$Bytes?.length ?? 0) +
      (isrccCd$Bytes?.length ?? 0) +
      (isrccNm$Bytes?.length ?? 0) +
      (itemCd$Bytes?.length ?? 0) +
      (itemClsCd$Bytes?.length ?? 0) +
      (itemNm$Bytes?.length ?? 0) +
      (itemSeq$Bytes?.length ?? 0) +
      (itemStdNm$Bytes?.length ?? 0) +
      (itemTyCd$Bytes?.length ?? 0) +
      (modrId$Bytes?.length ?? 0) +
      (modrNm$Bytes?.length ?? 0) +
      (name$Bytes.length) +
      (orgnNatCd$Bytes?.length ?? 0) +
      (pkg$Bytes?.length ?? 0) +
      (pkgUnitCd$Bytes?.length ?? 0) +
      (qtyUnitCd$Bytes?.length ?? 0) +
      (regrId$Bytes?.length ?? 0) +
      (regrNm$Bytes?.length ?? 0) +
      (taxTyCd$Bytes?.length ?? 0) +
      (type$Bytes?.length ?? 0) +
      (updatedAt$Bytes.length) +
      (useYn$Bytes?.length ?? 0);
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], addInfo$Bytes);
  writer.writeBytes(offsets[1], bcd$Bytes);
  writer.writeBytes(offsets[2], bhfId$Bytes);
  writer.writeBytes(offsets[3], createdAt$Bytes);
  writer.writeDouble(offsets[4], object.dcAmt);
  writer.writeDouble(offsets[5], object.dcRt);
  writer.writeDouble(offsets[6], object.dftPrc);
  writer.writeDouble(offsets[7], object.discount);
  writer.writeBool(offsets[8], object.isRefunded);
  writer.writeBool(offsets[9], object.isTaxExempted);
  writer.writeBytes(offsets[10], isrcAmt$Bytes);
  writer.writeBytes(offsets[11], isrcAplcbYn$Bytes);
  writer.writeBytes(offsets[12], isrcRt$Bytes);
  writer.writeBytes(offsets[13], isrccCd$Bytes);
  writer.writeBytes(offsets[14], isrccNm$Bytes);
  writer.writeBytes(offsets[15], itemCd$Bytes);
  writer.writeBytes(offsets[16], itemClsCd$Bytes);
  writer.writeBytes(offsets[17], itemNm$Bytes);
  writer.writeBytes(offsets[18], itemSeq$Bytes);
  writer.writeBytes(offsets[19], itemStdNm$Bytes);
  writer.writeBytes(offsets[20], itemTyCd$Bytes);
  writer.writeBytes(offsets[21], modrId$Bytes);
  writer.writeBytes(offsets[22], modrNm$Bytes);
  writer.writeBytes(offsets[23], name$Bytes);
  writer.writeLong(offsets[24], object.orderId);
  writer.writeBytes(offsets[25], orgnNatCd$Bytes);
  writer.writeBytes(offsets[26], pkg$Bytes);
  writer.writeBytes(offsets[27], pkgUnitCd$Bytes);
  writer.writeDouble(offsets[28], object.prc);
  writer.writeDouble(offsets[29], object.price);
  writer.writeDouble(offsets[30], object.qty);
  writer.writeBytes(offsets[31], qtyUnitCd$Bytes);
  writer.writeBytes(offsets[32], regrId$Bytes);
  writer.writeBytes(offsets[33], regrNm$Bytes);
  writer.writeDouble(offsets[34], object.remainingStock);
  writer.writeBool(offsets[35], object.reported);
  writer.writeDouble(offsets[36], object.splyAmt);
  writer.writeDouble(offsets[37], object.taxAmt);
  writer.writeBytes(offsets[38], taxTyCd$Bytes);
  writer.writeDouble(offsets[39], object.taxblAmt);
  writer.writeLong(offsets[40], object.tin);
  writer.writeDouble(offsets[41], object.totAmt);
  writer.writeBytes(offsets[42], type$Bytes);
  writer.writeBytes(offsets[43], updatedAt$Bytes);
  writer.writeBytes(offsets[44], useYn$Bytes);
  writer.writeLong(offsets[45], object.variantId);
}

OrderItem _orderItemDeserializeNative(IsarCollection<OrderItem> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = OrderItem();
  object.addInfo = reader.readStringOrNull(offsets[0]);
  object.bcd = reader.readStringOrNull(offsets[1]);
  object.bhfId = reader.readStringOrNull(offsets[2]);
  object.createdAt = reader.readString(offsets[3]);
  object.dcAmt = reader.readDoubleOrNull(offsets[4]);
  object.dcRt = reader.readDoubleOrNull(offsets[5]);
  object.dftPrc = reader.readDoubleOrNull(offsets[6]);
  object.discount = reader.readDoubleOrNull(offsets[7]);
  object.id = id;
  object.isRefunded = reader.readBoolOrNull(offsets[8]);
  object.isTaxExempted = reader.readBool(offsets[9]);
  object.isrcAmt = reader.readStringOrNull(offsets[10]);
  object.isrcAplcbYn = reader.readStringOrNull(offsets[11]);
  object.isrcRt = reader.readStringOrNull(offsets[12]);
  object.isrccCd = reader.readStringOrNull(offsets[13]);
  object.isrccNm = reader.readStringOrNull(offsets[14]);
  object.itemCd = reader.readStringOrNull(offsets[15]);
  object.itemClsCd = reader.readStringOrNull(offsets[16]);
  object.itemNm = reader.readStringOrNull(offsets[17]);
  object.itemSeq = reader.readStringOrNull(offsets[18]);
  object.itemStdNm = reader.readStringOrNull(offsets[19]);
  object.itemTyCd = reader.readStringOrNull(offsets[20]);
  object.modrId = reader.readStringOrNull(offsets[21]);
  object.modrNm = reader.readStringOrNull(offsets[22]);
  object.name = reader.readString(offsets[23]);
  object.orderId = reader.readLong(offsets[24]);
  object.orgnNatCd = reader.readStringOrNull(offsets[25]);
  object.pkg = reader.readStringOrNull(offsets[26]);
  object.pkgUnitCd = reader.readStringOrNull(offsets[27]);
  object.prc = reader.readDoubleOrNull(offsets[28]);
  object.price = reader.readDouble(offsets[29]);
  object.qty = reader.readDouble(offsets[30]);
  object.qtyUnitCd = reader.readStringOrNull(offsets[31]);
  object.regrId = reader.readStringOrNull(offsets[32]);
  object.regrNm = reader.readStringOrNull(offsets[33]);
  object.remainingStock = reader.readDouble(offsets[34]);
  object.reported = reader.readBoolOrNull(offsets[35]);
  object.splyAmt = reader.readDoubleOrNull(offsets[36]);
  object.taxAmt = reader.readDoubleOrNull(offsets[37]);
  object.taxTyCd = reader.readStringOrNull(offsets[38]);
  object.taxblAmt = reader.readDoubleOrNull(offsets[39]);
  object.tin = reader.readLongOrNull(offsets[40]);
  object.totAmt = reader.readDoubleOrNull(offsets[41]);
  object.type = reader.readStringOrNull(offsets[42]);
  object.updatedAt = reader.readString(offsets[43]);
  object.useYn = reader.readStringOrNull(offsets[44]);
  object.variantId = reader.readLong(offsets[45]);
  return object;
}

P _orderItemDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readLong(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readDoubleOrNull(offset)) as P;
    case 29:
      return (reader.readDouble(offset)) as P;
    case 30:
      return (reader.readDouble(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readDouble(offset)) as P;
    case 35:
      return (reader.readBoolOrNull(offset)) as P;
    case 36:
      return (reader.readDoubleOrNull(offset)) as P;
    case 37:
      return (reader.readDoubleOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readDoubleOrNull(offset)) as P;
    case 40:
      return (reader.readLongOrNull(offset)) as P;
    case 41:
      return (reader.readDoubleOrNull(offset)) as P;
    case 42:
      return (reader.readStringOrNull(offset)) as P;
    case 43:
      return (reader.readString(offset)) as P;
    case 44:
      return (reader.readStringOrNull(offset)) as P;
    case 45:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _orderItemSerializeWeb(
    IsarCollection<OrderItem> collection, OrderItem object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'addInfo', object.addInfo);
  IsarNative.jsObjectSet(jsObj, 'bcd', object.bcd);
  IsarNative.jsObjectSet(jsObj, 'bhfId', object.bhfId);
  IsarNative.jsObjectSet(jsObj, 'createdAt', object.createdAt);
  IsarNative.jsObjectSet(jsObj, 'dcAmt', object.dcAmt);
  IsarNative.jsObjectSet(jsObj, 'dcRt', object.dcRt);
  IsarNative.jsObjectSet(jsObj, 'dftPrc', object.dftPrc);
  IsarNative.jsObjectSet(jsObj, 'discount', object.discount);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isRefunded', object.isRefunded);
  IsarNative.jsObjectSet(jsObj, 'isTaxExempted', object.isTaxExempted);
  IsarNative.jsObjectSet(jsObj, 'isrcAmt', object.isrcAmt);
  IsarNative.jsObjectSet(jsObj, 'isrcAplcbYn', object.isrcAplcbYn);
  IsarNative.jsObjectSet(jsObj, 'isrcRt', object.isrcRt);
  IsarNative.jsObjectSet(jsObj, 'isrccCd', object.isrccCd);
  IsarNative.jsObjectSet(jsObj, 'isrccNm', object.isrccNm);
  IsarNative.jsObjectSet(jsObj, 'itemCd', object.itemCd);
  IsarNative.jsObjectSet(jsObj, 'itemClsCd', object.itemClsCd);
  IsarNative.jsObjectSet(jsObj, 'itemNm', object.itemNm);
  IsarNative.jsObjectSet(jsObj, 'itemSeq', object.itemSeq);
  IsarNative.jsObjectSet(jsObj, 'itemStdNm', object.itemStdNm);
  IsarNative.jsObjectSet(jsObj, 'itemTyCd', object.itemTyCd);
  IsarNative.jsObjectSet(jsObj, 'modrId', object.modrId);
  IsarNative.jsObjectSet(jsObj, 'modrNm', object.modrNm);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'orderId', object.orderId);
  IsarNative.jsObjectSet(jsObj, 'orgnNatCd', object.orgnNatCd);
  IsarNative.jsObjectSet(jsObj, 'pkg', object.pkg);
  IsarNative.jsObjectSet(jsObj, 'pkgUnitCd', object.pkgUnitCd);
  IsarNative.jsObjectSet(jsObj, 'prc', object.prc);
  IsarNative.jsObjectSet(jsObj, 'price', object.price);
  IsarNative.jsObjectSet(jsObj, 'qty', object.qty);
  IsarNative.jsObjectSet(jsObj, 'qtyUnitCd', object.qtyUnitCd);
  IsarNative.jsObjectSet(jsObj, 'regrId', object.regrId);
  IsarNative.jsObjectSet(jsObj, 'regrNm', object.regrNm);
  IsarNative.jsObjectSet(jsObj, 'remainingStock', object.remainingStock);
  IsarNative.jsObjectSet(jsObj, 'reported', object.reported);
  IsarNative.jsObjectSet(jsObj, 'splyAmt', object.splyAmt);
  IsarNative.jsObjectSet(jsObj, 'taxAmt', object.taxAmt);
  IsarNative.jsObjectSet(jsObj, 'taxTyCd', object.taxTyCd);
  IsarNative.jsObjectSet(jsObj, 'taxblAmt', object.taxblAmt);
  IsarNative.jsObjectSet(jsObj, 'tin', object.tin);
  IsarNative.jsObjectSet(jsObj, 'totAmt', object.totAmt);
  IsarNative.jsObjectSet(jsObj, 'type', object.type);
  IsarNative.jsObjectSet(jsObj, 'updatedAt', object.updatedAt);
  IsarNative.jsObjectSet(jsObj, 'useYn', object.useYn);
  IsarNative.jsObjectSet(jsObj, 'variantId', object.variantId);
  return jsObj;
}

OrderItem _orderItemDeserializeWeb(
    IsarCollection<OrderItem> collection, Object jsObj) {
  final object = OrderItem();
  object.addInfo = IsarNative.jsObjectGet(jsObj, 'addInfo');
  object.bcd = IsarNative.jsObjectGet(jsObj, 'bcd');
  object.bhfId = IsarNative.jsObjectGet(jsObj, 'bhfId');
  object.createdAt = IsarNative.jsObjectGet(jsObj, 'createdAt') ?? '';
  object.dcAmt = IsarNative.jsObjectGet(jsObj, 'dcAmt');
  object.dcRt = IsarNative.jsObjectGet(jsObj, 'dcRt');
  object.dftPrc = IsarNative.jsObjectGet(jsObj, 'dftPrc');
  object.discount = IsarNative.jsObjectGet(jsObj, 'discount');
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
  object.isRefunded = IsarNative.jsObjectGet(jsObj, 'isRefunded');
  object.isTaxExempted =
      IsarNative.jsObjectGet(jsObj, 'isTaxExempted') ?? false;
  object.isrcAmt = IsarNative.jsObjectGet(jsObj, 'isrcAmt');
  object.isrcAplcbYn = IsarNative.jsObjectGet(jsObj, 'isrcAplcbYn');
  object.isrcRt = IsarNative.jsObjectGet(jsObj, 'isrcRt');
  object.isrccCd = IsarNative.jsObjectGet(jsObj, 'isrccCd');
  object.isrccNm = IsarNative.jsObjectGet(jsObj, 'isrccNm');
  object.itemCd = IsarNative.jsObjectGet(jsObj, 'itemCd');
  object.itemClsCd = IsarNative.jsObjectGet(jsObj, 'itemClsCd');
  object.itemNm = IsarNative.jsObjectGet(jsObj, 'itemNm');
  object.itemSeq = IsarNative.jsObjectGet(jsObj, 'itemSeq');
  object.itemStdNm = IsarNative.jsObjectGet(jsObj, 'itemStdNm');
  object.itemTyCd = IsarNative.jsObjectGet(jsObj, 'itemTyCd');
  object.modrId = IsarNative.jsObjectGet(jsObj, 'modrId');
  object.modrNm = IsarNative.jsObjectGet(jsObj, 'modrNm');
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.orderId = IsarNative.jsObjectGet(jsObj, 'orderId') ??
      (double.negativeInfinity as int);
  object.orgnNatCd = IsarNative.jsObjectGet(jsObj, 'orgnNatCd');
  object.pkg = IsarNative.jsObjectGet(jsObj, 'pkg');
  object.pkgUnitCd = IsarNative.jsObjectGet(jsObj, 'pkgUnitCd');
  object.prc = IsarNative.jsObjectGet(jsObj, 'prc');
  object.price =
      IsarNative.jsObjectGet(jsObj, 'price') ?? double.negativeInfinity;
  object.qty = IsarNative.jsObjectGet(jsObj, 'qty') ?? double.negativeInfinity;
  object.qtyUnitCd = IsarNative.jsObjectGet(jsObj, 'qtyUnitCd');
  object.regrId = IsarNative.jsObjectGet(jsObj, 'regrId');
  object.regrNm = IsarNative.jsObjectGet(jsObj, 'regrNm');
  object.remainingStock = IsarNative.jsObjectGet(jsObj, 'remainingStock') ??
      double.negativeInfinity;
  object.reported = IsarNative.jsObjectGet(jsObj, 'reported');
  object.splyAmt = IsarNative.jsObjectGet(jsObj, 'splyAmt');
  object.taxAmt = IsarNative.jsObjectGet(jsObj, 'taxAmt');
  object.taxTyCd = IsarNative.jsObjectGet(jsObj, 'taxTyCd');
  object.taxblAmt = IsarNative.jsObjectGet(jsObj, 'taxblAmt');
  object.tin = IsarNative.jsObjectGet(jsObj, 'tin');
  object.totAmt = IsarNative.jsObjectGet(jsObj, 'totAmt');
  object.type = IsarNative.jsObjectGet(jsObj, 'type');
  object.updatedAt = IsarNative.jsObjectGet(jsObj, 'updatedAt') ?? '';
  object.useYn = IsarNative.jsObjectGet(jsObj, 'useYn');
  object.variantId = IsarNative.jsObjectGet(jsObj, 'variantId') ??
      (double.negativeInfinity as int);
  return object;
}

P _orderItemDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'addInfo':
      return (IsarNative.jsObjectGet(jsObj, 'addInfo')) as P;
    case 'bcd':
      return (IsarNative.jsObjectGet(jsObj, 'bcd')) as P;
    case 'bhfId':
      return (IsarNative.jsObjectGet(jsObj, 'bhfId')) as P;
    case 'createdAt':
      return (IsarNative.jsObjectGet(jsObj, 'createdAt') ?? '') as P;
    case 'dcAmt':
      return (IsarNative.jsObjectGet(jsObj, 'dcAmt')) as P;
    case 'dcRt':
      return (IsarNative.jsObjectGet(jsObj, 'dcRt')) as P;
    case 'dftPrc':
      return (IsarNative.jsObjectGet(jsObj, 'dftPrc')) as P;
    case 'discount':
      return (IsarNative.jsObjectGet(jsObj, 'discount')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'isRefunded':
      return (IsarNative.jsObjectGet(jsObj, 'isRefunded')) as P;
    case 'isTaxExempted':
      return (IsarNative.jsObjectGet(jsObj, 'isTaxExempted') ?? false) as P;
    case 'isrcAmt':
      return (IsarNative.jsObjectGet(jsObj, 'isrcAmt')) as P;
    case 'isrcAplcbYn':
      return (IsarNative.jsObjectGet(jsObj, 'isrcAplcbYn')) as P;
    case 'isrcRt':
      return (IsarNative.jsObjectGet(jsObj, 'isrcRt')) as P;
    case 'isrccCd':
      return (IsarNative.jsObjectGet(jsObj, 'isrccCd')) as P;
    case 'isrccNm':
      return (IsarNative.jsObjectGet(jsObj, 'isrccNm')) as P;
    case 'itemCd':
      return (IsarNative.jsObjectGet(jsObj, 'itemCd')) as P;
    case 'itemClsCd':
      return (IsarNative.jsObjectGet(jsObj, 'itemClsCd')) as P;
    case 'itemNm':
      return (IsarNative.jsObjectGet(jsObj, 'itemNm')) as P;
    case 'itemSeq':
      return (IsarNative.jsObjectGet(jsObj, 'itemSeq')) as P;
    case 'itemStdNm':
      return (IsarNative.jsObjectGet(jsObj, 'itemStdNm')) as P;
    case 'itemTyCd':
      return (IsarNative.jsObjectGet(jsObj, 'itemTyCd')) as P;
    case 'modrId':
      return (IsarNative.jsObjectGet(jsObj, 'modrId')) as P;
    case 'modrNm':
      return (IsarNative.jsObjectGet(jsObj, 'modrNm')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'orderId':
      return (IsarNative.jsObjectGet(jsObj, 'orderId') ??
          (double.negativeInfinity as int)) as P;
    case 'orgnNatCd':
      return (IsarNative.jsObjectGet(jsObj, 'orgnNatCd')) as P;
    case 'pkg':
      return (IsarNative.jsObjectGet(jsObj, 'pkg')) as P;
    case 'pkgUnitCd':
      return (IsarNative.jsObjectGet(jsObj, 'pkgUnitCd')) as P;
    case 'prc':
      return (IsarNative.jsObjectGet(jsObj, 'prc')) as P;
    case 'price':
      return (IsarNative.jsObjectGet(jsObj, 'price') ?? double.negativeInfinity)
          as P;
    case 'qty':
      return (IsarNative.jsObjectGet(jsObj, 'qty') ?? double.negativeInfinity)
          as P;
    case 'qtyUnitCd':
      return (IsarNative.jsObjectGet(jsObj, 'qtyUnitCd')) as P;
    case 'regrId':
      return (IsarNative.jsObjectGet(jsObj, 'regrId')) as P;
    case 'regrNm':
      return (IsarNative.jsObjectGet(jsObj, 'regrNm')) as P;
    case 'remainingStock':
      return (IsarNative.jsObjectGet(jsObj, 'remainingStock') ??
          double.negativeInfinity) as P;
    case 'reported':
      return (IsarNative.jsObjectGet(jsObj, 'reported')) as P;
    case 'splyAmt':
      return (IsarNative.jsObjectGet(jsObj, 'splyAmt')) as P;
    case 'taxAmt':
      return (IsarNative.jsObjectGet(jsObj, 'taxAmt')) as P;
    case 'taxTyCd':
      return (IsarNative.jsObjectGet(jsObj, 'taxTyCd')) as P;
    case 'taxblAmt':
      return (IsarNative.jsObjectGet(jsObj, 'taxblAmt')) as P;
    case 'tin':
      return (IsarNative.jsObjectGet(jsObj, 'tin')) as P;
    case 'totAmt':
      return (IsarNative.jsObjectGet(jsObj, 'totAmt')) as P;
    case 'type':
      return (IsarNative.jsObjectGet(jsObj, 'type')) as P;
    case 'updatedAt':
      return (IsarNative.jsObjectGet(jsObj, 'updatedAt') ?? '') as P;
    case 'useYn':
      return (IsarNative.jsObjectGet(jsObj, 'useYn')) as P;
    case 'variantId':
      return (IsarNative.jsObjectGet(jsObj, 'variantId') ??
          (double.negativeInfinity as int)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _orderItemAttachLinks(
    IsarCollection<dynamic> col, int id, OrderItem object) {}

extension OrderItemQueryWhereSort
    on QueryBuilder<OrderItem, OrderItem, QWhere> {
  QueryBuilder<OrderItem, OrderItem, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhere> anyOrderId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'orderId'));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhere> anyVariantIdOrderId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'variantId_orderId'));
  }
}

extension OrderItemQueryWhere
    on QueryBuilder<OrderItem, OrderItem, QWhereClause> {
  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> orderIdEqualTo(
      int orderId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'orderId',
      value: [orderId],
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> orderIdNotEqualTo(
      int orderId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'orderId',
        upper: [orderId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'orderId',
        lower: [orderId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'orderId',
        lower: [orderId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'orderId',
        upper: [orderId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> orderIdGreaterThan(
    int orderId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'orderId',
      lower: [orderId],
      includeLower: include,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> orderIdLessThan(
    int orderId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'orderId',
      upper: [orderId],
      includeUpper: include,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> orderIdBetween(
    int lowerOrderId,
    int upperOrderId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'orderId',
      lower: [lowerOrderId],
      includeLower: includeLower,
      upper: [upperOrderId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> variantIdEqualTo(
      int variantId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'variantId_orderId',
      value: [variantId],
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> variantIdNotEqualTo(
      int variantId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'variantId_orderId',
        upper: [variantId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'variantId_orderId',
        lower: [variantId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'variantId_orderId',
        lower: [variantId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'variantId_orderId',
        upper: [variantId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> variantIdGreaterThan(
    int variantId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'variantId_orderId',
      lower: [variantId],
      includeLower: include,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> variantIdLessThan(
    int variantId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'variantId_orderId',
      upper: [variantId],
      includeUpper: include,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> variantIdBetween(
    int lowerVariantId,
    int upperVariantId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'variantId_orderId',
      lower: [lowerVariantId],
      includeLower: includeLower,
      upper: [upperVariantId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause> variantIdOrderIdEqualTo(
      int variantId, int orderId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'variantId_orderId',
      value: [variantId, orderId],
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause>
      variantIdOrderIdNotEqualTo(int variantId, int orderId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'variantId_orderId',
        upper: [variantId, orderId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'variantId_orderId',
        lower: [variantId, orderId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'variantId_orderId',
        lower: [variantId, orderId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'variantId_orderId',
        upper: [variantId, orderId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause>
      variantIdEqualToOrderIdGreaterThan(
    int variantId,
    int orderId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'variantId_orderId',
      lower: [variantId, orderId],
      includeLower: include,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause>
      variantIdEqualToOrderIdLessThan(
    int variantId,
    int orderId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'variantId_orderId',
      upper: [variantId, orderId],
      includeUpper: include,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterWhereClause>
      variantIdEqualToOrderIdBetween(
    int variantId,
    int lowerOrderId,
    int upperOrderId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'variantId_orderId',
      lower: [variantId, lowerOrderId],
      includeLower: includeLower,
      upper: [variantId, upperOrderId],
      includeUpper: includeUpper,
    ));
  }
}

extension OrderItemQueryFilter
    on QueryBuilder<OrderItem, OrderItem, QFilterCondition> {
  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'addInfo',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'addInfo',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> addInfoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'addInfo',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'bcd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'bcd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bcdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'bcd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'bhfId',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'bhfId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> bhfIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'bhfId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> createdAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      createdAtGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> createdAtLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> createdAtBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> createdAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> createdAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> createdAtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> createdAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'createdAt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'dcAmt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcAmtGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'dcAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcAmtLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'dcAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcAmtBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dcAmt',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcRtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'dcRt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcRtGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'dcRt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcRtLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'dcRt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dcRtBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dcRt',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dftPrcIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'dftPrc',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dftPrcGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'dftPrc',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dftPrcLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'dftPrc',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> dftPrcBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dftPrc',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> discountIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'discount',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> discountGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'discount',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> discountLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'discount',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> discountBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'discount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isRefundedIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isRefunded',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isRefundedEqualTo(
      bool? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isRefunded',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      isTaxExemptedEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isTaxExempted',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrcAmt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isrcAmt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAmtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrcAmt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      isrcAplcbYnIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrcAplcbYn',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAplcbYnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      isrcAplcbYnGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAplcbYnLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAplcbYnBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isrcAplcbYn',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      isrcAplcbYnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAplcbYnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAplcbYnContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcAplcbYnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrcAplcbYn',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrcRt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isrcRt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrcRtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrcRt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrccCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isrccCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrccCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrccNm',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isrccNm',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> isrccNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrccNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemClsCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      itemClsCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemClsCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemClsCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemClsCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemNm',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemNm',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemSeq',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemSeq',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemSeqMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemSeq',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemStdNm',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      itemStdNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemStdNm',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemStdNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemStdNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemTyCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'itemTyCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> itemTyCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemTyCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'modrId',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'modrId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'modrId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'modrNm',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'modrNm',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> modrNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'modrNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'name',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orderIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'orderId',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orderIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'orderId',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orderIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'orderId',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orderIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'orderId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'orgnNatCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      orgnNatCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'orgnNatCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> orgnNatCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'orgnNatCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'pkg',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pkg',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'pkg',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'pkgUnitCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      pkgUnitCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pkgUnitCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> pkgUnitCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'pkgUnitCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> prcIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'prc',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> prcGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'prc',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> prcLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'prc',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> prcBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'prc',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> priceGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> priceLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> priceBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'price',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'qty',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'qtyUnitCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      qtyUnitCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'qtyUnitCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> qtyUnitCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'qtyUnitCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'regrId',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'regrId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'regrId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'regrNm',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'regrNm',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> regrNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'regrNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      remainingStockGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'remainingStock',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      remainingStockLessThan(double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'remainingStock',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      remainingStockBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'remainingStock',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> reportedIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'reported',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> reportedEqualTo(
      bool? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'reported',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> splyAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'splyAmt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> splyAmtGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'splyAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> splyAmtLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'splyAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> splyAmtBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'splyAmt',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxAmt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxAmtGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'taxAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxAmtLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'taxAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxAmtBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxAmt',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxTyCd',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxTyCd',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxTyCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'taxTyCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxblAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxblAmt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxblAmtGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'taxblAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxblAmtLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'taxblAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> taxblAmtBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxblAmt',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> tinIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'tin',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> tinEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'tin',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> tinGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'tin',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> tinLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'tin',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> tinBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'tin',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> totAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'totAmt',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> totAmtGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'totAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> totAmtLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'totAmt',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> totAmtBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'totAmt',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'type',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'type',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'type',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'type',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> updatedAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      updatedAtGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> updatedAtLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> updatedAtBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> updatedAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> updatedAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> updatedAtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> updatedAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'updatedAt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'useYn',
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'useYn',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> useYnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'useYn',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> variantIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'variantId',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition>
      variantIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'variantId',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> variantIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'variantId',
      value: value,
    ));
  }

  QueryBuilder<OrderItem, OrderItem, QAfterFilterCondition> variantIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'variantId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension OrderItemQueryLinks
    on QueryBuilder<OrderItem, OrderItem, QFilterCondition> {}

extension OrderItemQueryWhereSortBy
    on QueryBuilder<OrderItem, OrderItem, QSortBy> {
  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByAddInfo() {
    return addSortByInternal('addInfo', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByAddInfoDesc() {
    return addSortByInternal('addInfo', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByBcd() {
    return addSortByInternal('bcd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByBcdDesc() {
    return addSortByInternal('bcd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByBhfId() {
    return addSortByInternal('bhfId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByBhfIdDesc() {
    return addSortByInternal('bhfId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDcAmt() {
    return addSortByInternal('dcAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDcAmtDesc() {
    return addSortByInternal('dcAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDcRt() {
    return addSortByInternal('dcRt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDcRtDesc() {
    return addSortByInternal('dcRt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDftPrc() {
    return addSortByInternal('dftPrc', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDftPrcDesc() {
    return addSortByInternal('dftPrc', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDiscount() {
    return addSortByInternal('discount', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByDiscountDesc() {
    return addSortByInternal('discount', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsRefunded() {
    return addSortByInternal('isRefunded', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsRefundedDesc() {
    return addSortByInternal('isRefunded', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsTaxExempted() {
    return addSortByInternal('isTaxExempted', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsTaxExemptedDesc() {
    return addSortByInternal('isTaxExempted', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrcAmt() {
    return addSortByInternal('isrcAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrcAmtDesc() {
    return addSortByInternal('isrcAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrcAplcbYn() {
    return addSortByInternal('isrcAplcbYn', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrcAplcbYnDesc() {
    return addSortByInternal('isrcAplcbYn', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrcRt() {
    return addSortByInternal('isrcRt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrcRtDesc() {
    return addSortByInternal('isrcRt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrccCd() {
    return addSortByInternal('isrccCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrccCdDesc() {
    return addSortByInternal('isrccCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrccNm() {
    return addSortByInternal('isrccNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByIsrccNmDesc() {
    return addSortByInternal('isrccNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemCd() {
    return addSortByInternal('itemCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemCdDesc() {
    return addSortByInternal('itemCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemClsCd() {
    return addSortByInternal('itemClsCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemClsCdDesc() {
    return addSortByInternal('itemClsCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemNm() {
    return addSortByInternal('itemNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemNmDesc() {
    return addSortByInternal('itemNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemSeq() {
    return addSortByInternal('itemSeq', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemSeqDesc() {
    return addSortByInternal('itemSeq', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemStdNm() {
    return addSortByInternal('itemStdNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemStdNmDesc() {
    return addSortByInternal('itemStdNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemTyCd() {
    return addSortByInternal('itemTyCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByItemTyCdDesc() {
    return addSortByInternal('itemTyCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByModrId() {
    return addSortByInternal('modrId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByModrIdDesc() {
    return addSortByInternal('modrId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByModrNm() {
    return addSortByInternal('modrNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByModrNmDesc() {
    return addSortByInternal('modrNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByOrderId() {
    return addSortByInternal('orderId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByOrderIdDesc() {
    return addSortByInternal('orderId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByOrgnNatCd() {
    return addSortByInternal('orgnNatCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByOrgnNatCdDesc() {
    return addSortByInternal('orgnNatCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPkg() {
    return addSortByInternal('pkg', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPkgDesc() {
    return addSortByInternal('pkg', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPkgUnitCd() {
    return addSortByInternal('pkgUnitCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPkgUnitCdDesc() {
    return addSortByInternal('pkgUnitCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPrc() {
    return addSortByInternal('prc', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPrcDesc() {
    return addSortByInternal('prc', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByQtyUnitCd() {
    return addSortByInternal('qtyUnitCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByQtyUnitCdDesc() {
    return addSortByInternal('qtyUnitCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByRegrId() {
    return addSortByInternal('regrId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByRegrIdDesc() {
    return addSortByInternal('regrId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByRegrNm() {
    return addSortByInternal('regrNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByRegrNmDesc() {
    return addSortByInternal('regrNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByRemainingStock() {
    return addSortByInternal('remainingStock', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByRemainingStockDesc() {
    return addSortByInternal('remainingStock', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByReported() {
    return addSortByInternal('reported', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByReportedDesc() {
    return addSortByInternal('reported', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortBySplyAmt() {
    return addSortByInternal('splyAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortBySplyAmtDesc() {
    return addSortByInternal('splyAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTaxAmt() {
    return addSortByInternal('taxAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTaxAmtDesc() {
    return addSortByInternal('taxAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTaxTyCd() {
    return addSortByInternal('taxTyCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTaxTyCdDesc() {
    return addSortByInternal('taxTyCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTaxblAmt() {
    return addSortByInternal('taxblAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTaxblAmtDesc() {
    return addSortByInternal('taxblAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTin() {
    return addSortByInternal('tin', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTinDesc() {
    return addSortByInternal('tin', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTotAmt() {
    return addSortByInternal('totAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTotAmtDesc() {
    return addSortByInternal('totAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByType() {
    return addSortByInternal('type', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByTypeDesc() {
    return addSortByInternal('type', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByUseYn() {
    return addSortByInternal('useYn', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByUseYnDesc() {
    return addSortByInternal('useYn', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByVariantId() {
    return addSortByInternal('variantId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> sortByVariantIdDesc() {
    return addSortByInternal('variantId', Sort.desc);
  }
}

extension OrderItemQueryWhereSortThenBy
    on QueryBuilder<OrderItem, OrderItem, QSortThenBy> {
  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByAddInfo() {
    return addSortByInternal('addInfo', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByAddInfoDesc() {
    return addSortByInternal('addInfo', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByBcd() {
    return addSortByInternal('bcd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByBcdDesc() {
    return addSortByInternal('bcd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByBhfId() {
    return addSortByInternal('bhfId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByBhfIdDesc() {
    return addSortByInternal('bhfId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDcAmt() {
    return addSortByInternal('dcAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDcAmtDesc() {
    return addSortByInternal('dcAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDcRt() {
    return addSortByInternal('dcRt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDcRtDesc() {
    return addSortByInternal('dcRt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDftPrc() {
    return addSortByInternal('dftPrc', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDftPrcDesc() {
    return addSortByInternal('dftPrc', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDiscount() {
    return addSortByInternal('discount', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByDiscountDesc() {
    return addSortByInternal('discount', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsRefunded() {
    return addSortByInternal('isRefunded', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsRefundedDesc() {
    return addSortByInternal('isRefunded', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsTaxExempted() {
    return addSortByInternal('isTaxExempted', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsTaxExemptedDesc() {
    return addSortByInternal('isTaxExempted', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrcAmt() {
    return addSortByInternal('isrcAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrcAmtDesc() {
    return addSortByInternal('isrcAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrcAplcbYn() {
    return addSortByInternal('isrcAplcbYn', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrcAplcbYnDesc() {
    return addSortByInternal('isrcAplcbYn', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrcRt() {
    return addSortByInternal('isrcRt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrcRtDesc() {
    return addSortByInternal('isrcRt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrccCd() {
    return addSortByInternal('isrccCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrccCdDesc() {
    return addSortByInternal('isrccCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrccNm() {
    return addSortByInternal('isrccNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByIsrccNmDesc() {
    return addSortByInternal('isrccNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemCd() {
    return addSortByInternal('itemCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemCdDesc() {
    return addSortByInternal('itemCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemClsCd() {
    return addSortByInternal('itemClsCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemClsCdDesc() {
    return addSortByInternal('itemClsCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemNm() {
    return addSortByInternal('itemNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemNmDesc() {
    return addSortByInternal('itemNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemSeq() {
    return addSortByInternal('itemSeq', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemSeqDesc() {
    return addSortByInternal('itemSeq', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemStdNm() {
    return addSortByInternal('itemStdNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemStdNmDesc() {
    return addSortByInternal('itemStdNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemTyCd() {
    return addSortByInternal('itemTyCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByItemTyCdDesc() {
    return addSortByInternal('itemTyCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByModrId() {
    return addSortByInternal('modrId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByModrIdDesc() {
    return addSortByInternal('modrId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByModrNm() {
    return addSortByInternal('modrNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByModrNmDesc() {
    return addSortByInternal('modrNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByOrderId() {
    return addSortByInternal('orderId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByOrderIdDesc() {
    return addSortByInternal('orderId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByOrgnNatCd() {
    return addSortByInternal('orgnNatCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByOrgnNatCdDesc() {
    return addSortByInternal('orgnNatCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPkg() {
    return addSortByInternal('pkg', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPkgDesc() {
    return addSortByInternal('pkg', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPkgUnitCd() {
    return addSortByInternal('pkgUnitCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPkgUnitCdDesc() {
    return addSortByInternal('pkgUnitCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPrc() {
    return addSortByInternal('prc', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPrcDesc() {
    return addSortByInternal('prc', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByQtyUnitCd() {
    return addSortByInternal('qtyUnitCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByQtyUnitCdDesc() {
    return addSortByInternal('qtyUnitCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByRegrId() {
    return addSortByInternal('regrId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByRegrIdDesc() {
    return addSortByInternal('regrId', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByRegrNm() {
    return addSortByInternal('regrNm', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByRegrNmDesc() {
    return addSortByInternal('regrNm', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByRemainingStock() {
    return addSortByInternal('remainingStock', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByRemainingStockDesc() {
    return addSortByInternal('remainingStock', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByReported() {
    return addSortByInternal('reported', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByReportedDesc() {
    return addSortByInternal('reported', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenBySplyAmt() {
    return addSortByInternal('splyAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenBySplyAmtDesc() {
    return addSortByInternal('splyAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTaxAmt() {
    return addSortByInternal('taxAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTaxAmtDesc() {
    return addSortByInternal('taxAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTaxTyCd() {
    return addSortByInternal('taxTyCd', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTaxTyCdDesc() {
    return addSortByInternal('taxTyCd', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTaxblAmt() {
    return addSortByInternal('taxblAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTaxblAmtDesc() {
    return addSortByInternal('taxblAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTin() {
    return addSortByInternal('tin', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTinDesc() {
    return addSortByInternal('tin', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTotAmt() {
    return addSortByInternal('totAmt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTotAmtDesc() {
    return addSortByInternal('totAmt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByType() {
    return addSortByInternal('type', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByTypeDesc() {
    return addSortByInternal('type', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByUseYn() {
    return addSortByInternal('useYn', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByUseYnDesc() {
    return addSortByInternal('useYn', Sort.desc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByVariantId() {
    return addSortByInternal('variantId', Sort.asc);
  }

  QueryBuilder<OrderItem, OrderItem, QAfterSortBy> thenByVariantIdDesc() {
    return addSortByInternal('variantId', Sort.desc);
  }
}

extension OrderItemQueryWhereDistinct
    on QueryBuilder<OrderItem, OrderItem, QDistinct> {
  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByAddInfo(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('addInfo', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByBcd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('bcd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByBhfId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('bhfId', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByCreatedAt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('createdAt', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByDcAmt() {
    return addDistinctByInternal('dcAmt');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByDcRt() {
    return addDistinctByInternal('dcRt');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByDftPrc() {
    return addDistinctByInternal('dftPrc');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByDiscount() {
    return addDistinctByInternal('discount');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByIsRefunded() {
    return addDistinctByInternal('isRefunded');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByIsTaxExempted() {
    return addDistinctByInternal('isTaxExempted');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByIsrcAmt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrcAmt', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByIsrcAplcbYn(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrcAplcbYn', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByIsrcRt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrcRt', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByIsrccCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrccCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByIsrccNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrccNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByItemCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByItemClsCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemClsCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByItemNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByItemSeq(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemSeq', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByItemStdNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemStdNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByItemTyCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemTyCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByModrId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('modrId', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByModrNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('modrNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByOrderId() {
    return addDistinctByInternal('orderId');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByOrgnNatCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('orgnNatCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByPkg(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('pkg', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByPkgUnitCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('pkgUnitCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByPrc() {
    return addDistinctByInternal('prc');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByPrice() {
    return addDistinctByInternal('price');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByQty() {
    return addDistinctByInternal('qty');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByQtyUnitCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('qtyUnitCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByRegrId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('regrId', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByRegrNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('regrNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByRemainingStock() {
    return addDistinctByInternal('remainingStock');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByReported() {
    return addDistinctByInternal('reported');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctBySplyAmt() {
    return addDistinctByInternal('splyAmt');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByTaxAmt() {
    return addDistinctByInternal('taxAmt');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByTaxTyCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('taxTyCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByTaxblAmt() {
    return addDistinctByInternal('taxblAmt');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByTin() {
    return addDistinctByInternal('tin');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByTotAmt() {
    return addDistinctByInternal('totAmt');
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('type', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByUpdatedAt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('updatedAt', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByUseYn(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('useYn', caseSensitive: caseSensitive);
  }

  QueryBuilder<OrderItem, OrderItem, QDistinct> distinctByVariantId() {
    return addDistinctByInternal('variantId');
  }
}

extension OrderItemQueryProperty
    on QueryBuilder<OrderItem, OrderItem, QQueryProperty> {
  QueryBuilder<OrderItem, String?, QQueryOperations> addInfoProperty() {
    return addPropertyNameInternal('addInfo');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> bcdProperty() {
    return addPropertyNameInternal('bcd');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> bhfIdProperty() {
    return addPropertyNameInternal('bhfId');
  }

  QueryBuilder<OrderItem, String, QQueryOperations> createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> dcAmtProperty() {
    return addPropertyNameInternal('dcAmt');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> dcRtProperty() {
    return addPropertyNameInternal('dcRt');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> dftPrcProperty() {
    return addPropertyNameInternal('dftPrc');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> discountProperty() {
    return addPropertyNameInternal('discount');
  }

  QueryBuilder<OrderItem, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<OrderItem, bool?, QQueryOperations> isRefundedProperty() {
    return addPropertyNameInternal('isRefunded');
  }

  QueryBuilder<OrderItem, bool, QQueryOperations> isTaxExemptedProperty() {
    return addPropertyNameInternal('isTaxExempted');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> isrcAmtProperty() {
    return addPropertyNameInternal('isrcAmt');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> isrcAplcbYnProperty() {
    return addPropertyNameInternal('isrcAplcbYn');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> isrcRtProperty() {
    return addPropertyNameInternal('isrcRt');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> isrccCdProperty() {
    return addPropertyNameInternal('isrccCd');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> isrccNmProperty() {
    return addPropertyNameInternal('isrccNm');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> itemCdProperty() {
    return addPropertyNameInternal('itemCd');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> itemClsCdProperty() {
    return addPropertyNameInternal('itemClsCd');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> itemNmProperty() {
    return addPropertyNameInternal('itemNm');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> itemSeqProperty() {
    return addPropertyNameInternal('itemSeq');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> itemStdNmProperty() {
    return addPropertyNameInternal('itemStdNm');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> itemTyCdProperty() {
    return addPropertyNameInternal('itemTyCd');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> modrIdProperty() {
    return addPropertyNameInternal('modrId');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> modrNmProperty() {
    return addPropertyNameInternal('modrNm');
  }

  QueryBuilder<OrderItem, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<OrderItem, int, QQueryOperations> orderIdProperty() {
    return addPropertyNameInternal('orderId');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> orgnNatCdProperty() {
    return addPropertyNameInternal('orgnNatCd');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> pkgProperty() {
    return addPropertyNameInternal('pkg');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> pkgUnitCdProperty() {
    return addPropertyNameInternal('pkgUnitCd');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> prcProperty() {
    return addPropertyNameInternal('prc');
  }

  QueryBuilder<OrderItem, double, QQueryOperations> priceProperty() {
    return addPropertyNameInternal('price');
  }

  QueryBuilder<OrderItem, double, QQueryOperations> qtyProperty() {
    return addPropertyNameInternal('qty');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> qtyUnitCdProperty() {
    return addPropertyNameInternal('qtyUnitCd');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> regrIdProperty() {
    return addPropertyNameInternal('regrId');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> regrNmProperty() {
    return addPropertyNameInternal('regrNm');
  }

  QueryBuilder<OrderItem, double, QQueryOperations> remainingStockProperty() {
    return addPropertyNameInternal('remainingStock');
  }

  QueryBuilder<OrderItem, bool?, QQueryOperations> reportedProperty() {
    return addPropertyNameInternal('reported');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> splyAmtProperty() {
    return addPropertyNameInternal('splyAmt');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> taxAmtProperty() {
    return addPropertyNameInternal('taxAmt');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> taxTyCdProperty() {
    return addPropertyNameInternal('taxTyCd');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> taxblAmtProperty() {
    return addPropertyNameInternal('taxblAmt');
  }

  QueryBuilder<OrderItem, int?, QQueryOperations> tinProperty() {
    return addPropertyNameInternal('tin');
  }

  QueryBuilder<OrderItem, double?, QQueryOperations> totAmtProperty() {
    return addPropertyNameInternal('totAmt');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> typeProperty() {
    return addPropertyNameInternal('type');
  }

  QueryBuilder<OrderItem, String, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }

  QueryBuilder<OrderItem, String?, QQueryOperations> useYnProperty() {
    return addPropertyNameInternal('useYn');
  }

  QueryBuilder<OrderItem, int, QQueryOperations> variantIdProperty() {
    return addPropertyNameInternal('variantId');
  }
}
