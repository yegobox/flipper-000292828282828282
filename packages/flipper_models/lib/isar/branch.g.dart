// GENERATED CODE - DO NOT MODIFY BY HAND

part of flipper_models;

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names,
// constant_identifier_names, invalid_use_of_protected_member,
// unnecessary_cast, unused_local_variable,
// no_leading_underscores_for_local_identifiers,
// inference_failure_on_function_invocation, prefer_const_constructors

extension GetBranchCollection on Isar {
  IsarCollection<Branch> get branchs => getCollection();
}

const BranchSchema = CollectionSchema(
  name: 'Branch',
  schema:
      '{"name":"Branch","idName":"id","properties":[{"name":"active","type":"Bool"},{"name":"businessId","type":"Long"},{"name":"description","type":"String"},{"name":"latitude","type":"String"},{"name":"longitude","type":"String"},{"name":"name","type":"String"},{"name":"table","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'active': 0,
    'businessId': 1,
    'description': 2,
    'latitude': 3,
    'longitude': 4,
    'name': 5,
    'table': 6
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _branchGetId,
  setId: _branchSetId,
  getLinks: _branchGetLinks,
  attachLinks: _branchAttachLinks,
  serializeNative: _branchSerializeNative,
  deserializeNative: _branchDeserializeNative,
  deserializePropNative: _branchDeserializePropNative,
  serializeWeb: _branchSerializeWeb,
  deserializeWeb: _branchDeserializeWeb,
  deserializePropWeb: _branchDeserializePropWeb,
  version: 4,
);

int? _branchGetId(Branch object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _branchSetId(Branch object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _branchGetLinks(Branch object) {
  return [];
}

void _branchSerializeNative(IsarCollection<Branch> collection, IsarCObject cObj,
    Branch object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  IsarUint8List? description$Bytes;
  final description$Value = object.description;
  if (description$Value != null) {
    description$Bytes = IsarBinaryWriter.utf8Encoder.convert(description$Value);
  }
  IsarUint8List? latitude$Bytes;
  final latitude$Value = object.latitude;
  if (latitude$Value != null) {
    latitude$Bytes = IsarBinaryWriter.utf8Encoder.convert(latitude$Value);
  }
  IsarUint8List? longitude$Bytes;
  final longitude$Value = object.longitude;
  if (longitude$Value != null) {
    longitude$Bytes = IsarBinaryWriter.utf8Encoder.convert(longitude$Value);
  }
  IsarUint8List? name$Bytes;
  final name$Value = object.name;
  if (name$Value != null) {
    name$Bytes = IsarBinaryWriter.utf8Encoder.convert(name$Value);
  }
  IsarUint8List? table$Bytes;
  final table$Value = object.table;
  if (table$Value != null) {
    table$Bytes = IsarBinaryWriter.utf8Encoder.convert(table$Value);
  }
  final size = (staticSize +
      (description$Bytes?.length ?? 0) +
      (latitude$Bytes?.length ?? 0) +
      (longitude$Bytes?.length ?? 0) +
      (name$Bytes?.length ?? 0) +
      (table$Bytes?.length ?? 0)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], object.active);
  writer.writeLong(offsets[1], object.businessId);
  writer.writeBytes(offsets[2], description$Bytes);
  writer.writeBytes(offsets[3], latitude$Bytes);
  writer.writeBytes(offsets[4], longitude$Bytes);
  writer.writeBytes(offsets[5], name$Bytes);
  writer.writeBytes(offsets[6], table$Bytes);
}

Branch _branchDeserializeNative(IsarCollection<Branch> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Branch(
    active: reader.readBoolOrNull(offsets[0]),
    businessId: reader.readLongOrNull(offsets[1]),
    description: reader.readStringOrNull(offsets[2]),
    id: id,
    latitude: reader.readStringOrNull(offsets[3]),
    longitude: reader.readStringOrNull(offsets[4]),
    name: reader.readStringOrNull(offsets[5]),
    table: reader.readStringOrNull(offsets[6]),
  );
  return object;
}

P _branchDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _branchSerializeWeb(IsarCollection<Branch> collection, Branch object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'active', object.active);
  IsarNative.jsObjectSet(jsObj, 'businessId', object.businessId);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'latitude', object.latitude);
  IsarNative.jsObjectSet(jsObj, 'longitude', object.longitude);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'table', object.table);
  return jsObj;
}

