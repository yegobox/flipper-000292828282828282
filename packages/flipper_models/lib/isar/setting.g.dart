// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names,
// constant_identifier_names, invalid_use_of_protected_member,
// unnecessary_cast, unused_local_variable,
// no_leading_underscores_for_local_identifiers,
// inference_failure_on_function_invocation, prefer_const_constructors

extension GetSettingCollection on Isar {
  IsarCollection<Setting> get settings => getCollection();
}

const SettingSchema = CollectionSchema(
  name: 'Setting',
  schema:
      '{"name":"Setting","idName":"id","properties":[{"name":"attendnaceDocCreated","type":"Bool"},{"name":"autoPrint","type":"Bool"},{"name":"defaultLanguage","type":"String"},{"name":"email","type":"String"},{"name":"googleSheetDocCreated","type":"Bool"},{"name":"hasPin","type":"String"},{"name":"isAttendanceEnabled","type":"Bool"},{"name":"openReceiptFileOSaleComplete","type":"Bool"},{"name":"sendDailyReport","type":"Bool"},{"name":"userId","type":"Long"}],"indexes":[{"name":"userId","unique":false,"replace":false,"properties":[{"name":"userId","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'attendnaceDocCreated': 0,
    'autoPrint': 1,
    'defaultLanguage': 2,
    'email': 3,
    'googleSheetDocCreated': 4,
    'hasPin': 5,
    'isAttendanceEnabled': 6,
    'openReceiptFileOSaleComplete': 7,
    'sendDailyReport': 8,
    'userId': 9
  },
  listProperties: {},
  indexIds: {'userId': 0},
  indexValueTypes: {
    'userId': [
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _settingGetId,
  setId: _settingSetId,
  getLinks: _settingGetLinks,
  attachLinks: _settingAttachLinks,
  serializeNative: _settingSerializeNative,
  deserializeNative: _settingDeserializeNative,
  deserializePropNative: _settingDeserializePropNative,
  serializeWeb: _settingSerializeWeb,
  deserializeWeb: _settingDeserializeWeb,
  deserializePropWeb: _settingDeserializePropWeb,
  version: 4,
);

int? _settingGetId(Setting object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _settingSetId(Setting object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _settingGetLinks(Setting object) {
  return [];
}

void _settingSerializeNative(
    IsarCollection<Setting> collection,
    IsarCObject cObj,
    Setting object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  IsarUint8List? defaultLanguage$Bytes;
  final defaultLanguage$Value = object.defaultLanguage;
  if (defaultLanguage$Value != null) {
    defaultLanguage$Bytes =
        IsarBinaryWriter.utf8Encoder.convert(defaultLanguage$Value);
  }
  final email$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.email);
  final hasPin$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.hasPin);
  final size = (staticSize +
      (defaultLanguage$Bytes?.length ?? 0) +
      (email$Bytes.length) +
      (hasPin$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], object.attendnaceDocCreated);
  writer.writeBool(offsets[1], object.autoPrint);
  writer.writeBytes(offsets[2], defaultLanguage$Bytes);
  writer.writeBytes(offsets[3], email$Bytes);
  writer.writeBool(offsets[4], object.googleSheetDocCreated);
  writer.writeBytes(offsets[5], hasPin$Bytes);
  writer.writeBool(offsets[6], object.isAttendanceEnabled);
  writer.writeBool(offsets[7], object.openReceiptFileOSaleComplete);
  writer.writeBool(offsets[8], object.sendDailyReport);
  writer.writeLong(offsets[9], object.userId);
}

Setting _settingDeserializeNative(IsarCollection<Setting> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Setting(
    attendnaceDocCreated: reader.readBoolOrNull(offsets[0]),
    autoPrint: reader.readBoolOrNull(offsets[1]),
    defaultLanguage: reader.readStringOrNull(offsets[2]),
    email: reader.readString(offsets[3]),
    googleSheetDocCreated: reader.readBoolOrNull(offsets[4]),
    hasPin: reader.readString(offsets[5]),
    id: id,
    isAttendanceEnabled: reader.readBoolOrNull(offsets[6]),
    openReceiptFileOSaleComplete: reader.readBoolOrNull(offsets[7]),
    sendDailyReport: reader.readBoolOrNull(offsets[8]),
    userId: reader.readLong(offsets[9]),
  );
  return object;
}

P _settingDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _settingSerializeWeb(
    IsarCollection<Setting> collection, Setting object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'attendnaceDocCreated', object.attendnaceDocCreated);
  IsarNative.jsObjectSet(jsObj, 'autoPrint', object.autoPrint);
  IsarNative.jsObjectSet(jsObj, 'defaultLanguage', object.defaultLanguage);
  IsarNative.jsObjectSet(jsObj, 'email', object.email);
  IsarNative.jsObjectSet(
      jsObj, 'googleSheetDocCreated', object.googleSheetDocCreated);
  IsarNative.jsObjectSet(jsObj, 'hasPin', object.hasPin);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(
      jsObj, 'isAttendanceEnabled', object.isAttendanceEnabled);
  IsarNative.jsObjectSet(jsObj, 'openReceiptFileOSaleComplete',
      object.openReceiptFileOSaleComplete);
  IsarNative.jsObjectSet(jsObj, 'sendDailyReport', object.sendDailyReport);
  IsarNative.jsObjectSet(jsObj, 'userId', object.userId);
  return jsObj;
}

