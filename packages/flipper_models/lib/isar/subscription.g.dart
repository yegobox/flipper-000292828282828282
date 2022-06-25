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

extension GetSubscriptionCollection on Isar {
  IsarCollection<Subscription> get subscriptions => getCollection();
}

const SubscriptionSchema = CollectionSchema(
  name: 'Subscription',
  schema:
      '{"name":"Subscription","idName":"id","properties":[{"name":"descriptor","type":"String"},{"name":"interval","type":"Long"},{"name":"lastBillingDate","type":"String"},{"name":"nextBillingDate","type":"String"},{"name":"recurring","type":"Double"},{"name":"userId","type":"Long"}],"indexes":[{"name":"userId","unique":false,"replace":false,"properties":[{"name":"userId","type":"Value","caseSensitive":false}]}],"links":[{"name":"features","target":"Feature"}]}',
  idName: 'id',
  propertyIds: {
    'descriptor': 0,
    'interval': 1,
    'lastBillingDate': 2,
    'nextBillingDate': 3,
    'recurring': 4,
    'userId': 5
  },
  listProperties: {},
  indexIds: {'userId': 0},
  indexValueTypes: {
    'userId': [
      IndexValueType.long,
    ]
  },
  linkIds: {'features': 0},
  backlinkLinkNames: {},
  getId: _subscriptionGetId,
  setId: _subscriptionSetId,
  getLinks: _subscriptionGetLinks,
  attachLinks: _subscriptionAttachLinks,
  serializeNative: _subscriptionSerializeNative,
  deserializeNative: _subscriptionDeserializeNative,
  deserializePropNative: _subscriptionDeserializePropNative,
  serializeWeb: _subscriptionSerializeWeb,
  deserializeWeb: _subscriptionDeserializeWeb,
  deserializePropWeb: _subscriptionDeserializePropWeb,
  version: 4,
);

int? _subscriptionGetId(Subscription object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _subscriptionSetId(Subscription object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _subscriptionGetLinks(Subscription object) {
  return [object.features];
}

void _subscriptionSerializeNative(
    IsarCollection<Subscription> collection,
    IsarCObject cObj,
    Subscription object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  final descriptor$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.descriptor);
  final lastBillingDate$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.lastBillingDate);
  final nextBillingDate$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.nextBillingDate);
  final size = (staticSize +
      (descriptor$Bytes.length) +
      (lastBillingDate$Bytes.length) +
      (nextBillingDate$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], descriptor$Bytes);
  writer.writeLong(offsets[1], object.interval);
  writer.writeBytes(offsets[2], lastBillingDate$Bytes);
  writer.writeBytes(offsets[3], nextBillingDate$Bytes);
  writer.writeDouble(offsets[4], object.recurring);
  writer.writeLong(offsets[5], object.userId);
}

Subscription _subscriptionDeserializeNative(
    IsarCollection<Subscription> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = Subscription(
    descriptor: reader.readString(offsets[0]),
    id: id,
    interval: reader.readLong(offsets[1]),
    lastBillingDate: reader.readString(offsets[2]),
    nextBillingDate: reader.readString(offsets[3]),
    recurring: reader.readDouble(offsets[4]),
    userId: reader.readLong(offsets[5]),
  );
  _subscriptionAttachLinks(collection, id, object);
  return object;
}

P _subscriptionDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _subscriptionSerializeWeb(
    IsarCollection<Subscription> collection, Subscription object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'descriptor', object.descriptor);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'interval', object.interval);
  IsarNative.jsObjectSet(jsObj, 'lastBillingDate', object.lastBillingDate);
  IsarNative.jsObjectSet(jsObj, 'nextBillingDate', object.nextBillingDate);
  IsarNative.jsObjectSet(jsObj, 'recurring', object.recurring);
  IsarNative.jsObjectSet(jsObj, 'userId', object.userId);
  return jsObj;
}

Subscription _subscriptionDeserializeWeb(
    IsarCollection<Subscription> collection, Object jsObj) {
  final object = Subscription(
    descriptor: IsarNative.jsObjectGet(jsObj, 'descriptor') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
    interval: IsarNative.jsObjectGet(jsObj, 'interval') ??
        (double.negativeInfinity as int),
    lastBillingDate: IsarNative.jsObjectGet(jsObj, 'lastBillingDate') ?? '',
    nextBillingDate: IsarNative.jsObjectGet(jsObj, 'nextBillingDate') ?? '',
    recurring:
        IsarNative.jsObjectGet(jsObj, 'recurring') ?? double.negativeInfinity,
    userId: IsarNative.jsObjectGet(jsObj, 'userId') ??
        (double.negativeInfinity as int),
  );
  _subscriptionAttachLinks(
      collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
      object);
  return object;
}

