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

extension GetPColorCollection on Isar {
  IsarCollection<PColor> get pColors => getCollection();
}

const PColorSchema = CollectionSchema(
  name: 'PColor',
  schema:
      '{"name":"PColor","idName":"id","properties":[{"name":"active","type":"Bool"},{"name":"branchId","type":"Long"},{"name":"channels","type":"StringList"},{"name":"colors","type":"StringList"},{"name":"name","type":"String"},{"name":"table","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'active': 0,
    'branchId': 1,
    'channels': 2,
    'colors': 3,
    'name': 4,
    'table': 5
  },
  listProperties: {'channels', 'colors'},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _pColorGetId,
  setId: _pColorSetId,
  getLinks: _pColorGetLinks,
  attachLinks: _pColorAttachLinks,
  serializeNative: _pColorSerializeNative,
  deserializeNative: _pColorDeserializeNative,
  deserializePropNative: _pColorDeserializePropNative,
  serializeWeb: _pColorSerializeWeb,
  deserializeWeb: _pColorDeserializeWeb,
  deserializePropWeb: _pColorDeserializePropWeb,
  version: 4,
);

int? _pColorGetId(PColor object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _pColorSetId(PColor object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _pColorGetLinks(PColor object) {
  return [];
}

void _pColorSerializeNative(IsarCollection<PColor> collection, IsarCObject cObj,
    PColor object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var channels$BytesCount = (object.channels?.length ?? 0) * 8;
  List<IsarUint8List?>? channels$BytesList;
  final channels$Value = object.channels;
  if (channels$Value != null) {
    channels$BytesList = [];
    for (var str in channels$Value) {
      final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
      channels$BytesList.add(bytes);
      channels$BytesCount += bytes.length as int;
    }
  }
  var colors$BytesCount = (object.colors?.length ?? 0) * 8;
  List<IsarUint8List?>? colors$BytesList;
  final colors$Value = object.colors;
  if (colors$Value != null) {
    colors$BytesList = [];
    for (var str in colors$Value) {
      final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
      colors$BytesList.add(bytes);
      colors$BytesCount += bytes.length as int;
    }
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
      channels$BytesCount +
      colors$BytesCount +
      (name$Bytes?.length ?? 0) +
      (table$Bytes?.length ?? 0)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], object.active);
  writer.writeLong(offsets[1], object.branchId);
  writer.writeStringList(offsets[2], channels$BytesList);
  writer.writeStringList(offsets[3], colors$BytesList);
  writer.writeBytes(offsets[4], name$Bytes);
  writer.writeBytes(offsets[5], table$Bytes);
}

PColor _pColorDeserializeNative(IsarCollection<PColor> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = PColor();
  object.active = reader.readBool(offsets[0]);
  object.branchId = reader.readLongOrNull(offsets[1]);
  object.channels = reader.readStringList(offsets[2]);
  object.colors = reader.readStringList(offsets[3]);
  object.id = id;
  object.name = reader.readStringOrNull(offsets[4]);
  object.table = reader.readStringOrNull(offsets[5]);
  return object;
}

P _pColorDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _pColorSerializeWeb(IsarCollection<PColor> collection, PColor object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'active', object.active);
  IsarNative.jsObjectSet(jsObj, 'branchId', object.branchId);
  IsarNative.jsObjectSet(jsObj, 'channels', object.channels);
  IsarNative.jsObjectSet(jsObj, 'colors', object.colors);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'table', object.table);
  return jsObj;
}

PColor _pColorDeserializeWeb(IsarCollection<PColor> collection, Object jsObj) {
  final object = PColor();
  object.active = IsarNative.jsObjectGet(jsObj, 'active') ?? false;
  object.branchId = IsarNative.jsObjectGet(jsObj, 'branchId');
  object.channels = (IsarNative.jsObjectGet(jsObj, 'channels') as List?)
      ?.map((e) => e ?? '')
      .toList()
      .cast<String>();
  object.colors = (IsarNative.jsObjectGet(jsObj, 'colors') as List?)
      ?.map((e) => e ?? '')
      .toList()
      .cast<String>();
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
  object.name = IsarNative.jsObjectGet(jsObj, 'name');
  object.table = IsarNative.jsObjectGet(jsObj, 'table');
  return object;
}

