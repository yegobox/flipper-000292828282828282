// GENERATED CODE - DO NOT MODIFY BY HAND

part of flipper_models;

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable, no_leading_underscores_for_local_identifiers, inference_failure_on_function_invocation

extension GetStockCollection on Isar {
  IsarCollection<Stock> get stocks => getCollection();
}

const StockSchema = CollectionSchema(
  name: 'Stock',
  schema:
      '{"name":"Stock","idName":"id","properties":[{"name":"active","type":"Bool"},{"name":"canTrackingStock","type":"Bool"},{"name":"channels","type":"StringList"},{"name":"currentStock","type":"Double"},{"name":"fbranchId","type":"Long"},{"name":"fproductId","type":"Long"},{"name":"fvariantId","type":"Long"},{"name":"lowStock","type":"Double"},{"name":"migrated","type":"Bool"},{"name":"retailPrice","type":"Double"},{"name":"showLowStockAlert","type":"Bool"},{"name":"supplyPrice","type":"Double"},{"name":"table","type":"String"},{"name":"value","type":"Double"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'active': 0,
    'canTrackingStock': 1,
    'channels': 2,
    'currentStock': 3,
    'fbranchId': 4,
    'fproductId': 5,
    'fvariantId': 6,
    'lowStock': 7,
    'migrated': 8,
    'retailPrice': 9,
    'showLowStockAlert': 10,
    'supplyPrice': 11,
    'table': 12,
    'value': 13
  },
  listProperties: {'channels'},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _stockGetId,
  setId: _stockSetId,
  getLinks: _stockGetLinks,
  attachLinks: _stockAttachLinks,
  serializeNative: _stockSerializeNative,
  deserializeNative: _stockDeserializeNative,
  deserializePropNative: _stockDeserializePropNative,
  serializeWeb: _stockSerializeWeb,
  deserializeWeb: _stockDeserializeWeb,
  deserializePropWeb: _stockDeserializePropWeb,
  version: 4,
);

int? _stockGetId(Stock object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _stockSetId(Stock object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _stockGetLinks(Stock object) {
  return [];
}

void _stockSerializeNative(IsarCollection<Stock> collection, IsarCObject cObj,
    Stock object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var channels$BytesCount = (object.channels?.length ?? 0) * 8;
  List<IsarUint8List?>? channels$BytesList;
  final channels$Value = object.channels;
  if (channels$Value != null) {
    channels$BytesList = [];
    for (var str in channels$Value) {
      final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
      channels$BytesList.add(bytes);
      channels$BytesCount += bytes.length;
    }
  }
  final table$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.table);
  final size = staticSize + channels$BytesCount + (table$Bytes.length);
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], object.active);
  writer.writeBool(offsets[1], object.canTrackingStock);
  writer.writeStringList(offsets[2], channels$BytesList);
  writer.writeDouble(offsets[3], object.currentStock);
  writer.writeLong(offsets[4], object.fbranchId);
  writer.writeLong(offsets[5], object.fproductId);
  writer.writeLong(offsets[6], object.fvariantId);
  writer.writeDouble(offsets[7], object.lowStock);
  writer.writeBool(offsets[8], object.migrated);
  writer.writeDouble(offsets[9], object.retailPrice);
  writer.writeBool(offsets[10], object.showLowStockAlert);
  writer.writeDouble(offsets[11], object.supplyPrice);
  writer.writeBytes(offsets[12], table$Bytes);
  writer.writeDouble(offsets[13], object.value);
}

Stock _stockDeserializeNative(IsarCollection<Stock> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Stock(
    active: reader.readBoolOrNull(offsets[0]),
    canTrackingStock: reader.readBool(offsets[1]),
    channels: reader.readStringList(offsets[2]),
    currentStock: reader.readDouble(offsets[3]),
    fbranchId: reader.readLongOrNull(offsets[4]),
    fproductId: reader.readLong(offsets[5]),
    fvariantId: reader.readLong(offsets[6]),
    id: id,
    lowStock: reader.readDouble(offsets[7]),
    migrated: reader.readBoolOrNull(offsets[8]),
    retailPrice: reader.readDouble(offsets[9]),
    showLowStockAlert: reader.readBool(offsets[10]),
    supplyPrice: reader.readDouble(offsets[11]),
    table: reader.readString(offsets[12]),
    value: reader.readDouble(offsets[13]),
  );
  return object;
}

