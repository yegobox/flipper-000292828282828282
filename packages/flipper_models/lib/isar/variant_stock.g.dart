// GENERATED CODE - DO NOT MODIFY BY HAND

part of flipper_models;

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable, no_leading_underscores_for_local_identifiers, inference_failure_on_function_invocation

extension GetVariantStockCollection on Isar {
  IsarCollection<VariantStock> get variantStocks => getCollection();
}

const VariantStockSchema = CollectionSchema(
  name: 'VariantStock',
  schema:
      '{"name":"VariantStock","idName":"id","properties":[{"name":"canTrackingStock","type":"Bool"},{"name":"currentStock","type":"Double"},{"name":"fbranchId","type":"String"},{"name":"fvariantId","type":"String"},{"name":"lowStock","type":"Double"},{"name":"productName","type":"String"},{"name":"retailPrice","type":"Double"},{"name":"sku","type":"String"},{"name":"taxName","type":"String"},{"name":"taxPercentage","type":"Double"},{"name":"unit","type":"String"},{"name":"value","type":"Double"},{"name":"variantName","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'canTrackingStock': 0,
    'currentStock': 1,
    'fbranchId': 2,
    'fvariantId': 3,
    'lowStock': 4,
    'productName': 5,
    'retailPrice': 6,
    'sku': 7,
    'taxName': 8,
    'taxPercentage': 9,
    'unit': 10,
    'value': 11,
    'variantName': 12
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _variantStockGetId,
  setId: _variantStockSetId,
  getLinks: _variantStockGetLinks,
  attachLinks: _variantStockAttachLinks,
  serializeNative: _variantStockSerializeNative,
  deserializeNative: _variantStockDeserializeNative,
  deserializePropNative: _variantStockDeserializePropNative,
  serializeWeb: _variantStockSerializeWeb,
  deserializeWeb: _variantStockDeserializeWeb,
  deserializePropWeb: _variantStockDeserializePropWeb,
  version: 4,
);

int? _variantStockGetId(VariantStock object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _variantStockSetId(VariantStock object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _variantStockGetLinks(VariantStock object) {
  return [];
}

void _variantStockSerializeNative(
    IsarCollection<VariantStock> collection,
    IsarCObject cObj,
    VariantStock object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  final fbranchId$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.fbranchId);
  final fvariantId$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.fvariantId);
  final productName$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.productName);
  final sku$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.sku);
  IsarUint8List? taxName$Bytes;
  final taxName$Value = object.taxName;
  if (taxName$Value != null) {
    taxName$Bytes = IsarBinaryWriter.utf8Encoder.convert(taxName$Value);
  }
  final unit$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.unit);
  final variantName$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.variantName);
  final size = staticSize +
      (fbranchId$Bytes.length) +
      (fvariantId$Bytes.length) +
      (productName$Bytes.length) +
      (sku$Bytes.length) +
      (taxName$Bytes?.length ?? 0) +
      (unit$Bytes.length) +
      (variantName$Bytes.length);
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], object.canTrackingStock);
  writer.writeDouble(offsets[1], object.currentStock);
  writer.writeBytes(offsets[2], fbranchId$Bytes);
  writer.writeBytes(offsets[3], fvariantId$Bytes);
  writer.writeDouble(offsets[4], object.lowStock);
  writer.writeBytes(offsets[5], productName$Bytes);
  writer.writeDouble(offsets[6], object.retailPrice);
  writer.writeBytes(offsets[7], sku$Bytes);
  writer.writeBytes(offsets[8], taxName$Bytes);
  writer.writeDouble(offsets[9], object.taxPercentage);
  writer.writeBytes(offsets[10], unit$Bytes);
  writer.writeDouble(offsets[11], object.value);
  writer.writeBytes(offsets[12], variantName$Bytes);
}

VariantStock _variantStockDeserializeNative(
    IsarCollection<VariantStock> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = VariantStock(
    canTrackingStock: reader.readBool(offsets[0]),
    currentStock: reader.readDouble(offsets[1]),
    fbranchId: reader.readString(offsets[2]),
    fvariantId: reader.readString(offsets[3]),
    id: id,
    lowStock: reader.readDoubleOrNull(offsets[4]),
    productName: reader.readString(offsets[5]),
    retailPrice: reader.readDouble(offsets[6]),
    sku: reader.readString(offsets[7]),
    taxName: reader.readStringOrNull(offsets[8]),
    taxPercentage: reader.readDoubleOrNull(offsets[9]),
    unit: reader.readString(offsets[10]),
    value: reader.readDouble(offsets[11]),
    variantName: reader.readString(offsets[12]),
  );
  return object;
}