Setting _settingDeserializeWeb(
    IsarCollection<Setting> collection, Object jsObj) {
  final object = Setting(
    attendnaceDocCreated: IsarNative.jsObjectGet(jsObj, 'attendnaceDocCreated'),
    autoPrint: IsarNative.jsObjectGet(jsObj, 'autoPrint'),
    defaultLanguage: IsarNative.jsObjectGet(jsObj, 'defaultLanguage'),
    email: IsarNative.jsObjectGet(jsObj, 'email') ?? '',
    googleSheetDocCreated:
        IsarNative.jsObjectGet(jsObj, 'googleSheetDocCreated'),
    hasPin: IsarNative.jsObjectGet(jsObj, 'hasPin') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
    isAttendanceEnabled: IsarNative.jsObjectGet(jsObj, 'isAttendanceEnabled'),
    openReceiptFileOSaleComplete:
        IsarNative.jsObjectGet(jsObj, 'openReceiptFileOSaleComplete'),
    sendDailyReport: IsarNative.jsObjectGet(jsObj, 'sendDailyReport'),
    userId: IsarNative.jsObjectGet(jsObj, 'userId') ??
        (double.negativeInfinity as int),
  );
  return object;
}

P _settingDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'attendnaceDocCreated':
      return (IsarNative.jsObjectGet(jsObj, 'attendnaceDocCreated')) as P;
    case 'autoPrint':
      return (IsarNative.jsObjectGet(jsObj, 'autoPrint')) as P;
    case 'defaultLanguage':
      return (IsarNative.jsObjectGet(jsObj, 'defaultLanguage')) as P;
    case 'email':
      return (IsarNative.jsObjectGet(jsObj, 'email') ?? '') as P;
    case 'googleSheetDocCreated':
      return (IsarNative.jsObjectGet(jsObj, 'googleSheetDocCreated')) as P;
    case 'hasPin':
      return (IsarNative.jsObjectGet(jsObj, 'hasPin') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'isAttendanceEnabled':
      return (IsarNative.jsObjectGet(jsObj, 'isAttendanceEnabled')) as P;
    case 'openReceiptFileOSaleComplete':
      return (IsarNative.jsObjectGet(jsObj, 'openReceiptFileOSaleComplete'))
          as P;
    case 'sendDailyReport':
      return (IsarNative.jsObjectGet(jsObj, 'sendDailyReport')) as P;
    case 'userId':
      return (IsarNative.jsObjectGet(jsObj, 'userId') ??
          (double.negativeInfinity as int)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _settingAttachLinks(IsarCollection<dynamic> col, int id, Setting object) {}

extension SettingQueryWhereSort on QueryBuilder<Setting, Setting, QWhere> {
  QueryBuilder<Setting, Setting, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhere> anyUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: 'userId'),
      );
    });
  }
}

