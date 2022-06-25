// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names,
// constant_identifier_names, invalid_use_of_protected_member,
// unnecessary_cast, unused_local_variable,
// no_leading_underscores_for_local_identifiers,
// inference_failure_on_function_invocation, prefer_const_constructors

extension GetPaymentCollection on Isar {
  IsarCollection<Payment> get payments => getCollection();
}

const PaymentSchema = CollectionSchema(
  name: 'Payment',
  schema:
      '{"name":"Payment","idName":"id","properties":[{"name":"amount","type":"Long"},{"name":"createdAt","type":"Long"},{"name":"interval","type":"Long"},{"name":"itemName","type":"String"},{"name":"note","type":"String"},{"name":"paymentType","type":"String"},{"name":"phoneNumber","type":"String"},{"name":"requestGuid","type":"String"},{"name":"userId","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'amount': 0,
    'createdAt': 1,
    'interval': 2,
    'itemName': 3,
    'note': 4,
    'paymentType': 5,
    'phoneNumber': 6,
    'requestGuid': 7,
    'userId': 8
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _paymentGetId,
  setId: _paymentSetId,
  getLinks: _paymentGetLinks,
  attachLinks: _paymentAttachLinks,
  serializeNative: _paymentSerializeNative,
  deserializeNative: _paymentDeserializeNative,
  deserializePropNative: _paymentDeserializePropNative,
  serializeWeb: _paymentSerializeWeb,
  deserializeWeb: _paymentDeserializeWeb,
  deserializePropWeb: _paymentDeserializePropWeb,
  version: 4,
);

int? _paymentGetId(Payment object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _paymentSetId(Payment object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _paymentGetLinks(Payment object) {
  return [];
}

void _paymentSerializeNative(
    IsarCollection<Payment> collection,
    IsarCObject cObj,
    Payment object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  final itemName$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.itemName);
  final note$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.note);
  final paymentType$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.paymentType);
  final phoneNumber$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.phoneNumber);
  final requestGuid$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.requestGuid);
  final size = (staticSize +
      (itemName$Bytes.length) +
      (note$Bytes.length) +
      (paymentType$Bytes.length) +
      (phoneNumber$Bytes.length) +
      (requestGuid$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], object.amount);
  writer.writeLong(offsets[1], object.createdAt);
  writer.writeLong(offsets[2], object.interval);
  writer.writeBytes(offsets[3], itemName$Bytes);
  writer.writeBytes(offsets[4], note$Bytes);
  writer.writeBytes(offsets[5], paymentType$Bytes);
  writer.writeBytes(offsets[6], phoneNumber$Bytes);
  writer.writeBytes(offsets[7], requestGuid$Bytes);
  writer.writeLong(offsets[8], object.userId);
}

Payment _paymentDeserializeNative(IsarCollection<Payment> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Payment(
    amount: reader.readLong(offsets[0]),
    createdAt: reader.readLong(offsets[1]),
    id: id,
    interval: reader.readLong(offsets[2]),
    itemName: reader.readString(offsets[3]),
    note: reader.readString(offsets[4]),
    paymentType: reader.readString(offsets[5]),
    phoneNumber: reader.readString(offsets[6]),
    requestGuid: reader.readString(offsets[7]),
    userId: reader.readLong(offsets[8]),
  );
  return object;
}

P _paymentDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _paymentSerializeWeb(
    IsarCollection<Payment> collection, Payment object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'createdAt', object.createdAt);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'interval', object.interval);
  IsarNative.jsObjectSet(jsObj, 'itemName', object.itemName);
  IsarNative.jsObjectSet(jsObj, 'note', object.note);
  IsarNative.jsObjectSet(jsObj, 'paymentType', object.paymentType);
  IsarNative.jsObjectSet(jsObj, 'phoneNumber', object.phoneNumber);
  IsarNative.jsObjectSet(jsObj, 'requestGuid', object.requestGuid);
  IsarNative.jsObjectSet(jsObj, 'userId', object.userId);
  return jsObj;
}

Payment _paymentDeserializeWeb(
    IsarCollection<Payment> collection, Object jsObj) {
  final object = Payment(
    amount: IsarNative.jsObjectGet(jsObj, 'amount') ??
        (double.negativeInfinity as int),
    createdAt: IsarNative.jsObjectGet(jsObj, 'createdAt') ??
        (double.negativeInfinity as int),
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
    interval: IsarNative.jsObjectGet(jsObj, 'interval') ??
        (double.negativeInfinity as int),
    itemName: IsarNative.jsObjectGet(jsObj, 'itemName') ?? '',
    note: IsarNative.jsObjectGet(jsObj, 'note') ?? '',
    paymentType: IsarNative.jsObjectGet(jsObj, 'paymentType') ?? '',
    phoneNumber: IsarNative.jsObjectGet(jsObj, 'phoneNumber') ?? '',
    requestGuid: IsarNative.jsObjectGet(jsObj, 'requestGuid') ?? '',
    userId: IsarNative.jsObjectGet(jsObj, 'userId') ??
        (double.negativeInfinity as int),
  );
  return object;
}

