// GENERATED CODE - DO NOT MODIFY BY HAND

part of flipper_models;

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable, no_leading_underscores_for_local_identifiers, inference_failure_on_function_invocation

extension GetVariantCollection on Isar {
  IsarCollection<Variant> get variants => getCollection();
}

const VariantSchema = CollectionSchema(
  name: 'Variant',
  schema:
      '{"name":"Variant","idName":"id","properties":[{"name":"addInfo","type":"String"},{"name":"bcd","type":"String"},{"name":"bhfId","type":"String"},{"name":"branchId","type":"Long"},{"name":"dftPrc","type":"Double"},{"name":"isTaxExempted","type":"Bool"},{"name":"isrcAmt","type":"String"},{"name":"isrcAplcbYn","type":"String"},{"name":"isrcRt","type":"String"},{"name":"isrccCd","type":"String"},{"name":"isrccNm","type":"String"},{"name":"itemCd","type":"String"},{"name":"itemClsCd","type":"String"},{"name":"itemNm","type":"String"},{"name":"itemSeq","type":"String"},{"name":"itemStdNm","type":"String"},{"name":"itemTyCd","type":"String"},{"name":"modrId","type":"String"},{"name":"modrNm","type":"String"},{"name":"name","type":"String"},{"name":"orgnNatCd","type":"String"},{"name":"pkg","type":"String"},{"name":"pkgUnitCd","type":"String"},{"name":"prc","type":"Double"},{"name":"productId","type":"Long"},{"name":"productName","type":"String"},{"name":"qty","type":"Double"},{"name":"qtyUnitCd","type":"String"},{"name":"regrId","type":"String"},{"name":"regrNm","type":"String"},{"name":"retailPrice","type":"Double"},{"name":"rsdQty","type":"Double"},{"name":"sku","type":"String"},{"name":"splyAmt","type":"Double"},{"name":"supplyPrice","type":"Double"},{"name":"table","type":"String"},{"name":"taxName","type":"String"},{"name":"taxPercentage","type":"Double"},{"name":"taxTyCd","type":"String"},{"name":"tin","type":"Long"},{"name":"unit","type":"String"},{"name":"useYn","type":"String"}],"indexes":[{"name":"name","unique":false,"replace":false,"properties":[{"name":"name","type":"Hash","caseSensitive":true}]},{"name":"productId","unique":false,"replace":false,"properties":[{"name":"productId","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'addInfo': 0,
    'bcd': 1,
    'bhfId': 2,
    'branchId': 3,
    'dftPrc': 4,
    'isTaxExempted': 5,
    'isrcAmt': 6,
    'isrcAplcbYn': 7,
    'isrcRt': 8,
    'isrccCd': 9,
    'isrccNm': 10,
    'itemCd': 11,
    'itemClsCd': 12,
    'itemNm': 13,
    'itemSeq': 14,
    'itemStdNm': 15,
    'itemTyCd': 16,
    'modrId': 17,
    'modrNm': 18,
    'name': 19,
    'orgnNatCd': 20,
    'pkg': 21,
    'pkgUnitCd': 22,
    'prc': 23,
    'productId': 24,
    'productName': 25,
    'qty': 26,
    'qtyUnitCd': 27,
    'regrId': 28,
    'regrNm': 29,
    'retailPrice': 30,
    'rsdQty': 31,
    'sku': 32,
    'splyAmt': 33,
    'supplyPrice': 34,
    'table': 35,
    'taxName': 36,
    'taxPercentage': 37,
    'taxTyCd': 38,
    'tin': 39,
    'unit': 40,
    'useYn': 41
  },
  listProperties: {},
  indexIds: {'name': 0, 'productId': 1},
  indexValueTypes: {
    'name': [
      IndexValueType.stringHash,
    ],
    'productId': [
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _variantGetId,
  setId: _variantSetId,
  getLinks: _variantGetLinks,
  attachLinks: _variantAttachLinks,
  serializeNative: _variantSerializeNative,
  deserializeNative: _variantDeserializeNative,
  deserializePropNative: _variantDeserializePropNative,
  serializeWeb: _variantSerializeWeb,
  deserializeWeb: _variantDeserializeWeb,
  deserializePropWeb: _variantDeserializePropWeb,
  version: 4,
);

int? _variantGetId(Variant object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _variantSetId(Variant object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _variantGetLinks(Variant object) {
  return [];
}

void _variantSerializeNative(
    IsarCollection<Variant> collection,
    IsarCObject cObj,
    Variant object,
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
  final productName$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.productName);
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
  final sku$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.sku);
  final table$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.table);
  IsarUint8List? taxName$Bytes;
  final taxName$Value = object.taxName;
  if (taxName$Value != null) {
    taxName$Bytes = IsarBinaryWriter.utf8Encoder.convert(taxName$Value);
  }
  IsarUint8List? taxTyCd$Bytes;
  final taxTyCd$Value = object.taxTyCd;
  if (taxTyCd$Value != null) {
    taxTyCd$Bytes = IsarBinaryWriter.utf8Encoder.convert(taxTyCd$Value);
  }
  final unit$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.unit);
  IsarUint8List? useYn$Bytes;
  final useYn$Value = object.useYn;
  if (useYn$Value != null) {
    useYn$Bytes = IsarBinaryWriter.utf8Encoder.convert(useYn$Value);
  }
  final size = staticSize +
      (addInfo$Bytes?.length ?? 0) +
      (bcd$Bytes?.length ?? 0) +
      (bhfId$Bytes?.length ?? 0) +
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
      (productName$Bytes.length) +
      (qtyUnitCd$Bytes?.length ?? 0) +
      (regrId$Bytes?.length ?? 0) +
      (regrNm$Bytes?.length ?? 0) +
      (sku$Bytes.length) +
      (table$Bytes.length) +
      (taxName$Bytes?.length ?? 0) +
      (taxTyCd$Bytes?.length ?? 0) +
      (unit$Bytes.length) +
      (useYn$Bytes?.length ?? 0);
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], addInfo$Bytes);
  writer.writeBytes(offsets[1], bcd$Bytes);
  writer.writeBytes(offsets[2], bhfId$Bytes);
  writer.writeLong(offsets[3], object.branchId);
  writer.writeDouble(offsets[4], object.dftPrc);
  writer.writeBool(offsets[5], object.isTaxExempted);
  writer.writeBytes(offsets[6], isrcAmt$Bytes);
  writer.writeBytes(offsets[7], isrcAplcbYn$Bytes);
  writer.writeBytes(offsets[8], isrcRt$Bytes);
  writer.writeBytes(offsets[9], isrccCd$Bytes);
  writer.writeBytes(offsets[10], isrccNm$Bytes);
  writer.writeBytes(offsets[11], itemCd$Bytes);
  writer.writeBytes(offsets[12], itemClsCd$Bytes);
  writer.writeBytes(offsets[13], itemNm$Bytes);
  writer.writeBytes(offsets[14], itemSeq$Bytes);
  writer.writeBytes(offsets[15], itemStdNm$Bytes);
  writer.writeBytes(offsets[16], itemTyCd$Bytes);
  writer.writeBytes(offsets[17], modrId$Bytes);
  writer.writeBytes(offsets[18], modrNm$Bytes);
  writer.writeBytes(offsets[19], name$Bytes);
  writer.writeBytes(offsets[20], orgnNatCd$Bytes);
  writer.writeBytes(offsets[21], pkg$Bytes);
  writer.writeBytes(offsets[22], pkgUnitCd$Bytes);
  writer.writeDouble(offsets[23], object.prc);
  writer.writeLong(offsets[24], object.productId);
  writer.writeBytes(offsets[25], productName$Bytes);
  writer.writeDouble(offsets[26], object.qty);
  writer.writeBytes(offsets[27], qtyUnitCd$Bytes);
  writer.writeBytes(offsets[28], regrId$Bytes);
  writer.writeBytes(offsets[29], regrNm$Bytes);
  writer.writeDouble(offsets[30], object.retailPrice);
  writer.writeDouble(offsets[31], object.rsdQty);
  writer.writeBytes(offsets[32], sku$Bytes);
  writer.writeDouble(offsets[33], object.splyAmt);
  writer.writeDouble(offsets[34], object.supplyPrice);
  writer.writeBytes(offsets[35], table$Bytes);
  writer.writeBytes(offsets[36], taxName$Bytes);
  writer.writeDouble(offsets[37], object.taxPercentage);
  writer.writeBytes(offsets[38], taxTyCd$Bytes);
  writer.writeLong(offsets[39], object.tin);
  writer.writeBytes(offsets[40], unit$Bytes);
  writer.writeBytes(offsets[41], useYn$Bytes);
}