P _stockDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _stockSerializeWeb(IsarCollection<Stock> collection, Stock object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'active', object.active);
  IsarNative.jsObjectSet(jsObj, 'canTrackingStock', object.canTrackingStock);
  IsarNative.jsObjectSet(jsObj, 'channels', object.channels);
  IsarNative.jsObjectSet(jsObj, 'currentStock', object.currentStock);
  IsarNative.jsObjectSet(jsObj, 'fbranchId', object.fbranchId);
  IsarNative.jsObjectSet(jsObj, 'fproductId', object.fproductId);
  IsarNative.jsObjectSet(jsObj, 'fvariantId', object.fvariantId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'lowStock', object.lowStock);
  IsarNative.jsObjectSet(jsObj, 'migrated', object.migrated);
  IsarNative.jsObjectSet(jsObj, 'retailPrice', object.retailPrice);
  IsarNative.jsObjectSet(jsObj, 'showLowStockAlert', object.showLowStockAlert);
  IsarNative.jsObjectSet(jsObj, 'supplyPrice', object.supplyPrice);
  IsarNative.jsObjectSet(jsObj, 'table', object.table);
  IsarNative.jsObjectSet(jsObj, 'value', object.value);
  return jsObj;
}

Stock _stockDeserializeWeb(IsarCollection<Stock> collection, Object jsObj) {
  final object = Stock(
    active: IsarNative.jsObjectGet(jsObj, 'active'),
    canTrackingStock:
        IsarNative.jsObjectGet(jsObj, 'canTrackingStock') ?? false,
    channels: (IsarNative.jsObjectGet(jsObj, 'channels') as List?)
        ?.map((e) => e ?? '')
        .toList()
        .cast<String>(),
    currentStock: IsarNative.jsObjectGet(jsObj, 'currentStock') ??
        double.negativeInfinity,
    fbranchId: IsarNative.jsObjectGet(jsObj, 'fbranchId'),
    fproductId: IsarNative.jsObjectGet(jsObj, 'fproductId') ??
        (double.negativeInfinity as int),
    fvariantId: IsarNative.jsObjectGet(jsObj, 'fvariantId') ??
        (double.negativeInfinity as int),
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
    lowStock:
        IsarNative.jsObjectGet(jsObj, 'lowStock') ?? double.negativeInfinity,
    migrated: IsarNative.jsObjectGet(jsObj, 'migrated'),
    retailPrice:
        IsarNative.jsObjectGet(jsObj, 'retailPrice') ?? double.negativeInfinity,
    showLowStockAlert:
        IsarNative.jsObjectGet(jsObj, 'showLowStockAlert') ?? false,
    supplyPrice:
        IsarNative.jsObjectGet(jsObj, 'supplyPrice') ?? double.negativeInfinity,
    table: IsarNative.jsObjectGet(jsObj, 'table') ?? '',
    value: IsarNative.jsObjectGet(jsObj, 'value') ?? double.negativeInfinity,
  );
  return object;
}