P _subscriptionDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'descriptor':
      return (IsarNative.jsObjectGet(jsObj, 'descriptor') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'interval':
      return (IsarNative.jsObjectGet(jsObj, 'interval') ??
          (double.negativeInfinity as int)) as P;
    case 'lastBillingDate':
      return (IsarNative.jsObjectGet(jsObj, 'lastBillingDate') ?? '') as P;
    case 'nextBillingDate':
      return (IsarNative.jsObjectGet(jsObj, 'nextBillingDate') ?? '') as P;
    case 'recurring':
      return (IsarNative.jsObjectGet(jsObj, 'recurring') ??
          double.negativeInfinity) as P;
    case 'userId':
      return (IsarNative.jsObjectGet(jsObj, 'userId') ??
          (double.negativeInfinity as int)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _subscriptionAttachLinks(
    IsarCollection<dynamic> col, int id, Subscription object) {
  object.features.attach(col, col.isar.features, 'features', id);
}

extension SubscriptionQueryWhereSort
    on QueryBuilder<Subscription, Subscription, QWhere> {
  QueryBuilder<Subscription, Subscription, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterWhere> anyUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: 'userId'),
      );
    });
  }
}

extension SubscriptionQueryWhere
    on QueryBuilder<Subscription, Subscription, QWhereClause> {
  QueryBuilder<Subscription, Subscription, QAfterWhereClause> idEqualTo(
      int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> idNotEqualTo(
      int id) {
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

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> idBetween(
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

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> userIdEqualTo(
      int userId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: 'userId',
        value: [userId],
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> userIdNotEqualTo(
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

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> userIdGreaterThan(
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

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> userIdLessThan(
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

  QueryBuilder<Subscription, Subscription, QAfterWhereClause> userIdBetween(
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

extension SubscriptionQueryFilter
    on QueryBuilder<Subscription, Subscription, QFilterCondition> {
  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'descriptor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'descriptor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'descriptor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'descriptor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'descriptor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'descriptor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'descriptor',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      descriptorMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'descriptor',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      intervalEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'interval',
        value: value,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      intervalGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'interval',
        value: value,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      intervalLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'interval',
        value: value,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      intervalBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'interval',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'lastBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'lastBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'lastBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'lastBillingDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'lastBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'lastBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'lastBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      lastBillingDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'lastBillingDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'nextBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'nextBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'nextBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'nextBillingDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'nextBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'nextBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'nextBillingDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      nextBillingDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'nextBillingDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      recurringGreaterThan(double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: false,
        property: 'recurring',
        value: value,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      recurringLessThan(double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: false,
        property: 'recurring',
        value: value,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      recurringBetween(double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'recurring',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition> userIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      userIdGreaterThan(
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

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition>
      userIdLessThan(
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

  QueryBuilder<Subscription, Subscription, QAfterFilterCondition> userIdBetween(
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

extension SubscriptionQueryLinks
    on QueryBuilder<Subscription, Subscription, QFilterCondition> {
  QueryBuilder<Subscription, Subscription, QAfterFilterCondition> features(
      FilterQuery<Feature> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(
        query.collection.isar.features,
        q,
        'features',
      );
    });
  }
}

extension SubscriptionQueryWhereSortBy
    on QueryBuilder<Subscription, Subscription, QSortBy> {
  QueryBuilder<Subscription, Subscription, QAfterSortBy> sortByDescriptor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('descriptor', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      sortByDescriptorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('descriptor', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> sortByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> sortByIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      sortByLastBillingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastBillingDate', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      sortByLastBillingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastBillingDate', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      sortByNextBillingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nextBillingDate', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      sortByNextBillingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nextBillingDate', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> sortByRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('recurring', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> sortByRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('recurring', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension SubscriptionQueryWhereSortThenBy
    on QueryBuilder<Subscription, Subscription, QSortThenBy> {
  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByDescriptor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('descriptor', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      thenByDescriptorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('descriptor', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      thenByLastBillingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastBillingDate', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      thenByLastBillingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastBillingDate', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      thenByNextBillingDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nextBillingDate', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy>
      thenByNextBillingDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nextBillingDate', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('recurring', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByRecurringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('recurring', Sort.desc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Subscription, Subscription, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension SubscriptionQueryWhereDistinct
    on QueryBuilder<Subscription, Subscription, QDistinct> {
  QueryBuilder<Subscription, Subscription, QDistinct> distinctByDescriptor(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('descriptor', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subscription, Subscription, QDistinct> distinctByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('interval');
    });
  }

  QueryBuilder<Subscription, Subscription, QDistinct> distinctByLastBillingDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('lastBillingDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subscription, Subscription, QDistinct> distinctByNextBillingDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('nextBillingDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Subscription, Subscription, QDistinct> distinctByRecurring() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('recurring');
    });
  }

  QueryBuilder<Subscription, Subscription, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('userId');
    });
  }
}

extension SubscriptionQueryProperty
    on QueryBuilder<Subscription, Subscription, QQueryProperty> {
  QueryBuilder<Subscription, String, QQueryOperations> descriptorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('descriptor');
    });
  }

  QueryBuilder<Subscription, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Subscription, int, QQueryOperations> intervalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('interval');
    });
  }

  QueryBuilder<Subscription, String, QQueryOperations>
      lastBillingDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('lastBillingDate');
    });
  }

  QueryBuilder<Subscription, String, QQueryOperations>
      nextBillingDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('nextBillingDate');
    });
  }

  QueryBuilder<Subscription, double, QQueryOperations> recurringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('recurring');
    });
  }

  QueryBuilder<Subscription, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('userId');
    });
  }
}