extension SettingQueryWhere on QueryBuilder<Setting, Setting, QWhereClause> {
  QueryBuilder<Setting, Setting, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Setting, Setting, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> idBetween(
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

  QueryBuilder<Setting, Setting, QAfterWhereClause> userIdEqualTo(int userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: 'userId',
        value: [userId],
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> userIdNotEqualTo(
      int userId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'userId',
              lower: [],
              includeLower: true,
              upper: [userId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'userId',
              lower: [userId],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'userId',
              lower: [userId],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'userId',
              lower: [],
              includeLower: true,
              upper: [userId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> userIdGreaterThan(
    int userId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'userId',
        lower: [userId],
        includeLower: include,
        upper: [],
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> userIdLessThan(
    int userId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'userId',
        lower: [],
        includeLower: true,
        upper: [userId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterWhereClause> userIdBetween(
    int lowerUserId,
    int upperUserId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'userId',
        lower: [lowerUserId],
        includeLower: includeLower,
        upper: [upperUserId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SettingQueryFilter
    on QueryBuilder<Setting, Setting, QFilterCondition> {
  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      attendnaceDocCreatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'attendnaceDocCreated',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      attendnaceDocCreatedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'attendnaceDocCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> autoPrintIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'autoPrint',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> autoPrintEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'autoPrint',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      defaultLanguageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'defaultLanguage',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> defaultLanguageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'defaultLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      defaultLanguageGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'defaultLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> defaultLanguageLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'defaultLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> defaultLanguageBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'defaultLanguage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      defaultLanguageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'defaultLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> defaultLanguageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'defaultLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> defaultLanguageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'defaultLanguage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> defaultLanguageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'defaultLanguage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      googleSheetDocCreatedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'googleSheetDocCreated',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      googleSheetDocCreatedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'googleSheetDocCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'hasPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'hasPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'hasPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'hasPin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'hasPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'hasPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'hasPin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> hasPinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'hasPin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Setting, Setting, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      isAttendanceEnabledIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'isAttendanceEnabled',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      isAttendanceEnabledEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'isAttendanceEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      openReceiptFileOSaleCompleteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'openReceiptFileOSaleComplete',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      openReceiptFileOSaleCompleteEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'openReceiptFileOSaleComplete',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition>
      sendDailyReportIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'sendDailyReport',
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> sendDailyReportEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'sendDailyReport',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> userIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<Setting, Setting, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
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
      ));
    });
  }
}

extension SettingQueryLinks
    on QueryBuilder<Setting, Setting, QFilterCondition> {}

extension SettingQueryWhereSortBy on QueryBuilder<Setting, Setting, QSortBy> {
  QueryBuilder<Setting, Setting, QAfterSortBy> sortByAttendnaceDocCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('attendnaceDocCreated', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      sortByAttendnaceDocCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('attendnaceDocCreated', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByAutoPrint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('autoPrint', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByAutoPrintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('autoPrint', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByDefaultLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('defaultLanguage', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByDefaultLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('defaultLanguage', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('email', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('email', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByGoogleSheetDocCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('googleSheetDocCreated', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      sortByGoogleSheetDocCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('googleSheetDocCreated', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByHasPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('hasPin', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByHasPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('hasPin', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByIsAttendanceEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('isAttendanceEnabled', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByIsAttendanceEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('isAttendanceEnabled', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      sortByOpenReceiptFileOSaleComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openReceiptFileOSaleComplete', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      sortByOpenReceiptFileOSaleCompleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openReceiptFileOSaleComplete', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortBySendDailyReport() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('sendDailyReport', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortBySendDailyReportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('sendDailyReport', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension SettingQueryWhereSortThenBy
    on QueryBuilder<Setting, Setting, QSortThenBy> {
  QueryBuilder<Setting, Setting, QAfterSortBy> thenByAttendnaceDocCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('attendnaceDocCreated', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      thenByAttendnaceDocCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('attendnaceDocCreated', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByAutoPrint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('autoPrint', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByAutoPrintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('autoPrint', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByDefaultLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('defaultLanguage', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByDefaultLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('defaultLanguage', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('email', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('email', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByGoogleSheetDocCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('googleSheetDocCreated', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      thenByGoogleSheetDocCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('googleSheetDocCreated', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByHasPin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('hasPin', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByHasPinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('hasPin', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByIsAttendanceEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('isAttendanceEnabled', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByIsAttendanceEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('isAttendanceEnabled', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      thenByOpenReceiptFileOSaleComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openReceiptFileOSaleComplete', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy>
      thenByOpenReceiptFileOSaleCompleteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openReceiptFileOSaleComplete', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenBySendDailyReport() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('sendDailyReport', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenBySendDailyReportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('sendDailyReport', Sort.desc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Setting, Setting, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension SettingQueryWhereDistinct
    on QueryBuilder<Setting, Setting, QDistinct> {
  QueryBuilder<Setting, Setting, QDistinct> distinctByAttendnaceDocCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('attendnaceDocCreated');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByAutoPrint() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('autoPrint');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByDefaultLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('defaultLanguage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByGoogleSheetDocCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('googleSheetDocCreated');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByHasPin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('hasPin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByIsAttendanceEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('isAttendanceEnabled');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct>
      distinctByOpenReceiptFileOSaleComplete() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('openReceiptFileOSaleComplete');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctBySendDailyReport() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('sendDailyReport');
    });
  }

  QueryBuilder<Setting, Setting, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('userId');
    });
  }
}

extension SettingQueryProperty
    on QueryBuilder<Setting, Setting, QQueryProperty> {
  QueryBuilder<Setting, bool?, QQueryOperations>
      attendnaceDocCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('attendnaceDocCreated');
    });
  }

  QueryBuilder<Setting, bool?, QQueryOperations> autoPrintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('autoPrint');
    });
  }

  QueryBuilder<Setting, String?, QQueryOperations> defaultLanguageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('defaultLanguage');
    });
  }

  QueryBuilder<Setting, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('email');
    });
  }

  QueryBuilder<Setting, bool?, QQueryOperations>
      googleSheetDocCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('googleSheetDocCreated');
    });
  }

  QueryBuilder<Setting, String, QQueryOperations> hasPinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('hasPin');
    });
  }

  QueryBuilder<Setting, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Setting, bool?, QQueryOperations> isAttendanceEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('isAttendanceEnabled');
    });
  }

  QueryBuilder<Setting, bool?, QQueryOperations>
      openReceiptFileOSaleCompleteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('openReceiptFileOSaleComplete');
    });
  }

  QueryBuilder<Setting, bool?, QQueryOperations> sendDailyReportProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('sendDailyReport');
    });
  }

  QueryBuilder<Setting, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('userId');
    });
  }
}