P _stockDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'active':
      return (IsarNative.jsObjectGet(jsObj, 'active')) as P;
    case 'canTrackingStock':
      return (IsarNative.jsObjectGet(jsObj, 'canTrackingStock') ?? false) as P;
    case 'channels':
      return ((IsarNative.jsObjectGet(jsObj, 'channels') as List?)
          ?.map((e) => e ?? '')
          .toList()
          .cast<String>()) as P;
    case 'currentStock':
      return (IsarNative.jsObjectGet(jsObj, 'currentStock') ??
          double.negativeInfinity) as P;
    case 'fbranchId':
      return (IsarNative.jsObjectGet(jsObj, 'fbranchId')) as P;
    case 'fproductId':
      return (IsarNative.jsObjectGet(jsObj, 'fproductId') ??
          (double.negativeInfinity as int)) as P;
    case 'fvariantId':
      return (IsarNative.jsObjectGet(jsObj, 'fvariantId') ??
          (double.negativeInfinity as int)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'lowStock':
      return (IsarNative.jsObjectGet(jsObj, 'lowStock') ??
          double.negativeInfinity) as P;
    case 'migrated':
      return (IsarNative.jsObjectGet(jsObj, 'migrated')) as P;
    case 'retailPrice':
      return (IsarNative.jsObjectGet(jsObj, 'retailPrice') ??
          double.negativeInfinity) as P;
    case 'showLowStockAlert':
      return (IsarNative.jsObjectGet(jsObj, 'showLowStockAlert') ?? false) as P;
    case 'supplyPrice':
      return (IsarNative.jsObjectGet(jsObj, 'supplyPrice') ??
          double.negativeInfinity) as P;
    case 'table':
      return (IsarNative.jsObjectGet(jsObj, 'table') ?? '') as P;
    case 'value':
      return (IsarNative.jsObjectGet(jsObj, 'value') ?? double.negativeInfinity)
          as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _stockAttachLinks(IsarCollection<dynamic> col, int id, Stock object) {}

extension StockQueryWhereSort on QueryBuilder<Stock, Stock, QWhere> {
  QueryBuilder<Stock, Stock, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension StockQueryWhere on QueryBuilder<Stock, Stock, QWhereClause> {
  QueryBuilder<Stock, Stock, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Stock, Stock, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Stock, Stock, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Stock, Stock, QAfterWhereClause> idBetween(
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

extension StockQueryFilter on QueryBuilder<Stock, Stock, QFilterCondition> {
  QueryBuilder<Stock, Stock, QAfterFilterCondition> activeIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'active',
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> activeEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'active',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> canTrackingStockEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'canTrackingStock',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'channels',
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyIsNull() {
    return addFilterConditionInternal(const FilterCondition.equalTo(
      property: 'channels',
      value: null,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'channels',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'channels',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'channels',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'channels',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'channels',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'channels',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'channels',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> channelsAnyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'channels',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> currentStockGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'currentStock',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> currentStockLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'currentStock',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> currentStockBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentStock',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fbranchIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'fbranchId',
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fbranchIdEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'fbranchId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fbranchIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'fbranchId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fbranchIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'fbranchId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fbranchIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fbranchId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fproductIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'fproductId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fproductIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'fproductId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fproductIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'fproductId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fproductIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fproductId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fvariantIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'fvariantId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fvariantIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'fvariantId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fvariantIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'fvariantId',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> fvariantIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fvariantId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Stock, Stock, QAfterFilterCondition> lowStockGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'lowStock',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> lowStockLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'lowStock',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> lowStockBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lowStock',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> migratedIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'migrated',
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> migratedEqualTo(
      bool? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'migrated',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> retailPriceGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'retailPrice',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> retailPriceLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'retailPrice',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> retailPriceBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'retailPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> showLowStockAlertEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'showLowStockAlert',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> supplyPriceGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'supplyPrice',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> supplyPriceLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'supplyPrice',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> supplyPriceBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'supplyPrice',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableGreaterThan(
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

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableLessThan(
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

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableBetween(
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

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'table',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> tableMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'table',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> valueGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'value',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> valueLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'value',
      value: value,
    ));
  }

  QueryBuilder<Stock, Stock, QAfterFilterCondition> valueBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'value',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }
}

extension StockQueryLinks on QueryBuilder<Stock, Stock, QFilterCondition> {}

extension StockQueryWhereSortBy on QueryBuilder<Stock, Stock, QSortBy> {
  QueryBuilder<Stock, Stock, QAfterSortBy> sortByActive() {
    return addSortByInternal('active', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByActiveDesc() {
    return addSortByInternal('active', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByCanTrackingStock() {
    return addSortByInternal('canTrackingStock', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByCanTrackingStockDesc() {
    return addSortByInternal('canTrackingStock', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByCurrentStock() {
    return addSortByInternal('currentStock', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByCurrentStockDesc() {
    return addSortByInternal('currentStock', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByFbranchId() {
    return addSortByInternal('fbranchId', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByFbranchIdDesc() {
    return addSortByInternal('fbranchId', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByFproductId() {
    return addSortByInternal('fproductId', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByFproductIdDesc() {
    return addSortByInternal('fproductId', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByFvariantId() {
    return addSortByInternal('fvariantId', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByFvariantIdDesc() {
    return addSortByInternal('fvariantId', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByLowStock() {
    return addSortByInternal('lowStock', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByLowStockDesc() {
    return addSortByInternal('lowStock', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByMigrated() {
    return addSortByInternal('migrated', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByMigratedDesc() {
    return addSortByInternal('migrated', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByRetailPrice() {
    return addSortByInternal('retailPrice', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByRetailPriceDesc() {
    return addSortByInternal('retailPrice', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByShowLowStockAlert() {
    return addSortByInternal('showLowStockAlert', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByShowLowStockAlertDesc() {
    return addSortByInternal('showLowStockAlert', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortBySupplyPrice() {
    return addSortByInternal('supplyPrice', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortBySupplyPriceDesc() {
    return addSortByInternal('supplyPrice', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByTable() {
    return addSortByInternal('table', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByTableDesc() {
    return addSortByInternal('table', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> sortByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }
}

extension StockQueryWhereSortThenBy on QueryBuilder<Stock, Stock, QSortThenBy> {
  QueryBuilder<Stock, Stock, QAfterSortBy> thenByActive() {
    return addSortByInternal('active', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByActiveDesc() {
    return addSortByInternal('active', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByCanTrackingStock() {
    return addSortByInternal('canTrackingStock', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByCanTrackingStockDesc() {
    return addSortByInternal('canTrackingStock', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByCurrentStock() {
    return addSortByInternal('currentStock', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByCurrentStockDesc() {
    return addSortByInternal('currentStock', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByFbranchId() {
    return addSortByInternal('fbranchId', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByFbranchIdDesc() {
    return addSortByInternal('fbranchId', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByFproductId() {
    return addSortByInternal('fproductId', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByFproductIdDesc() {
    return addSortByInternal('fproductId', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByFvariantId() {
    return addSortByInternal('fvariantId', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByFvariantIdDesc() {
    return addSortByInternal('fvariantId', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByLowStock() {
    return addSortByInternal('lowStock', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByLowStockDesc() {
    return addSortByInternal('lowStock', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByMigrated() {
    return addSortByInternal('migrated', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByMigratedDesc() {
    return addSortByInternal('migrated', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByRetailPrice() {
    return addSortByInternal('retailPrice', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByRetailPriceDesc() {
    return addSortByInternal('retailPrice', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByShowLowStockAlert() {
    return addSortByInternal('showLowStockAlert', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByShowLowStockAlertDesc() {
    return addSortByInternal('showLowStockAlert', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenBySupplyPrice() {
    return addSortByInternal('supplyPrice', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenBySupplyPriceDesc() {
    return addSortByInternal('supplyPrice', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByTable() {
    return addSortByInternal('table', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByTableDesc() {
    return addSortByInternal('table', Sort.desc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByValue() {
    return addSortByInternal('value', Sort.asc);
  }

  QueryBuilder<Stock, Stock, QAfterSortBy> thenByValueDesc() {
    return addSortByInternal('value', Sort.desc);
  }
}

extension StockQueryWhereDistinct on QueryBuilder<Stock, Stock, QDistinct> {
  QueryBuilder<Stock, Stock, QDistinct> distinctByActive() {
    return addDistinctByInternal('active');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByCanTrackingStock() {
    return addDistinctByInternal('canTrackingStock');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByCurrentStock() {
    return addDistinctByInternal('currentStock');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByFbranchId() {
    return addDistinctByInternal('fbranchId');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByFproductId() {
    return addDistinctByInternal('fproductId');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByFvariantId() {
    return addDistinctByInternal('fvariantId');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByLowStock() {
    return addDistinctByInternal('lowStock');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByMigrated() {
    return addDistinctByInternal('migrated');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByRetailPrice() {
    return addDistinctByInternal('retailPrice');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByShowLowStockAlert() {
    return addDistinctByInternal('showLowStockAlert');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctBySupplyPrice() {
    return addDistinctByInternal('supplyPrice');
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByTable(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('table', caseSensitive: caseSensitive);
  }

  QueryBuilder<Stock, Stock, QDistinct> distinctByValue() {
    return addDistinctByInternal('value');
  }
}

extension StockQueryProperty on QueryBuilder<Stock, Stock, QQueryProperty> {
  QueryBuilder<Stock, bool?, QQueryOperations> activeProperty() {
    return addPropertyNameInternal('active');
  }

  QueryBuilder<Stock, bool, QQueryOperations> canTrackingStockProperty() {
    return addPropertyNameInternal('canTrackingStock');
  }

  QueryBuilder<Stock, List<String>?, QQueryOperations> channelsProperty() {
    return addPropertyNameInternal('channels');
  }

  QueryBuilder<Stock, double, QQueryOperations> currentStockProperty() {
    return addPropertyNameInternal('currentStock');
  }

  QueryBuilder<Stock, int?, QQueryOperations> fbranchIdProperty() {
    return addPropertyNameInternal('fbranchId');
  }

  QueryBuilder<Stock, int, QQueryOperations> fproductIdProperty() {
    return addPropertyNameInternal('fproductId');
  }

  QueryBuilder<Stock, int, QQueryOperations> fvariantIdProperty() {
    return addPropertyNameInternal('fvariantId');
  }

  QueryBuilder<Stock, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Stock, double, QQueryOperations> lowStockProperty() {
    return addPropertyNameInternal('lowStock');
  }

  QueryBuilder<Stock, bool?, QQueryOperations> migratedProperty() {
    return addPropertyNameInternal('migrated');
  }

  QueryBuilder<Stock, double, QQueryOperations> retailPriceProperty() {
    return addPropertyNameInternal('retailPrice');
  }

  QueryBuilder<Stock, bool, QQueryOperations> showLowStockAlertProperty() {
    return addPropertyNameInternal('showLowStockAlert');
  }

  QueryBuilder<Stock, double, QQueryOperations> supplyPriceProperty() {
    return addPropertyNameInternal('supplyPrice');
  }

  QueryBuilder<Stock, String, QQueryOperations> tableProperty() {
    return addPropertyNameInternal('table');
  }

  QueryBuilder<Stock, double, QQueryOperations> valueProperty() {
    return addPropertyNameInternal('value');
  }
}