P _variantStockDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _variantStockSerializeWeb(
    IsarCollection<VariantStock> collection, VariantStock object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'canTrackingStock', object.canTrackingStock);
  IsarNative.jsObjectSet(jsObj, 'currentStock', object.currentStock);
  IsarNative.jsObjectSet(jsObj, 'fbranchId', object.fbranchId);
  IsarNative.jsObjectSet(jsObj, 'fvariantId', object.fvariantId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'lowStock', object.lowStock);
  IsarNative.jsObjectSet(jsObj, 'productName', object.productName);
  IsarNative.jsObjectSet(jsObj, 'retailPrice', object.retailPrice);
  IsarNative.jsObjectSet(jsObj, 'sku', object.sku);
  IsarNative.jsObjectSet(jsObj, 'taxName', object.taxName);
  IsarNative.jsObjectSet(jsObj, 'taxPercentage', object.taxPercentage);
  IsarNative.jsObjectSet(jsObj, 'unit', object.unit);
  IsarNative.jsObjectSet(jsObj, 'value', object.value);
  IsarNative.jsObjectSet(jsObj, 'variantName', object.variantName);
  return jsObj;
}

VariantStock _variantStockDeserializeWeb(
    IsarCollection<VariantStock> collection, Object jsObj) {
  final object = VariantStock(
    canTrackingStock:
        IsarNative.jsObjectGet(jsObj, 'canTrackingStock') ?? false,
    currentStock: IsarNative.jsObjectGet(jsObj, 'currentStock') ??
        double.negativeInfinity,
    fbranchId: IsarNative.jsObjectGet(jsObj, 'fbranchId') ?? '',
    fvariantId: IsarNative.jsObjectGet(jsObj, 'fvariantId') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
    lowStock: IsarNative.jsObjectGet(jsObj, 'lowStock'),
    productName: IsarNative.jsObjectGet(jsObj, 'productName') ?? '',
    retailPrice:
        IsarNative.jsObjectGet(jsObj, 'retailPrice') ?? double.negativeInfinity,
    sku: IsarNative.jsObjectGet(jsObj, 'sku') ?? '',
    taxName: IsarNative.jsObjectGet(jsObj, 'taxName'),
    taxPercentage: IsarNative.jsObjectGet(jsObj, 'taxPercentage'),
    unit: IsarNative.jsObjectGet(jsObj, 'unit') ?? '',
    value: IsarNative.jsObjectGet(jsObj, 'value') ?? double.negativeInfinity,
    variantName: IsarNative.jsObjectGet(jsObj, 'variantName') ?? '',
  );
  return object;
}

