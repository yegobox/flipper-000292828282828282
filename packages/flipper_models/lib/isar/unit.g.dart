// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names,
// constant_identifier_names, invalid_use_of_protected_member,
// unnecessary_cast, unused_local_variable,
// no_leading_underscores_for_local_identifiers,
// inference_failure_on_function_invocation, prefer_const_constructors

extension GetUnitCollection on Isar {
  IsarCollection<Unit> get units => getCollection();
}

const UnitSchema = CollectionSchema(
  name: 'Unit',
  schema:
      '{"name":"Unit","idName":"id","properties":[{"name":"active","type":"Bool"},{"name":"branchId","type":"Long"},{"name":"name","type":"String"},{"name":"value","type":"String"}],"indexes":[{"name":"branchId","unique":false,"replace":false,"properties":[{"name":"branchId","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {'active': 0, 'branchId': 1, 'name': 2, 'value': 3},
  listProperties: {},
  indexIds: {'branchId': 0},
  indexValueTypes: {
    'branchId': [
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _unitGetId,
  setId: _unitSetId,
  getLinks: _unitGetLinks,
  attachLinks: _unitAttachLinks,
  serializeNative: _unitSerializeNative,
  deserializeNative: _unitDeserializeNative,
  deserializePropNative: _unitDeserializePropNative,
  serializeWeb: _unitSerializeWeb,
  deserializeWeb: _unitDeserializeWeb,
  deserializePropWeb: _unitDeserializePropWeb,
  version: 4,
);

int? _unitGetId(Unit object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _unitSetId(Unit object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _unitGetLinks(Unit object) {
  return [];
}

void _unitSerializeNative(IsarCollection<Unit> collection, IsarCObject cObj,
    Unit object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  final name$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.name);
  final value$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.value);
  final size = (staticSize + (name$Bytes.length) + (value$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], object.active);
  writer.writeLong(offsets[1], object.branchId);
  writer.writeBytes(offsets[2], name$Bytes);
  writer.writeBytes(offsets[3], value$Bytes);
}

Unit _unitDeserializeNative(IsarCollection<Unit> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Unit();
  object.active = reader.readBool(offsets[0]);
  object.branchId = reader.readLong(offsets[1]);
  object.id = id;
  object.name = reader.readString(offsets[2]);
  object.value = reader.readString(offsets[3]);
  return object;
}

P _unitDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _unitSerializeWeb(IsarCollection<Unit> collection, Unit object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'active', object.active);
  IsarNative.jsObjectSet(jsObj, 'branchId', object.branchId);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'value', object.value);
  return jsObj;
}

Unit _unitDeserializeWeb(IsarCollection<Unit> collection, Object jsObj) {
  final object = Unit();
  object.active = IsarNative.jsObjectGet(jsObj, 'active') ?? false;
  object.branchId = IsarNative.jsObjectGet(jsObj, 'branchId') ??
      (double.negativeInfinity as int);
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.value = IsarNative.jsObjectGet(jsObj, 'value') ?? '';
  return object;
}

P _unitDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'active':
      return (IsarNative.jsObjectGet(jsObj, 'active') ?? false) as P;
    case 'branchId':
      return (IsarNative.jsObjectGet(jsObj, 'branchId') ??
          (double.negativeInfinity as int)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'value':
      return (IsarNative.jsObjectGet(jsObj, 'value') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _unitAttachLinks(IsarCollection<dynamic> col, int id, Unit object) {}

extension UnitQueryWhereSort on QueryBuilder<Unit, Unit, QWhere> {
  QueryBuilder<Unit, Unit, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhere> anyBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: 'branchId'),
      );
    });
  }
}

extension UnitQueryWhere on QueryBuilder<Unit, Unit, QWhereClause> {
  QueryBuilder<Unit, Unit, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Unit, Unit, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhereClause> idBetween(
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

  QueryBuilder<Unit, Unit, QAfterWhereClause> branchIdEqualTo(int branchId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: 'branchId',
        value: [branchId],
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhereClause> branchIdNotEqualTo(int branchId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'branchId',
              lower: [],
              includeLower: true,
              upper: [branchId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'branchId',
              lower: [branchId],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'branchId',
              lower: [branchId],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'branchId',
              lower: [],
              includeLower: true,
              upper: [branchId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhereClause> branchIdGreaterThan(
    int branchId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'branchId',
        lower: [branchId],
        includeLower: include,
        upper: [],
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhereClause> branchIdLessThan(
    int branchId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'branchId',
        lower: [],
        includeLower: true,
        upper: [branchId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterWhereClause> branchIdBetween(
    int lowerBranchId,
    int upperBranchId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'branchId',
        lower: [lowerBranchId],
        includeLower: includeLower,
        upper: [upperBranchId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UnitQueryFilter on QueryBuilder<Unit, Unit, QFilterCondition> {
  QueryBuilder<Unit, Unit, QAfterFilterCondition> activeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'active',
        value: value,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> branchIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'branchId',
        value: value,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> branchIdGreaterThan(
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

  QueryBuilder<Unit, Unit, QAfterFilterCondition> branchIdLessThan(
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

  QueryBuilder<Unit, Unit, QAfterFilterCondition> branchIdBetween(
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

  QueryBuilder<Unit, Unit, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Unit, Unit, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Unit, Unit, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Unit, Unit, QAfterFilterCondition> valueMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension UnitQueryLinks on QueryBuilder<Unit, Unit, QFilterCondition> {}

extension UnitQueryWhereSortBy on QueryBuilder<Unit, Unit, QSortBy> {
  QueryBuilder<Unit, Unit, QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.desc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> sortByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> sortByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.desc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.desc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('value', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('value', Sort.desc);
    });
  }
}

extension UnitQueryWhereSortThenBy on QueryBuilder<Unit, Unit, QSortThenBy> {
  QueryBuilder<Unit, Unit, QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.desc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.desc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.desc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('value', Sort.asc);
    });
  }

  QueryBuilder<Unit, Unit, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('value', Sort.desc);
    });
  }
}

extension UnitQueryWhereDistinct on QueryBuilder<Unit, Unit, QDistinct> {
  QueryBuilder<Unit, Unit, QDistinct> distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('active');
    });
  }

  QueryBuilder<Unit, Unit, QDistinct> distinctByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('branchId');
    });
  }

  QueryBuilder<Unit, Unit, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Unit, Unit, QDistinct> distinctByValue(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('value', caseSensitive: caseSensitive);
    });
  }
}

extension UnitQueryProperty on QueryBuilder<Unit, Unit, QQueryProperty> {
  QueryBuilder<Unit, bool, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('active');
    });
  }

  QueryBuilder<Unit, int, QQueryOperations> branchIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('branchId');
    });
  }

  QueryBuilder<Unit, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Unit, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('name');
    });
  }

  QueryBuilder<Unit, String, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('value');
    });
  }
}