Variant _variantDeserializeNative(IsarCollection<Variant> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Variant();
  object.addInfo = reader.readStringOrNull(offsets[0]);
  object.bcd = reader.readStringOrNull(offsets[1]);
  object.bhfId = reader.readStringOrNull(offsets[2]);
  object.branchId = reader.readLong(offsets[3]);
  object.dftPrc = reader.readDoubleOrNull(offsets[4]);
  object.id = id;
  object.isTaxExempted = reader.readBool(offsets[5]);
  object.isrcAmt = reader.readStringOrNull(offsets[6]);
  object.isrcAplcbYn = reader.readStringOrNull(offsets[7]);
  object.isrcRt = reader.readStringOrNull(offsets[8]);
  object.isrccCd = reader.readStringOrNull(offsets[9]);
  object.isrccNm = reader.readStringOrNull(offsets[10]);
  object.itemCd = reader.readStringOrNull(offsets[11]);
  object.itemClsCd = reader.readStringOrNull(offsets[12]);
  object.itemNm = reader.readStringOrNull(offsets[13]);
  object.itemSeq = reader.readStringOrNull(offsets[14]);
  object.itemStdNm = reader.readStringOrNull(offsets[15]);
  object.itemTyCd = reader.readStringOrNull(offsets[16]);
  object.modrId = reader.readStringOrNull(offsets[17]);
  object.modrNm = reader.readStringOrNull(offsets[18]);
  object.name = reader.readString(offsets[19]);
  object.orgnNatCd = reader.readStringOrNull(offsets[20]);
  object.pkg = reader.readStringOrNull(offsets[21]);
  object.pkgUnitCd = reader.readStringOrNull(offsets[22]);
  object.prc = reader.readDoubleOrNull(offsets[23]);
  object.productId = reader.readLong(offsets[24]);
  object.productName = reader.readString(offsets[25]);
  object.qty = reader.readDoubleOrNull(offsets[26]);
  object.qtyUnitCd = reader.readStringOrNull(offsets[27]);
  object.regrId = reader.readStringOrNull(offsets[28]);
  object.regrNm = reader.readStringOrNull(offsets[29]);
  object.retailPrice = reader.readDouble(offsets[30]);
  object.rsdQty = reader.readDoubleOrNull(offsets[31]);
  object.sku = reader.readString(offsets[32]);
  object.splyAmt = reader.readDoubleOrNull(offsets[33]);
  object.supplyPrice = reader.readDouble(offsets[34]);
  object.table = reader.readString(offsets[35]);
  object.taxName = reader.readStringOrNull(offsets[36]);
  object.taxPercentage = reader.readDoubleOrNull(offsets[37]);
  object.taxTyCd = reader.readStringOrNull(offsets[38]);
  object.tin = reader.readLongOrNull(offsets[39]);
  object.unit = reader.readString(offsets[40]);
  object.useYn = reader.readStringOrNull(offsets[41]);
  return object;
}

