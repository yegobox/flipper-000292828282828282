// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names,
// constant_identifier_names, invalid_use_of_protected_member,
// unnecessary_cast, unused_local_variable,
// no_leading_underscores_for_local_identifiers,
// inference_failure_on_function_invocation, prefer_const_constructors

extension GetPinCollection on Isar {
  IsarCollection<Pin> get pins => getCollection();
}

const PinSchema = CollectionSchema(
  name: 'Pin',
  schema:
      '{"name":"Pin","idName":"id","properties":[{"name":"branchId","type":"Long"},{"name":"businessId","type":"Long"},{"name":"phoneNumber","type":"String"},{"name":"pin","type":"Long"},{"name":"userId","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'branchId': 0,
    'businessId': 1,
    'phoneNumber': 2,
    'pin': 3,
    'userId': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _pinGetId,
  setId: _pinSetId,
  getLinks: _pinGetLinks,
  attachLinks: _pinAttachLinks,
  serializeNative: _pinSerializeNative,
  deserializeNative: _pinDeserializeNative,
  deserializePropNative: _pinDeserializePropNative,
  serializeWeb: _pinSerializeWeb,
  deserializeWeb: _pinDeserializeWeb,
  deserializePropWeb: _pinDeserializePropWeb,
  version: 4,
);

int? _pinGetId(Pin object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _pinSetId(Pin object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _pinGetLinks(Pin object) {
  return [];
}

void _pinSerializeNative(IsarCollection<Pin> collection, IsarCObject cObj,
    Pin object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  final phoneNumber$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.phoneNumber);
  final userId$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.userId);
  final size =
      (staticSize + (phoneNumber$Bytes.length) + (userId$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], object.branchId);
  writer.writeLong(offsets[1], object.businessId);
  writer.writeBytes(offsets[2], phoneNumber$Bytes);
  writer.writeLong(offsets[3], object.pin);
  writer.writeBytes(offsets[4], userId$Bytes);
}

Pin _pinDeserializeNative(IsarCollection<Pin> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Pin(
    branchId: reader.readLong(offsets[0]),
    businessId: reader.readLong(offsets[1]),
    phoneNumber: reader.readString(offsets[2]),
    pin: reader.readLong(offsets[3]),
    userId: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _pinDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _pinSerializeWeb(IsarCollection<Pin> collection, Pin object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'branchId', object.branchId);
  IsarNative.jsObjectSet(jsObj, 'businessId', object.businessId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'phoneNumber', object.phoneNumber);
  IsarNative.jsObjectSet(jsObj, 'pin', object.pin);
  IsarNative.jsObjectSet(jsObj, 'userId', object.userId);
  return jsObj;
}

Pin _pinDeserializeWeb(IsarCollection<Pin> collection, Object jsObj) {
  final object = Pin(
    branchId: IsarNative.jsObjectGet(jsObj, 'branchId') ??
        (double.negativeInfinity as int),
    businessId: IsarNative.jsObjectGet(jsObj, 'businessId') ??
        (double.negativeInfinity as int),
    phoneNumber: IsarNative.jsObjectGet(jsObj, 'phoneNumber') ?? '',
    pin: IsarNative.jsObjectGet(jsObj, 'pin') ??
        (double.negativeInfinity as int),
    userId: IsarNative.jsObjectGet(jsObj, 'userId') ?? '',
  );
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
  return object;
}

P _pinDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'branchId':
      return (IsarNative.jsObjectGet(jsObj, 'branchId') ??
          (double.negativeInfinity as int)) as P;
    case 'businessId':
      return (IsarNative.jsObjectGet(jsObj, 'businessId') ??
          (double.negativeInfinity as int)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'phoneNumber':
      return (IsarNative.jsObjectGet(jsObj, 'phoneNumber') ?? '') as P;
    case 'pin':
      return (IsarNative.jsObjectGet(jsObj, 'pin') ??
          (double.negativeInfinity as int)) as P;
    case 'userId':
      return (IsarNative.jsObjectGet(jsObj, 'userId') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _pinAttachLinks(IsarCollection<dynamic> col, int id, Pin object) {}

extension PinQueryWhereSort on QueryBuilder<Pin, Pin, QWhere> {
  QueryBuilder<Pin, Pin, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PinQueryWhere on QueryBuilder<Pin, Pin, QWhereClause> {
  QueryBuilder<Pin, Pin, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterWhereClause> idNotEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Pin, Pin, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Pin, Pin, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Pin, Pin, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PinQueryFilter on QueryBuilder<Pin, Pin, QFilterCondition> {
  QueryBuilder<Pin, Pin, QAfterFilterCondition> branchIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'branchId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> branchIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'branchId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> branchIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'branchId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> branchIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'branchId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> businessIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> businessIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> businessIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> businessIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'businessId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> phoneNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> pinEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'pin',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> pinGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'pin',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> pinLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'pin',
        value: value,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> pinBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'pin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Pin, Pin, QAfterFilterCondition> userIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension PinQueryLinks on QueryBuilder<Pin, Pin, QFilterCondition> {}

extension PinQueryWhereSortBy on QueryBuilder<Pin, Pin, QSortBy> {
  QueryBuilder<Pin, Pin, QAfterSortBy> sortByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('pin', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('pin', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension PinQueryWhereSortThenBy on QueryBuilder<Pin, Pin, QSortThenBy> {
  QueryBuilder<Pin, Pin, QAfterSortBy> thenByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('pin', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('pin', Sort.desc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Pin, Pin, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension PinQueryWhereDistinct on QueryBuilder<Pin, Pin, QDistinct> {
  QueryBuilder<Pin, Pin, QDistinct> distinctByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('branchId');
    });
  }

  QueryBuilder<Pin, Pin, QDistinct> distinctByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('businessId');
    });
  }

  QueryBuilder<Pin, Pin, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Pin, Pin, QDistinct> distinctByPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('pin');
    });
  }

  QueryBuilder<Pin, Pin, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('userId', caseSensitive: caseSensitive);
    });
  }
}

extension PinQueryProperty on QueryBuilder<Pin, Pin, QQueryProperty> {
  QueryBuilder<Pin, int, QQueryOperations> branchIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('branchId');
    });
  }

  QueryBuilder<Pin, int, QQueryOperations> businessIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('businessId');
    });
  }

  QueryBuilder<Pin, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Pin, String, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('phoneNumber');
    });
  }

  QueryBuilder<Pin, int, QQueryOperations> pinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('pin');
    });
  }

  QueryBuilder<Pin, String, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('userId');
    });
  }
}