Branch _branchDeserializeWeb(IsarCollection<Branch> collection, Object jsObj) {
  final object = Branch(
    active: IsarNative.jsObjectGet(jsObj, 'active'),
    businessId: IsarNative.jsObjectGet(jsObj, 'businessId'),
    description: IsarNative.jsObjectGet(jsObj, 'description'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    latitude: IsarNative.jsObjectGet(jsObj, 'latitude'),
    longitude: IsarNative.jsObjectGet(jsObj, 'longitude'),
    name: IsarNative.jsObjectGet(jsObj, 'name'),
    table: IsarNative.jsObjectGet(jsObj, 'table'),
  );
  return object;
}

P _branchDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'active':
      return (IsarNative.jsObjectGet(jsObj, 'active')) as P;
    case 'businessId':
      return (IsarNative.jsObjectGet(jsObj, 'businessId')) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'latitude':
      return (IsarNative.jsObjectGet(jsObj, 'latitude')) as P;
    case 'longitude':
      return (IsarNative.jsObjectGet(jsObj, 'longitude')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name')) as P;
    case 'table':
      return (IsarNative.jsObjectGet(jsObj, 'table')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _branchAttachLinks(IsarCollection<dynamic> col, int id, Branch object) {}

extension BranchQueryWhereSort on QueryBuilder<Branch, Branch, QWhere> {
  QueryBuilder<Branch, Branch, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BranchQueryWhere on QueryBuilder<Branch, Branch, QWhereClause> {
  QueryBuilder<Branch, Branch, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Branch, Branch, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Branch, Branch, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Branch, Branch, QAfterWhereClause> idBetween(
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

extension BranchQueryFilter on QueryBuilder<Branch, Branch, QFilterCondition> {
  QueryBuilder<Branch, Branch, QAfterFilterCondition> activeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'active',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> activeEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'active',
        value: value,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> businessIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'businessId',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> businessIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'businessId',
        value: value,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> businessIdGreaterThan(
    int? value, {
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> businessIdLessThan(
    int? value, {
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> businessIdBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'description',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'id',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'latitude',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'latitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> latitudeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'latitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'longitude',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'longitude',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> longitudeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'longitude',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'name',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameEqualTo(
    String? value, {
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameGreaterThan(
    String? value, {
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameLessThan(
    String? value, {
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'table',
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'table',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'table',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'table',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'table',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'table',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'table',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'table',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Branch, Branch, QAfterFilterCondition> tableMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'table',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension BranchQueryLinks on QueryBuilder<Branch, Branch, QFilterCondition> {}

extension BranchQueryWhereSortBy on QueryBuilder<Branch, Branch, QSortBy> {
  QueryBuilder<Branch, Branch, QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('description', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('description', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('latitude', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('latitude', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('longitude', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('longitude', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByTable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> sortByTableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.desc);
    });
  }
}

extension BranchQueryWhereSortThenBy
    on QueryBuilder<Branch, Branch, QSortThenBy> {
  QueryBuilder<Branch, Branch, QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByBusinessIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('businessId', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('description', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('description', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('latitude', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('latitude', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('longitude', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('longitude', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.desc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByTable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.asc);
    });
  }

  QueryBuilder<Branch, Branch, QAfterSortBy> thenByTableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.desc);
    });
  }
}

extension BranchQueryWhereDistinct on QueryBuilder<Branch, Branch, QDistinct> {
  QueryBuilder<Branch, Branch, QDistinct> distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('active');
    });
  }

  QueryBuilder<Branch, Branch, QDistinct> distinctByBusinessId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('businessId');
    });
  }

  QueryBuilder<Branch, Branch, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Branch, Branch, QDistinct> distinctByLatitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('latitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Branch, Branch, QDistinct> distinctByLongitude(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('longitude', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Branch, Branch, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Branch, Branch, QDistinct> distinctByTable(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('table', caseSensitive: caseSensitive);
    });
  }
}

extension BranchQueryProperty on QueryBuilder<Branch, Branch, QQueryProperty> {
  QueryBuilder<Branch, bool?, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('active');
    });
  }

  QueryBuilder<Branch, int?, QQueryOperations> businessIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('businessId');
    });
  }

  QueryBuilder<Branch, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('description');
    });
  }

  QueryBuilder<Branch, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Branch, String?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('latitude');
    });
  }

  QueryBuilder<Branch, String?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('longitude');
    });
  }

  QueryBuilder<Branch, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('name');
    });
  }

  QueryBuilder<Branch, String?, QQueryOperations> tableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('table');
    });
  }
}