P _variantDeserializePropNative<P>(
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
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
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
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readDoubleOrNull(offset)) as P;
    case 24:
      return (reader.readLong(offset)) as P;
    case 25:
      return (reader.readString(offset)) as P;
    case 26:
      return (reader.readDoubleOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readDouble(offset)) as P;
    case 31:
      return (reader.readDoubleOrNull(offset)) as P;
    case 32:
      return (reader.readString(offset)) as P;
    case 33:
      return (reader.readDoubleOrNull(offset)) as P;
    case 34:
      return (reader.readDouble(offset)) as P;
    case 35:
      return (reader.readString(offset)) as P;
    case 36:
      return (reader.readStringOrNull(offset)) as P;
    case 37:
      return (reader.readDoubleOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readLongOrNull(offset)) as P;
    case 40:
      return (reader.readString(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _variantSerializeWeb(
    IsarCollection<Variant> collection, Variant object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'addInfo', object.addInfo);
  IsarNative.jsObjectSet(jsObj, 'bcd', object.bcd);
  IsarNative.jsObjectSet(jsObj, 'bhfId', object.bhfId);
  IsarNative.jsObjectSet(jsObj, 'branchId', object.branchId);
  IsarNative.jsObjectSet(jsObj, 'dftPrc', object.dftPrc);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
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
  IsarNative.jsObjectSet(jsObj, 'orgnNatCd', object.orgnNatCd);
  IsarNative.jsObjectSet(jsObj, 'pkg', object.pkg);
  IsarNative.jsObjectSet(jsObj, 'pkgUnitCd', object.pkgUnitCd);
  IsarNative.jsObjectSet(jsObj, 'prc', object.prc);
  IsarNative.jsObjectSet(jsObj, 'productId', object.productId);
  IsarNative.jsObjectSet(jsObj, 'productName', object.productName);
  IsarNative.jsObjectSet(jsObj, 'qty', object.qty);
  IsarNative.jsObjectSet(jsObj, 'qtyUnitCd', object.qtyUnitCd);
  IsarNative.jsObjectSet(jsObj, 'regrId', object.regrId);
  IsarNative.jsObjectSet(jsObj, 'regrNm', object.regrNm);
  IsarNative.jsObjectSet(jsObj, 'retailPrice', object.retailPrice);
  IsarNative.jsObjectSet(jsObj, 'rsdQty', object.rsdQty);
  IsarNative.jsObjectSet(jsObj, 'sku', object.sku);
  IsarNative.jsObjectSet(jsObj, 'splyAmt', object.splyAmt);
  IsarNative.jsObjectSet(jsObj, 'supplyPrice', object.supplyPrice);
  IsarNative.jsObjectSet(jsObj, 'table', object.table);
  IsarNative.jsObjectSet(jsObj, 'taxName', object.taxName);
  IsarNative.jsObjectSet(jsObj, 'taxPercentage', object.taxPercentage);
  IsarNative.jsObjectSet(jsObj, 'taxTyCd', object.taxTyCd);
  IsarNative.jsObjectSet(jsObj, 'tin', object.tin);
  IsarNative.jsObjectSet(jsObj, 'unit', object.unit);
  IsarNative.jsObjectSet(jsObj, 'useYn', object.useYn);
  return jsObj;
}

Variant _variantDeserializeWeb(
    IsarCollection<Variant> collection, Object jsObj) {
  final object = Variant();
  object.addInfo = IsarNative.jsObjectGet(jsObj, 'addInfo');
  object.bcd = IsarNative.jsObjectGet(jsObj, 'bcd');
  object.bhfId = IsarNative.jsObjectGet(jsObj, 'bhfId');
  object.branchId = IsarNative.jsObjectGet(jsObj, 'branchId') ??
      (double.negativeInfinity as int);
  object.dftPrc = IsarNative.jsObjectGet(jsObj, 'dftPrc');
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
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
  object.orgnNatCd = IsarNative.jsObjectGet(jsObj, 'orgnNatCd');
  object.pkg = IsarNative.jsObjectGet(jsObj, 'pkg');
  object.pkgUnitCd = IsarNative.jsObjectGet(jsObj, 'pkgUnitCd');
  object.prc = IsarNative.jsObjectGet(jsObj, 'prc');
  object.productId = IsarNative.jsObjectGet(jsObj, 'productId') ??
      (double.negativeInfinity as int);
  object.productName = IsarNative.jsObjectGet(jsObj, 'productName') ?? '';
  object.qty = IsarNative.jsObjectGet(jsObj, 'qty');
  object.qtyUnitCd = IsarNative.jsObjectGet(jsObj, 'qtyUnitCd');
  object.regrId = IsarNative.jsObjectGet(jsObj, 'regrId');
  object.regrNm = IsarNative.jsObjectGet(jsObj, 'regrNm');
  object.retailPrice =
      IsarNative.jsObjectGet(jsObj, 'retailPrice') ?? double.negativeInfinity;
  object.rsdQty = IsarNative.jsObjectGet(jsObj, 'rsdQty');
  object.sku = IsarNative.jsObjectGet(jsObj, 'sku') ?? '';
  object.splyAmt = IsarNative.jsObjectGet(jsObj, 'splyAmt');
  object.supplyPrice =
      IsarNative.jsObjectGet(jsObj, 'supplyPrice') ?? double.negativeInfinity;
  object.table = IsarNative.jsObjectGet(jsObj, 'table') ?? '';
  object.taxName = IsarNative.jsObjectGet(jsObj, 'taxName');
  object.taxPercentage = IsarNative.jsObjectGet(jsObj, 'taxPercentage');
  object.taxTyCd = IsarNative.jsObjectGet(jsObj, 'taxTyCd');
  object.tin = IsarNative.jsObjectGet(jsObj, 'tin');
  object.unit = IsarNative.jsObjectGet(jsObj, 'unit') ?? '';
  object.useYn = IsarNative.jsObjectGet(jsObj, 'useYn');
  return object;
}

P _variantDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'addInfo':
      return (IsarNative.jsObjectGet(jsObj, 'addInfo')) as P;
    case 'bcd':
      return (IsarNative.jsObjectGet(jsObj, 'bcd')) as P;
    case 'bhfId':
      return (IsarNative.jsObjectGet(jsObj, 'bhfId')) as P;
    case 'branchId':
      return (IsarNative.jsObjectGet(jsObj, 'branchId') ??
          (double.negativeInfinity as int)) as P;
    case 'dftPrc':
      return (IsarNative.jsObjectGet(jsObj, 'dftPrc')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
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
    case 'orgnNatCd':
      return (IsarNative.jsObjectGet(jsObj, 'orgnNatCd')) as P;
    case 'pkg':
      return (IsarNative.jsObjectGet(jsObj, 'pkg')) as P;
    case 'pkgUnitCd':
      return (IsarNative.jsObjectGet(jsObj, 'pkgUnitCd')) as P;
    case 'prc':
      return (IsarNative.jsObjectGet(jsObj, 'prc')) as P;
    case 'productId':
      return (IsarNative.jsObjectGet(jsObj, 'productId') ??
          (double.negativeInfinity as int)) as P;
    case 'productName':
      return (IsarNative.jsObjectGet(jsObj, 'productName') ?? '') as P;
    case 'qty':
      return (IsarNative.jsObjectGet(jsObj, 'qty')) as P;
    case 'qtyUnitCd':
      return (IsarNative.jsObjectGet(jsObj, 'qtyUnitCd')) as P;
    case 'regrId':
      return (IsarNative.jsObjectGet(jsObj, 'regrId')) as P;
    case 'regrNm':
      return (IsarNative.jsObjectGet(jsObj, 'regrNm')) as P;
    case 'retailPrice':
      return (IsarNative.jsObjectGet(jsObj, 'retailPrice') ??
          double.negativeInfinity) as P;
    case 'rsdQty':
      return (IsarNative.jsObjectGet(jsObj, 'rsdQty')) as P;
    case 'sku':
      return (IsarNative.jsObjectGet(jsObj, 'sku') ?? '') as P;
    case 'splyAmt':
      return (IsarNative.jsObjectGet(jsObj, 'splyAmt')) as P;
    case 'supplyPrice':
      return (IsarNative.jsObjectGet(jsObj, 'supplyPrice') ??
          double.negativeInfinity) as P;
    case 'table':
      return (IsarNative.jsObjectGet(jsObj, 'table') ?? '') as P;
    case 'taxName':
      return (IsarNative.jsObjectGet(jsObj, 'taxName')) as P;
    case 'taxPercentage':
      return (IsarNative.jsObjectGet(jsObj, 'taxPercentage')) as P;
    case 'taxTyCd':
      return (IsarNative.jsObjectGet(jsObj, 'taxTyCd')) as P;
    case 'tin':
      return (IsarNative.jsObjectGet(jsObj, 'tin')) as P;
    case 'unit':
      return (IsarNative.jsObjectGet(jsObj, 'unit') ?? '') as P;
    case 'useYn':
      return (IsarNative.jsObjectGet(jsObj, 'useYn')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _variantAttachLinks(IsarCollection<dynamic> col, int id, Variant object) {}

extension VariantQueryWhereSort on QueryBuilder<Variant, Variant, QWhere> {
  QueryBuilder<Variant, Variant, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Variant, Variant, QAfterWhere> anyName() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'name'));
  }

  QueryBuilder<Variant, Variant, QAfterWhere> anyProductId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'productId'));
  }
}