P _variantStockDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'canTrackingStock':
      return (IsarNative.jsObjectGet(jsObj, 'canTrackingStock') ?? false) as P;
    case 'currentStock':
      return (IsarNative.jsObjectGet(jsObj, 'currentStock') ??
          double.negativeInfinity) as P;
    case 'fbranchId':
      return (IsarNative.jsObjectGet(jsObj, 'fbranchId') ?? '') as P;
    case 'fvariantId':
      return (IsarNative.jsObjectGet(jsObj, 'fvariantId') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'lowStock':
      return (IsarNative.jsObjectGet(jsObj, 'lowStock')) as P;
    case 'productName':
      return (IsarNative.jsObjectGet(jsObj, 'productName') ?? '') as P;
    case 'retailPrice':
      return (IsarNative.jsObjectGet(jsObj, 'retailPrice') ??
          double.negativeInfinity) as P;
    case 'sku':
      return (IsarNative.jsObjectGet(jsObj, 'sku') ?? '') as P;
    case 'taxName':
      return (IsarNative.jsObjectGet(jsObj, 'taxName')) as P;
    case 'taxPercentage':
      return (IsarNative.jsObjectGet(jsObj, 'taxPercentage')) as P;
    case 'unit':
      return (IsarNative.jsObjectGet(jsObj, 'unit') ?? '') as P;
    case 'value':
      return (IsarNative.jsObjectGet(jsObj, 'value') ?? double.negativeInfinity)
          as P;
    case 'variantName':
      return (IsarNative.jsObjectGet(jsObj, 'variantName') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _variantStockAttachLinks(
    IsarCollection<dynamic> col, int id, VariantStock object) {}

extension VariantStockQueryWhereSort
    on QueryBuilder<VariantStock, VariantStock, QWhere> {
  QueryBuilder<VariantStock, VariantStock, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension VariantStockQueryWhere
    on QueryBuilder<VariantStock, VariantStock, QWhereClause> {
  QueryBuilder<VariantStock, VariantStock, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterWhereClause> idNotEqualTo(
      int id) {
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

  QueryBuilder<VariantStock, VariantStock, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<VariantStock, VariantStock, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<VariantStock, VariantStock, QAfterWhereClause> idBetween(
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
}

extension VariantStockQueryFilter
    on QueryBuilder<VariantStock, VariantStock, QFilterCondition> {
  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      canTrackingStockEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'canTrackingStock',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      currentStockGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'currentStock',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      currentStockLessThan(double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'currentStock',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      currentStockBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentStock',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'fbranchId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'fbranchId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'fbranchId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fbranchId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'fbranchId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'fbranchId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'fbranchId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fbranchIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'fbranchId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'fvariantId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'fvariantId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'fvariantId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fvariantId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'fvariantId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'fvariantId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'fvariantId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      fvariantIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'fvariantId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> idBetween(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      lowStockIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'lowStock',
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      lowStockGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'lowStock',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      lowStockLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'lowStock',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      lowStockBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lowStock',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameGreaterThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameLessThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameBetween(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'productName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      productNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'productName',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      retailPriceGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'retailPrice',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      retailPriceLessThan(double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'retailPrice',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      retailPriceBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'retailPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> skuEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      skuGreaterThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> skuLessThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> skuBetween(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> skuStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> skuEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> skuContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> skuMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'sku',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxName',
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameGreaterThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameLessThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameBetween(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'taxName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'taxName',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxPercentageIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'taxPercentage',
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxPercentageGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'taxPercentage',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxPercentageLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'taxPercentage',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      taxPercentageBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taxPercentage',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> unitEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      unitGreaterThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> unitLessThan(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> unitBetween(
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

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> unitContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'unit',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> unitMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'unit',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      valueGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'value',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> valueLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'value',
      value: value,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition> valueBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'value',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'variantName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'variantName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'variantName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'variantName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'variantName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'variantName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'variantName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<VariantStock, VariantStock, QAfterFilterCondition>
      variantNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'variantName',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension VariantStockQueryLinks
    on QueryBuilder<VariantStock, VariantStock, QFilterCondition> {}

extension VariantStockQueryWhereSortBy
    on QueryBuilder<VariantStock, VariantStock, QSortBy> {
  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByCanTrackingStock() {
    return addSortByInternal('canTrackingStock', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByCanTrackingStockDesc() {
    return addSortByInternal('canTrackingStock', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByCurrentStock() {
    return addSortByInternal('currentStock', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByCurrentStockDesc() {
    return addSortByInternal('currentStock', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByFbranchId() {
    return addSortByInternal('fbranchId', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByFbranchIdDesc() {
    return addSortByInternal('fbranchId', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByFvariantId() {
    return addSortByInternal('fvariantId', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByFvariantIdDesc() {
    return addSortByInternal('fvariantId', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByLowStock() {
    return addSortByInternal('lowStock', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByLowStockDesc() {
    return addSortByInternal('lowStock', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByProductName() {
    return addSortByInternal('productName', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByProductNameDesc() {
    return addSortByInternal('productName', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByRetailPrice() {
    return addSortByInternal('retailPrice', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByRetailPriceDesc() {
    return addSortByInternal('retailPrice', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortBySku() {
    return addSortByInternal('sku', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortBySkuDesc() {
    return addSortByInternal('sku', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByTaxName() {
    return addSortByInternal('taxName', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByTaxNameDesc() {
    return addSortByInternal('taxName', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByTaxPercentage() {
    return addSortByInternal('taxPercentage', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByTaxPercentageDesc() {
    return addSortByInternal('taxPercentage', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByUnit() {
    return addSortByInternal('unit', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByUnitDesc() {
    return addSortByInternal('unit', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> sortByVariantName() {
    return addSortByInternal('variantName', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      sortByVariantNameDesc() {
    return addSortByInternal('variantName', Sort.desc);
  }
}

extension VariantStockQueryWhereSortThenBy
    on QueryBuilder<VariantStock, VariantStock, QSortThenBy> {
  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByCanTrackingStock() {
    return addSortByInternal('canTrackingStock', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByCanTrackingStockDesc() {
    return addSortByInternal('canTrackingStock', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByCurrentStock() {
    return addSortByInternal('currentStock', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByCurrentStockDesc() {
    return addSortByInternal('currentStock', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByFbranchId() {
    return addSortByInternal('fbranchId', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByFbranchIdDesc() {
    return addSortByInternal('fbranchId', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByFvariantId() {
    return addSortByInternal('fvariantId', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByFvariantIdDesc() {
    return addSortByInternal('fvariantId', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByLowStock() {
    return addSortByInternal('lowStock', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByLowStockDesc() {
    return addSortByInternal('lowStock', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByProductName() {
    return addSortByInternal('productName', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByProductNameDesc() {
    return addSortByInternal('productName', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByRetailPrice() {
    return addSortByInternal('retailPrice', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByRetailPriceDesc() {
    return addSortByInternal('retailPrice', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenBySku() {
    return addSortByInternal('sku', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenBySkuDesc() {
    return addSortByInternal('sku', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByTaxName() {
    return addSortByInternal('taxName', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByTaxNameDesc() {
    return addSortByInternal('taxName', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByTaxPercentage() {
    return addSortByInternal('taxPercentage', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByTaxPercentageDesc() {
    return addSortByInternal('taxPercentage', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByUnit() {
    return addSortByInternal('unit', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByUnitDesc() {
    return addSortByInternal('unit', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy> thenByVariantName() {
    return addSortByInternal('variantName', Sort.asc);
  }

  QueryBuilder<VariantStock, VariantStock, QAfterSortBy>
      thenByVariantNameDesc() {
    return addSortByInternal('variantName', Sort.desc);
  }
}

extension VariantStockQueryWhereDistinct
    on QueryBuilder<VariantStock, VariantStock, QDistinct> {
  QueryBuilder<VariantStock, VariantStock, QDistinct>
      distinctByCanTrackingStock() {
    return addDistinctByInternal('canTrackingStock');
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByCurrentStock() {
    return addDistinctByInternal('currentStock');
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByFbranchId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('fbranchId', caseSensitive: caseSensitive);
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByFvariantId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('fvariantId', caseSensitive: caseSensitive);
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByLowStock() {
    return addDistinctByInternal('lowStock');
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByProductName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('productName', caseSensitive: caseSensitive);
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByRetailPrice() {
    return addDistinctByInternal('retailPrice');
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctBySku(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('sku', caseSensitive: caseSensitive);
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByTaxName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('taxName', caseSensitive: caseSensitive);
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct>
      distinctByTaxPercentage() {
    return addDistinctByInternal('taxPercentage');
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByUnit(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('unit', caseSensitive: caseSensitive);
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByValue() {
    return addDistinctByInternal('value');
  }

  QueryBuilder<VariantStock, VariantStock, QDistinct> distinctByVariantName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('variantName', caseSensitive: caseSensitive);
  }
}

extension VariantStockQueryProperty
    on QueryBuilder<VariantStock, VariantStock, QQueryProperty> {
  QueryBuilder<VariantStock, bool, QQueryOperations>
      canTrackingStockProperty() {
    return addPropertyNameInternal('canTrackingStock');
  }

  QueryBuilder<VariantStock, double, QQueryOperations> currentStockProperty() {
    return addPropertyNameInternal('currentStock');
  }

  QueryBuilder<VariantStock, String, QQueryOperations> fbranchIdProperty() {
    return addPropertyNameInternal('fbranchId');
  }

  QueryBuilder<VariantStock, String, QQueryOperations> fvariantIdProperty() {
    return addPropertyNameInternal('fvariantId');
  }

  QueryBuilder<VariantStock, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<VariantStock, double?, QQueryOperations> lowStockProperty() {
    return addPropertyNameInternal('lowStock');
  }

  QueryBuilder<VariantStock, String, QQueryOperations> productNameProperty() {
    return addPropertyNameInternal('productName');
  }

  QueryBuilder<VariantStock, double, QQueryOperations> retailPriceProperty() {
    return addPropertyNameInternal('retailPrice');
  }

  QueryBuilder<VariantStock, String, QQueryOperations> skuProperty() {
    return addPropertyNameInternal('sku');
  }

  QueryBuilder<VariantStock, String?, QQueryOperations> taxNameProperty() {
    return addPropertyNameInternal('taxName');
  }

  QueryBuilder<VariantStock, double?, QQueryOperations>
      taxPercentageProperty() {
    return addPropertyNameInternal('taxPercentage');
  }

  QueryBuilder<VariantStock, String, QQueryOperations> unitProperty() {
    return addPropertyNameInternal('unit');
  }

  QueryBuilder<VariantStock, double, QQueryOperations> valueProperty() {
    return addPropertyNameInternal('value');
  }

  QueryBuilder<VariantStock, String, QQueryOperations> variantNameProperty() {
    return addPropertyNameInternal('variantName');
  }
}