P _paymentDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount') ??
          (double.negativeInfinity as int)) as P;
    case 'createdAt':
      return (IsarNative.jsObjectGet(jsObj, 'createdAt') ??
          (double.negativeInfinity as int)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'interval':
      return (IsarNative.jsObjectGet(jsObj, 'interval') ??
          (double.negativeInfinity as int)) as P;
    case 'itemName':
      return (IsarNative.jsObjectGet(jsObj, 'itemName') ?? '') as P;
    case 'note':
      return (IsarNative.jsObjectGet(jsObj, 'note') ?? '') as P;
    case 'paymentType':
      return (IsarNative.jsObjectGet(jsObj, 'paymentType') ?? '') as P;
    case 'phoneNumber':
      return (IsarNative.jsObjectGet(jsObj, 'phoneNumber') ?? '') as P;
    case 'requestGuid':
      return (IsarNative.jsObjectGet(jsObj, 'requestGuid') ?? '') as P;
    case 'userId':
      return (IsarNative.jsObjectGet(jsObj, 'userId') ??
          (double.negativeInfinity as int)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _paymentAttachLinks(IsarCollection<dynamic> col, int id, Payment object) {}

extension PaymentQueryWhereSort on QueryBuilder<Payment, Payment, QWhere> {
  QueryBuilder<Payment, Payment, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PaymentQueryWhere on QueryBuilder<Payment, Payment, QWhereClause> {
  QueryBuilder<Payment, Payment, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Payment, Payment, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Payment, Payment, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Payment, Payment, QAfterWhereClause> idBetween(
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

extension PaymentQueryFilter
    on QueryBuilder<Payment, Payment, QFilterCondition> {
  QueryBuilder<Payment, Payment, QAfterFilterCondition> amountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> amountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> amountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> amountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'amount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> createdAtEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> createdAtGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> createdAtLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> createdAtBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> intervalEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'interval',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> intervalGreaterThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> intervalLessThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> intervalBetween(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'itemName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> itemNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'note',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'note',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> noteMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'note',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'paymentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'paymentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'paymentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'paymentType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'paymentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'paymentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'paymentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> paymentTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'paymentType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberEqualTo(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberGreaterThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberLessThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberBetween(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberStartsWith(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberEndsWith(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberContains(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> phoneNumberMatches(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'requestGuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'requestGuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'requestGuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'requestGuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'requestGuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'requestGuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'requestGuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> requestGuidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'requestGuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> userIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<Payment, Payment, QAfterFilterCondition> userIdGreaterThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> userIdLessThan(
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

  QueryBuilder<Payment, Payment, QAfterFilterCondition> userIdBetween(
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

extension PaymentQueryLinks
    on QueryBuilder<Payment, Payment, QFilterCondition> {}

extension PaymentQueryWhereSortBy on QueryBuilder<Payment, Payment, QSortBy> {
  QueryBuilder<Payment, Payment, QAfterSortBy> sortByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('amount', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('amount', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('itemName', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('itemName', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('note', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('note', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByPaymentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentType', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByPaymentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentType', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByRequestGuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('requestGuid', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByRequestGuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('requestGuid', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension PaymentQueryWhereSortThenBy
    on QueryBuilder<Payment, Payment, QSortThenBy> {
  QueryBuilder<Payment, Payment, QAfterSortBy> thenByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('amount', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('amount', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByIntervalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('interval', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByItemName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('itemName', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByItemNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('itemName', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('note', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('note', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByPaymentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentType', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByPaymentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentType', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByRequestGuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('requestGuid', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByRequestGuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('requestGuid', Sort.desc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.asc);
    });
  }

  QueryBuilder<Payment, Payment, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('userId', Sort.desc);
    });
  }
}

extension PaymentQueryWhereDistinct
    on QueryBuilder<Payment, Payment, QDistinct> {
  QueryBuilder<Payment, Payment, QDistinct> distinctByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('amount');
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('createdAt');
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByInterval() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('interval');
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByItemName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('itemName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByNote(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('note', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByPaymentType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('paymentType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByRequestGuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('requestGuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Payment, Payment, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('userId');
    });
  }
}

extension PaymentQueryProperty
    on QueryBuilder<Payment, Payment, QQueryProperty> {
  QueryBuilder<Payment, int, QQueryOperations> amountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('amount');
    });
  }

  QueryBuilder<Payment, int, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('createdAt');
    });
  }

  QueryBuilder<Payment, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Payment, int, QQueryOperations> intervalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('interval');
    });
  }

  QueryBuilder<Payment, String, QQueryOperations> itemNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('itemName');
    });
  }

  QueryBuilder<Payment, String, QQueryOperations> noteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('note');
    });
  }

  QueryBuilder<Payment, String, QQueryOperations> paymentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('paymentType');
    });
  }

  QueryBuilder<Payment, String, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('phoneNumber');
    });
  }

  QueryBuilder<Payment, String, QQueryOperations> requestGuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('requestGuid');
    });
  }

  QueryBuilder<Payment, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('userId');
    });
  }
}