P _pColorDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'active':
      return (IsarNative.jsObjectGet(jsObj, 'active') ?? false) as P;
    case 'branchId':
      return (IsarNative.jsObjectGet(jsObj, 'branchId')) as P;
    case 'channels':
      return ((IsarNative.jsObjectGet(jsObj, 'channels') as List?)
          ?.map((e) => e ?? '')
          .toList()
          .cast<String>()) as P;
    case 'colors':
      return ((IsarNative.jsObjectGet(jsObj, 'colors') as List?)
          ?.map((e) => e ?? '')
          .toList()
          .cast<String>()) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name')) as P;
    case 'table':
      return (IsarNative.jsObjectGet(jsObj, 'table')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _pColorAttachLinks(IsarCollection<dynamic> col, int id, PColor object) {}

extension PColorQueryWhereSort on QueryBuilder<PColor, PColor, QWhere> {
  QueryBuilder<PColor, PColor, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PColorQueryWhere on QueryBuilder<PColor, PColor, QWhereClause> {
  QueryBuilder<PColor, PColor, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<PColor, PColor, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PColor, PColor, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PColor, PColor, QAfterWhereClause> idBetween(
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

extension PColorQueryFilter on QueryBuilder<PColor, PColor, QFilterCondition> {
  QueryBuilder<PColor, PColor, QAfterFilterCondition> activeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'active',
        value: value,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> branchIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'branchId',
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> branchIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'branchId',
        value: value,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> branchIdGreaterThan(
    int? value, {
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> branchIdLessThan(
    int? value, {
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> branchIdBetween(
    int? lower,
    int? upper, {
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'channels',
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.equalTo(
        property: 'channels',
        value: null,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'channels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition>
      channelsElementGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'channels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'channels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'channels',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'channels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'channels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'channels',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> channelsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'channels',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'colors',
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.equalTo(
        property: 'colors',
        value: null,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'colors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'colors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'colors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'colors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'colors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'colors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'colors',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> colorsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'colors',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'name',
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'table',
      ));
    });
  }

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableEqualTo(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableGreaterThan(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableLessThan(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableBetween(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableStartsWith(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableEndsWith(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableContains(
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

  QueryBuilder<PColor, PColor, QAfterFilterCondition> tableMatches(
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

extension PColorQueryLinks on QueryBuilder<PColor, PColor, QFilterCondition> {}

extension PColorQueryWhereSortBy on QueryBuilder<PColor, PColor, QSortBy> {
  QueryBuilder<PColor, PColor, QAfterSortBy> sortByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> sortByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.desc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> sortByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> sortByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.desc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.desc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> sortByTable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> sortByTableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.desc);
    });
  }
}

extension PColorQueryWhereSortThenBy
    on QueryBuilder<PColor, PColor, QSortThenBy> {
  QueryBuilder<PColor, PColor, QAfterSortBy> thenByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('active', Sort.desc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('branchId', Sort.desc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('name', Sort.desc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByTable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.asc);
    });
  }

  QueryBuilder<PColor, PColor, QAfterSortBy> thenByTableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('table', Sort.desc);
    });
  }
}

extension PColorQueryWhereDistinct on QueryBuilder<PColor, PColor, QDistinct> {
  QueryBuilder<PColor, PColor, QDistinct> distinctByActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('active');
    });
  }

  QueryBuilder<PColor, PColor, QDistinct> distinctByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('branchId');
    });
  }

  QueryBuilder<PColor, PColor, QDistinct> distinctByChannels() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('channels');
    });
  }

  QueryBuilder<PColor, PColor, QDistinct> distinctByColors() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('colors');
    });
  }

  QueryBuilder<PColor, PColor, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PColor, PColor, QDistinct> distinctByTable(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('table', caseSensitive: caseSensitive);
    });
  }
}

extension PColorQueryProperty on QueryBuilder<PColor, PColor, QQueryProperty> {
  QueryBuilder<PColor, bool, QQueryOperations> activeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('active');
    });
  }

  QueryBuilder<PColor, int?, QQueryOperations> branchIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('branchId');
    });
  }

  QueryBuilder<PColor, List<String>?, QQueryOperations> channelsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('channels');
    });
  }

  QueryBuilder<PColor, List<String>?, QQueryOperations> colorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('colors');
    });
  }

  QueryBuilder<PColor, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<PColor, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('name');
    });
  }

  QueryBuilder<PColor, String?, QQueryOperations> tableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('table');
    });
  }
}