extension VariantQueryWhere on QueryBuilder<Variant, Variant, QWhereClause> {
  QueryBuilder<Variant, Variant, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Variant, Variant, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> idBetween(
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

  QueryBuilder<Variant, Variant, QAfterWhereClause> nameEqualTo(String name) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'name',
      value: [name],
    ));
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> nameNotEqualTo(
      String name) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'name',
        lower: [name],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'name',
        upper: [name],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> productIdEqualTo(
      int productId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'productId',
      value: [productId],
    ));
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> productIdNotEqualTo(
      int productId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'productId',
        upper: [productId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'productId',
        lower: [productId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'productId',
        lower: [productId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'productId',
        upper: [productId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> productIdGreaterThan(
    int productId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'productId',
      lower: [productId],
      includeLower: include,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> productIdLessThan(
    int productId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'productId',
      upper: [productId],
      includeUpper: include,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterWhereClause> productIdBetween(
    int lowerProductId,
    int upperProductId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'productId',
      lower: [lowerProductId],
      includeLower: includeLower,
      upper: [upperProductId],
      includeUpper: includeUpper,
    ));
  }
}

extension VariantQueryFilter
    on QueryBuilder<Variant, Variant, QFilterCondition> {
  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'addInfo',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'addInfo',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> addInfoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'addInfo',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'bcd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'bcd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bcdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'bcd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'bhfId',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'bhfId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> bhfIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'bhfId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> branchIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'branchId',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> branchIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'branchId',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> branchIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'branchId',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> branchIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'branchId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> dftPrcIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'dftPrc',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> dftPrcGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'dftPrc',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> dftPrcLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'dftPrc',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> dftPrcBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dftPrc',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isTaxExemptedEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isTaxExempted',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrcAmt',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrcAmt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAmtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrcAmt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrcAplcbYn',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrcAplcbYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcAplcbYnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrcAplcbYn',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrcRt',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrcRt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrcRtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrcRt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrccCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrccCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrccCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'isrccNm',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'isrccNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> isrccNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'isrccNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemClsCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemClsCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemClsCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemClsCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemNm',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemSeq',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemSeq',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemSeqMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemSeq',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemStdNm',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemStdNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemStdNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemStdNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'itemTyCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'itemTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> itemTyCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'itemTyCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'modrId',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'modrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'modrId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'modrNm',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'modrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> modrNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'modrNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'name',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'orgnNatCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'orgnNatCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> orgnNatCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'orgnNatCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'pkg',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'pkg',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'pkg',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'pkgUnitCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'pkgUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> pkgUnitCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'pkgUnitCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> prcIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'prc',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> prcGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'prc',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> prcLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'prc',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> prcBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'prc',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'productId',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'productId',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'productId',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> productNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'productName',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'qty',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'qty',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'qty',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'qtyUnitCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'qtyUnitCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> qtyUnitCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'qtyUnitCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'regrId',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'regrId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'regrId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'regrNm',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'regrNm',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> regrNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'regrNm',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> retailPriceGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'retailPrice',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> retailPriceLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'retailPrice',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> retailPriceBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'retailPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> rsdQtyIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'rsdQty',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> rsdQtyGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'rsdQty',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> rsdQtyLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'rsdQty',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> rsdQtyBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'rsdQty',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'sku',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> skuMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'sku',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> splyAmtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'splyAmt',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> splyAmtGreaterThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'splyAmt',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> splyAmtLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'splyAmt',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> splyAmtBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'splyAmt',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> supplyPriceGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'supplyPrice',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> supplyPriceLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'supplyPrice',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> supplyPriceBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'supplyPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'table',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tableMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'table',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxName',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'taxName',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxPercentageIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxPercentage',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition>
      taxPercentageGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'taxPercentage',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxPercentageLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'taxPercentage',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxPercentageBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxPercentage',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxTyCd',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'taxTyCd',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> taxTyCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'taxTyCd',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tinIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'tin',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tinEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'tin',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tinGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'tin',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tinLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'tin',
      value: value,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> tinBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'unit',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> unitMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'unit',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'useYn',
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnGreaterThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnLessThan(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnBetween(
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

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'useYn',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Variant, Variant, QAfterFilterCondition> useYnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'useYn',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension VariantQueryLinks
    on QueryBuilder<Variant, Variant, QFilterCondition> {}

extension VariantQueryWhereSortBy on QueryBuilder<Variant, Variant, QSortBy> {
  QueryBuilder<Variant, Variant, QAfterSortBy> sortByAddInfo() {
    return addSortByInternal('addInfo', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByAddInfoDesc() {
    return addSortByInternal('addInfo', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByBcd() {
    return addSortByInternal('bcd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByBcdDesc() {
    return addSortByInternal('bcd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByBhfId() {
    return addSortByInternal('bhfId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByBhfIdDesc() {
    return addSortByInternal('bhfId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByBranchId() {
    return addSortByInternal('branchId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByBranchIdDesc() {
    return addSortByInternal('branchId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByDftPrc() {
    return addSortByInternal('dftPrc', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByDftPrcDesc() {
    return addSortByInternal('dftPrc', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsTaxExempted() {
    return addSortByInternal('isTaxExempted', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsTaxExemptedDesc() {
    return addSortByInternal('isTaxExempted', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrcAmt() {
    return addSortByInternal('isrcAmt', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrcAmtDesc() {
    return addSortByInternal('isrcAmt', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrcAplcbYn() {
    return addSortByInternal('isrcAplcbYn', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrcAplcbYnDesc() {
    return addSortByInternal('isrcAplcbYn', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrcRt() {
    return addSortByInternal('isrcRt', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrcRtDesc() {
    return addSortByInternal('isrcRt', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrccCd() {
    return addSortByInternal('isrccCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrccCdDesc() {
    return addSortByInternal('isrccCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrccNm() {
    return addSortByInternal('isrccNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByIsrccNmDesc() {
    return addSortByInternal('isrccNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemCd() {
    return addSortByInternal('itemCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemCdDesc() {
    return addSortByInternal('itemCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemClsCd() {
    return addSortByInternal('itemClsCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemClsCdDesc() {
    return addSortByInternal('itemClsCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemNm() {
    return addSortByInternal('itemNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemNmDesc() {
    return addSortByInternal('itemNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemSeq() {
    return addSortByInternal('itemSeq', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemSeqDesc() {
    return addSortByInternal('itemSeq', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemStdNm() {
    return addSortByInternal('itemStdNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemStdNmDesc() {
    return addSortByInternal('itemStdNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemTyCd() {
    return addSortByInternal('itemTyCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByItemTyCdDesc() {
    return addSortByInternal('itemTyCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByModrId() {
    return addSortByInternal('modrId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByModrIdDesc() {
    return addSortByInternal('modrId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByModrNm() {
    return addSortByInternal('modrNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByModrNmDesc() {
    return addSortByInternal('modrNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByOrgnNatCd() {
    return addSortByInternal('orgnNatCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByOrgnNatCdDesc() {
    return addSortByInternal('orgnNatCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByPkg() {
    return addSortByInternal('pkg', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByPkgDesc() {
    return addSortByInternal('pkg', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByPkgUnitCd() {
    return addSortByInternal('pkgUnitCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByPkgUnitCdDesc() {
    return addSortByInternal('pkgUnitCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByPrc() {
    return addSortByInternal('prc', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByPrcDesc() {
    return addSortByInternal('prc', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByProductName() {
    return addSortByInternal('productName', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByProductNameDesc() {
    return addSortByInternal('productName', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByQtyUnitCd() {
    return addSortByInternal('qtyUnitCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByQtyUnitCdDesc() {
    return addSortByInternal('qtyUnitCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRegrId() {
    return addSortByInternal('regrId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRegrIdDesc() {
    return addSortByInternal('regrId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRegrNm() {
    return addSortByInternal('regrNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRegrNmDesc() {
    return addSortByInternal('regrNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRetailPrice() {
    return addSortByInternal('retailPrice', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRetailPriceDesc() {
    return addSortByInternal('retailPrice', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRsdQty() {
    return addSortByInternal('rsdQty', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByRsdQtyDesc() {
    return addSortByInternal('rsdQty', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortBySku() {
    return addSortByInternal('sku', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortBySkuDesc() {
    return addSortByInternal('sku', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortBySplyAmt() {
    return addSortByInternal('splyAmt', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortBySplyAmtDesc() {
    return addSortByInternal('splyAmt', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortBySupplyPrice() {
    return addSortByInternal('supplyPrice', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortBySupplyPriceDesc() {
    return addSortByInternal('supplyPrice', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTable() {
    return addSortByInternal('table', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTableDesc() {
    return addSortByInternal('table', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTaxName() {
    return addSortByInternal('taxName', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTaxNameDesc() {
    return addSortByInternal('taxName', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTaxPercentage() {
    return addSortByInternal('taxPercentage', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTaxPercentageDesc() {
    return addSortByInternal('taxPercentage', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTaxTyCd() {
    return addSortByInternal('taxTyCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTaxTyCdDesc() {
    return addSortByInternal('taxTyCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTin() {
    return addSortByInternal('tin', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByTinDesc() {
    return addSortByInternal('tin', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByUnit() {
    return addSortByInternal('unit', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByUnitDesc() {
    return addSortByInternal('unit', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByUseYn() {
    return addSortByInternal('useYn', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> sortByUseYnDesc() {
    return addSortByInternal('useYn', Sort.desc);
  }
}

extension VariantQueryWhereSortThenBy
    on QueryBuilder<Variant, Variant, QSortThenBy> {
  QueryBuilder<Variant, Variant, QAfterSortBy> thenByAddInfo() {
    return addSortByInternal('addInfo', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByAddInfoDesc() {
    return addSortByInternal('addInfo', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByBcd() {
    return addSortByInternal('bcd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByBcdDesc() {
    return addSortByInternal('bcd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByBhfId() {
    return addSortByInternal('bhfId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByBhfIdDesc() {
    return addSortByInternal('bhfId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByBranchId() {
    return addSortByInternal('branchId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByBranchIdDesc() {
    return addSortByInternal('branchId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByDftPrc() {
    return addSortByInternal('dftPrc', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByDftPrcDesc() {
    return addSortByInternal('dftPrc', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsTaxExempted() {
    return addSortByInternal('isTaxExempted', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsTaxExemptedDesc() {
    return addSortByInternal('isTaxExempted', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrcAmt() {
    return addSortByInternal('isrcAmt', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrcAmtDesc() {
    return addSortByInternal('isrcAmt', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrcAplcbYn() {
    return addSortByInternal('isrcAplcbYn', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrcAplcbYnDesc() {
    return addSortByInternal('isrcAplcbYn', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrcRt() {
    return addSortByInternal('isrcRt', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrcRtDesc() {
    return addSortByInternal('isrcRt', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrccCd() {
    return addSortByInternal('isrccCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrccCdDesc() {
    return addSortByInternal('isrccCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrccNm() {
    return addSortByInternal('isrccNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByIsrccNmDesc() {
    return addSortByInternal('isrccNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemCd() {
    return addSortByInternal('itemCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemCdDesc() {
    return addSortByInternal('itemCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemClsCd() {
    return addSortByInternal('itemClsCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemClsCdDesc() {
    return addSortByInternal('itemClsCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemNm() {
    return addSortByInternal('itemNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemNmDesc() {
    return addSortByInternal('itemNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemSeq() {
    return addSortByInternal('itemSeq', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemSeqDesc() {
    return addSortByInternal('itemSeq', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemStdNm() {
    return addSortByInternal('itemStdNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemStdNmDesc() {
    return addSortByInternal('itemStdNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemTyCd() {
    return addSortByInternal('itemTyCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByItemTyCdDesc() {
    return addSortByInternal('itemTyCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByModrId() {
    return addSortByInternal('modrId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByModrIdDesc() {
    return addSortByInternal('modrId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByModrNm() {
    return addSortByInternal('modrNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByModrNmDesc() {
    return addSortByInternal('modrNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByOrgnNatCd() {
    return addSortByInternal('orgnNatCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByOrgnNatCdDesc() {
    return addSortByInternal('orgnNatCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByPkg() {
    return addSortByInternal('pkg', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByPkgDesc() {
    return addSortByInternal('pkg', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByPkgUnitCd() {
    return addSortByInternal('pkgUnitCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByPkgUnitCdDesc() {
    return addSortByInternal('pkgUnitCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByPrc() {
    return addSortByInternal('prc', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByPrcDesc() {
    return addSortByInternal('prc', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByProductName() {
    return addSortByInternal('productName', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByProductNameDesc() {
    return addSortByInternal('productName', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByQty() {
    return addSortByInternal('qty', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByQtyDesc() {
    return addSortByInternal('qty', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByQtyUnitCd() {
    return addSortByInternal('qtyUnitCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByQtyUnitCdDesc() {
    return addSortByInternal('qtyUnitCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRegrId() {
    return addSortByInternal('regrId', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRegrIdDesc() {
    return addSortByInternal('regrId', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRegrNm() {
    return addSortByInternal('regrNm', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRegrNmDesc() {
    return addSortByInternal('regrNm', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRetailPrice() {
    return addSortByInternal('retailPrice', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRetailPriceDesc() {
    return addSortByInternal('retailPrice', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRsdQty() {
    return addSortByInternal('rsdQty', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByRsdQtyDesc() {
    return addSortByInternal('rsdQty', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenBySku() {
    return addSortByInternal('sku', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenBySkuDesc() {
    return addSortByInternal('sku', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenBySplyAmt() {
    return addSortByInternal('splyAmt', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenBySplyAmtDesc() {
    return addSortByInternal('splyAmt', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenBySupplyPrice() {
    return addSortByInternal('supplyPrice', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenBySupplyPriceDesc() {
    return addSortByInternal('supplyPrice', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTable() {
    return addSortByInternal('table', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTableDesc() {
    return addSortByInternal('table', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTaxName() {
    return addSortByInternal('taxName', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTaxNameDesc() {
    return addSortByInternal('taxName', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTaxPercentage() {
    return addSortByInternal('taxPercentage', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTaxPercentageDesc() {
    return addSortByInternal('taxPercentage', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTaxTyCd() {
    return addSortByInternal('taxTyCd', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTaxTyCdDesc() {
    return addSortByInternal('taxTyCd', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTin() {
    return addSortByInternal('tin', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByTinDesc() {
    return addSortByInternal('tin', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByUnit() {
    return addSortByInternal('unit', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByUnitDesc() {
    return addSortByInternal('unit', Sort.desc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByUseYn() {
    return addSortByInternal('useYn', Sort.asc);
  }

  QueryBuilder<Variant, Variant, QAfterSortBy> thenByUseYnDesc() {
    return addSortByInternal('useYn', Sort.desc);
  }
}

extension VariantQueryWhereDistinct
    on QueryBuilder<Variant, Variant, QDistinct> {
  QueryBuilder<Variant, Variant, QDistinct> distinctByAddInfo(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('addInfo', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByBcd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('bcd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByBhfId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('bhfId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByBranchId() {
    return addDistinctByInternal('branchId');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByDftPrc() {
    return addDistinctByInternal('dftPrc');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByIsTaxExempted() {
    return addDistinctByInternal('isTaxExempted');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByIsrcAmt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrcAmt', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByIsrcAplcbYn(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrcAplcbYn', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByIsrcRt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrcRt', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByIsrccCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrccCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByIsrccNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('isrccNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByItemCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByItemClsCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemClsCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByItemNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByItemSeq(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemSeq', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByItemStdNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemStdNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByItemTyCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('itemTyCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByModrId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('modrId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByModrNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('modrNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByOrgnNatCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('orgnNatCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByPkg(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('pkg', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByPkgUnitCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('pkgUnitCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByPrc() {
    return addDistinctByInternal('prc');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByProductId() {
    return addDistinctByInternal('productId');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByProductName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('productName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByQty() {
    return addDistinctByInternal('qty');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByQtyUnitCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('qtyUnitCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByRegrId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('regrId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByRegrNm(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('regrNm', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByRetailPrice() {
    return addDistinctByInternal('retailPrice');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByRsdQty() {
    return addDistinctByInternal('rsdQty');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctBySku(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('sku', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctBySplyAmt() {
    return addDistinctByInternal('splyAmt');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctBySupplyPrice() {
    return addDistinctByInternal('supplyPrice');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByTable(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('table', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByTaxName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('taxName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByTaxPercentage() {
    return addDistinctByInternal('taxPercentage');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByTaxTyCd(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('taxTyCd', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByTin() {
    return addDistinctByInternal('tin');
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByUnit(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('unit', caseSensitive: caseSensitive);
  }

  QueryBuilder<Variant, Variant, QDistinct> distinctByUseYn(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('useYn', caseSensitive: caseSensitive);
  }
}

extension VariantQueryProperty
    on QueryBuilder<Variant, Variant, QQueryProperty> {
  QueryBuilder<Variant, String?, QQueryOperations> addInfoProperty() {
    return addPropertyNameInternal('addInfo');
  }

  QueryBuilder<Variant, String?, QQueryOperations> bcdProperty() {
    return addPropertyNameInternal('bcd');
  }

  QueryBuilder<Variant, String?, QQueryOperations> bhfIdProperty() {
    return addPropertyNameInternal('bhfId');
  }

  QueryBuilder<Variant, int, QQueryOperations> branchIdProperty() {
    return addPropertyNameInternal('branchId');
  }

  QueryBuilder<Variant, double?, QQueryOperations> dftPrcProperty() {
    return addPropertyNameInternal('dftPrc');
  }

  QueryBuilder<Variant, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Variant, bool, QQueryOperations> isTaxExemptedProperty() {
    return addPropertyNameInternal('isTaxExempted');
  }

  QueryBuilder<Variant, String?, QQueryOperations> isrcAmtProperty() {
    return addPropertyNameInternal('isrcAmt');
  }

  QueryBuilder<Variant, String?, QQueryOperations> isrcAplcbYnProperty() {
    return addPropertyNameInternal('isrcAplcbYn');
  }

  QueryBuilder<Variant, String?, QQueryOperations> isrcRtProperty() {
    return addPropertyNameInternal('isrcRt');
  }

  QueryBuilder<Variant, String?, QQueryOperations> isrccCdProperty() {
    return addPropertyNameInternal('isrccCd');
  }

  QueryBuilder<Variant, String?, QQueryOperations> isrccNmProperty() {
    return addPropertyNameInternal('isrccNm');
  }

  QueryBuilder<Variant, String?, QQueryOperations> itemCdProperty() {
    return addPropertyNameInternal('itemCd');
  }

  QueryBuilder<Variant, String?, QQueryOperations> itemClsCdProperty() {
    return addPropertyNameInternal('itemClsCd');
  }

  QueryBuilder<Variant, String?, QQueryOperations> itemNmProperty() {
    return addPropertyNameInternal('itemNm');
  }

  QueryBuilder<Variant, String?, QQueryOperations> itemSeqProperty() {
    return addPropertyNameInternal('itemSeq');
  }

  QueryBuilder<Variant, String?, QQueryOperations> itemStdNmProperty() {
    return addPropertyNameInternal('itemStdNm');
  }

  QueryBuilder<Variant, String?, QQueryOperations> itemTyCdProperty() {
    return addPropertyNameInternal('itemTyCd');
  }

  QueryBuilder<Variant, String?, QQueryOperations> modrIdProperty() {
    return addPropertyNameInternal('modrId');
  }

  QueryBuilder<Variant, String?, QQueryOperations> modrNmProperty() {
    return addPropertyNameInternal('modrNm');
  }

  QueryBuilder<Variant, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Variant, String?, QQueryOperations> orgnNatCdProperty() {
    return addPropertyNameInternal('orgnNatCd');
  }

  QueryBuilder<Variant, String?, QQueryOperations> pkgProperty() {
    return addPropertyNameInternal('pkg');
  }

  QueryBuilder<Variant, String?, QQueryOperations> pkgUnitCdProperty() {
    return addPropertyNameInternal('pkgUnitCd');
  }

  QueryBuilder<Variant, double?, QQueryOperations> prcProperty() {
    return addPropertyNameInternal('prc');
  }

  QueryBuilder<Variant, int, QQueryOperations> productIdProperty() {
    return addPropertyNameInternal('productId');
  }

  QueryBuilder<Variant, String, QQueryOperations> productNameProperty() {
    return addPropertyNameInternal('productName');
  }

  QueryBuilder<Variant, double?, QQueryOperations> qtyProperty() {
    return addPropertyNameInternal('qty');
  }

  QueryBuilder<Variant, String?, QQueryOperations> qtyUnitCdProperty() {
    return addPropertyNameInternal('qtyUnitCd');
  }

  QueryBuilder<Variant, String?, QQueryOperations> regrIdProperty() {
    return addPropertyNameInternal('regrId');
  }

  QueryBuilder<Variant, String?, QQueryOperations> regrNmProperty() {
    return addPropertyNameInternal('regrNm');
  }

  QueryBuilder<Variant, double, QQueryOperations> retailPriceProperty() {
    return addPropertyNameInternal('retailPrice');
  }

  QueryBuilder<Variant, double?, QQueryOperations> rsdQtyProperty() {
    return addPropertyNameInternal('rsdQty');
  }

  QueryBuilder<Variant, String, QQueryOperations> skuProperty() {
    return addPropertyNameInternal('sku');
  }

  QueryBuilder<Variant, double?, QQueryOperations> splyAmtProperty() {
    return addPropertyNameInternal('splyAmt');
  }

  QueryBuilder<Variant, double, QQueryOperations> supplyPriceProperty() {
    return addPropertyNameInternal('supplyPrice');
  }

  QueryBuilder<Variant, String, QQueryOperations> tableProperty() {
    return addPropertyNameInternal('table');
  }

  QueryBuilder<Variant, String?, QQueryOperations> taxNameProperty() {
    return addPropertyNameInternal('taxName');
  }

  QueryBuilder<Variant, double?, QQueryOperations> taxPercentageProperty() {
    return addPropertyNameInternal('taxPercentage');
  }

  QueryBuilder<Variant, String?, QQueryOperations> taxTyCdProperty() {
    return addPropertyNameInternal('taxTyCd');
  }

  QueryBuilder<Variant, int?, QQueryOperations> tinProperty() {
    return addPropertyNameInternal('tin');
  }

  QueryBuilder<Variant, String, QQueryOperations> unitProperty() {
    return addPropertyNameInternal('unit');
  }

  QueryBuilder<Variant, String?, QQueryOperations> useYnProperty() {
    return addPropertyNameInternal('useYn');
  }
}
