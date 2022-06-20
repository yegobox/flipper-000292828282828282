// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable, no_leading_underscores_for_local_identifiers, inference_failure_on_function_invocation

extension GetOrderCollection on Isar {
  IsarCollection<Order> get orders => getCollection();
}

const OrderSchema = CollectionSchema(
  name: 'Order',
  schema:
      '{"name":"Order","idName":"id","properties":[{"name":"active","type":"Bool"},{"name":"branchId","type":"Long"},{"name":"cashReceived","type":"Double"},{"name":"createdAt","type":"String"},{"name":"customerChangeDue","type":"Double"},{"name":"customerId","type":"Long"},{"name":"draft","type":"Bool"},{"name":"note","type":"String"},{"name":"orderNumber","type":"String"},{"name":"orderType","type":"String"},{"name":"paymentType","type":"String"},{"name":"receiptType","type":"String"},{"name":"reference","type":"String"},{"name":"reported","type":"Bool"},{"name":"status","type":"String"},{"name":"subTotal","type":"Double"},{"name":"updatedAt","type":"String"}],"indexes":[{"name":"branchId","unique":false,"replace":false,"properties":[{"name":"branchId","type":"Value","caseSensitive":false}]},{"name":"status_branchId","unique":false,"replace":false,"properties":[{"name":"status","type":"Hash","caseSensitive":true},{"name":"branchId","type":"Value","caseSensitive":false}]}],"links":[{"name":"discounts","target":"Discount"},{"name":"orderItems","target":"OrderItem"}]}',
  idName: 'id',
  propertyIds: {
    'active': 0,
    'branchId': 1,
    'cashReceived': 2,
    'createdAt': 3,
    'customerChangeDue': 4,
    'customerId': 5,
    'draft': 6,
    'note': 7,
    'orderNumber': 8,
    'orderType': 9,
    'paymentType': 10,
    'receiptType': 11,
    'reference': 12,
    'reported': 13,
    'status': 14,
    'subTotal': 15,
    'updatedAt': 16
  },
  listProperties: {},
  indexIds: {'branchId': 0, 'status_branchId': 1},
  indexValueTypes: {
    'branchId': [
      IndexValueType.long,
    ],
    'status_branchId': [
      IndexValueType.stringHash,
      IndexValueType.long,
    ]
  },
  linkIds: {'discounts': 0, 'orderItems': 1},
  backlinkLinkNames: {},
  getId: _orderGetId,
  setId: _orderSetId,
  getLinks: _orderGetLinks,
  attachLinks: _orderAttachLinks,
  serializeNative: _orderSerializeNative,
  deserializeNative: _orderDeserializeNative,
  deserializePropNative: _orderDeserializePropNative,
  serializeWeb: _orderSerializeWeb,
  deserializeWeb: _orderDeserializeWeb,
  deserializePropWeb: _orderDeserializePropWeb,
  version: 4,
);

int? _orderGetId(Order object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _orderSetId(Order object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _orderGetLinks(Order object) {
  return [object.discounts, object.orderItems];
}

void _orderSerializeNative(IsarCollection<Order> collection, IsarCObject cObj,
    Order object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  final createdAt$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.createdAt);
  IsarUint8List? note$Bytes;
  final note$Value = object.note;
  if (note$Value != null) {
    note$Bytes = IsarBinaryWriter.utf8Encoder.convert(note$Value);
  }
  final orderNumber$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.orderNumber);
  final orderType$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.orderType);
  final paymentType$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.paymentType);
  IsarUint8List? receiptType$Bytes;
  final receiptType$Value = object.receiptType;
  if (receiptType$Value != null) {
    receiptType$Bytes = IsarBinaryWriter.utf8Encoder.convert(receiptType$Value);
  }
  final reference$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.reference);
  final status$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.status);
  IsarUint8List? updatedAt$Bytes;
  final updatedAt$Value = object.updatedAt;
  if (updatedAt$Value != null) {
    updatedAt$Bytes = IsarBinaryWriter.utf8Encoder.convert(updatedAt$Value);
  }
  final size = staticSize +
      (createdAt$Bytes.length) +
      (note$Bytes?.length ?? 0) +
      (orderNumber$Bytes.length) +
      (orderType$Bytes.length) +
      (paymentType$Bytes.length) +
      (receiptType$Bytes?.length ?? 0) +
      (reference$Bytes.length) +
      (status$Bytes.length) +
      (updatedAt$Bytes?.length ?? 0);
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], object.active);
  writer.writeLong(offsets[1], object.branchId);
  writer.writeDouble(offsets[2], object.cashReceived);
  writer.writeBytes(offsets[3], createdAt$Bytes);
  writer.writeDouble(offsets[4], object.customerChangeDue);
  writer.writeLong(offsets[5], object.customerId);
  writer.writeBool(offsets[6], object.draft);
  writer.writeBytes(offsets[7], note$Bytes);
  writer.writeBytes(offsets[8], orderNumber$Bytes);
  writer.writeBytes(offsets[9], orderType$Bytes);
  writer.writeBytes(offsets[10], paymentType$Bytes);
  writer.writeBytes(offsets[11], receiptType$Bytes);
  writer.writeBytes(offsets[12], reference$Bytes);
  writer.writeBool(offsets[13], object.reported);
  writer.writeBytes(offsets[14], status$Bytes);
  writer.writeDouble(offsets[15], object.subTotal);
  writer.writeBytes(offsets[16], updatedAt$Bytes);
}

Order _orderDeserializeNative(IsarCollection<Order> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Order();
  object.active = reader.readBool(offsets[0]);
  object.branchId = reader.readLong(offsets[1]);
  object.cashReceived = reader.readDouble(offsets[2]);
  object.createdAt = reader.readString(offsets[3]);
  object.customerChangeDue = reader.readDouble(offsets[4]);
  object.customerId = reader.readLongOrNull(offsets[5]);
  object.draft = reader.readBool(offsets[6]);
  object.id = id;
  object.note = reader.readStringOrNull(offsets[7]);
  object.orderNumber = reader.readString(offsets[8]);
  object.orderType = reader.readString(offsets[9]);
  object.paymentType = reader.readString(offsets[10]);
  object.receiptType = reader.readStringOrNull(offsets[11]);
  object.reference = reader.readString(offsets[12]);
  object.reported = reader.readBoolOrNull(offsets[13]);
  object.status = reader.readString(offsets[14]);
  object.subTotal = reader.readDouble(offsets[15]);
  object.updatedAt = reader.readStringOrNull(offsets[16]);
  _orderAttachLinks(collection, id, object);
  return object;
}

P _orderDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readBoolOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readDouble(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _orderSerializeWeb(IsarCollection<Order> collection, Order object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'active', object.active);
  IsarNative.jsObjectSet(jsObj, 'branchId', object.branchId);
  IsarNative.jsObjectSet(jsObj, 'cashReceived', object.cashReceived);
  IsarNative.jsObjectSet(jsObj, 'createdAt', object.createdAt);
  IsarNative.jsObjectSet(jsObj, 'customerChangeDue', object.customerChangeDue);
  IsarNative.jsObjectSet(jsObj, 'customerId', object.customerId);
  IsarNative.jsObjectSet(jsObj, 'draft', object.draft);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'note', object.note);
  IsarNative.jsObjectSet(jsObj, 'orderNumber', object.orderNumber);
  IsarNative.jsObjectSet(jsObj, 'orderType', object.orderType);
  IsarNative.jsObjectSet(jsObj, 'paymentType', object.paymentType);
  IsarNative.jsObjectSet(jsObj, 'receiptType', object.receiptType);
  IsarNative.jsObjectSet(jsObj, 'reference', object.reference);
  IsarNative.jsObjectSet(jsObj, 'reported', object.reported);
  IsarNative.jsObjectSet(jsObj, 'status', object.status);
  IsarNative.jsObjectSet(jsObj, 'subTotal', object.subTotal);
  IsarNative.jsObjectSet(jsObj, 'updatedAt', object.updatedAt);
  return jsObj;
}

Order _orderDeserializeWeb(IsarCollection<Order> collection, Object jsObj) {
  final object = Order();
  object.active = IsarNative.jsObjectGet(jsObj, 'active') ?? false;
  object.branchId = IsarNative.jsObjectGet(jsObj, 'branchId') ??
      (double.negativeInfinity as int);
  object.cashReceived =
      IsarNative.jsObjectGet(jsObj, 'cashReceived') ?? double.negativeInfinity;
  object.createdAt = IsarNative.jsObjectGet(jsObj, 'createdAt') ?? '';
  object.customerChangeDue =
      IsarNative.jsObjectGet(jsObj, 'customerChangeDue') ??
          double.negativeInfinity;
  object.customerId = IsarNative.jsObjectGet(jsObj, 'customerId');
  object.draft = IsarNative.jsObjectGet(jsObj, 'draft') ?? false;
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
  object.note = IsarNative.jsObjectGet(jsObj, 'note');
  object.orderNumber = IsarNative.jsObjectGet(jsObj, 'orderNumber') ?? '';
  object.orderType = IsarNative.jsObjectGet(jsObj, 'orderType') ?? '';
  object.paymentType = IsarNative.jsObjectGet(jsObj, 'paymentType') ?? '';
  object.receiptType = IsarNative.jsObjectGet(jsObj, 'receiptType');
  object.reference = IsarNative.jsObjectGet(jsObj, 'reference') ?? '';
  object.reported = IsarNative.jsObjectGet(jsObj, 'reported');
  object.status = IsarNative.jsObjectGet(jsObj, 'status') ?? '';
  object.subTotal =
      IsarNative.jsObjectGet(jsObj, 'subTotal') ?? double.negativeInfinity;
  object.updatedAt = IsarNative.jsObjectGet(jsObj, 'updatedAt');
  _orderAttachLinks(
      collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
      object);
  return object;
}

P _orderDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'active':
      return (IsarNative.jsObjectGet(jsObj, 'active') ?? false) as P;
    case 'branchId':
      return (IsarNative.jsObjectGet(jsObj, 'branchId') ??
          (double.negativeInfinity as int)) as P;
    case 'cashReceived':
      return (IsarNative.jsObjectGet(jsObj, 'cashReceived') ??
          double.negativeInfinity) as P;
    case 'createdAt':
      return (IsarNative.jsObjectGet(jsObj, 'createdAt') ?? '') as P;
    case 'customerChangeDue':
      return (IsarNative.jsObjectGet(jsObj, 'customerChangeDue') ??
          double.negativeInfinity) as P;
    case 'customerId':
      return (IsarNative.jsObjectGet(jsObj, 'customerId')) as P;
    case 'draft':
      return (IsarNative.jsObjectGet(jsObj, 'draft') ?? false) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'note':
      return (IsarNative.jsObjectGet(jsObj, 'note')) as P;
    case 'orderNumber':
      return (IsarNative.jsObjectGet(jsObj, 'orderNumber') ?? '') as P;
    case 'orderType':
      return (IsarNative.jsObjectGet(jsObj, 'orderType') ?? '') as P;
    case 'paymentType':
      return (IsarNative.jsObjectGet(jsObj, 'paymentType') ?? '') as P;
    case 'receiptType':
      return (IsarNative.jsObjectGet(jsObj, 'receiptType')) as P;
    case 'reference':
      return (IsarNative.jsObjectGet(jsObj, 'reference') ?? '') as P;
    case 'reported':
      return (IsarNative.jsObjectGet(jsObj, 'reported')) as P;
    case 'status':
      return (IsarNative.jsObjectGet(jsObj, 'status') ?? '') as P;
    case 'subTotal':
      return (IsarNative.jsObjectGet(jsObj, 'subTotal') ??
          double.negativeInfinity) as P;
    case 'updatedAt':
      return (IsarNative.jsObjectGet(jsObj, 'updatedAt')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _orderAttachLinks(IsarCollection<dynamic> col, int id, Order object) {
  object.discounts.attach(col, col.isar.discounts, 'discounts', id);
  object.orderItems.attach(col, col.isar.orderItems, 'orderItems', id);
}

extension OrderQueryWhereSort on QueryBuilder<Order, Order, QWhere> {
  QueryBuilder<Order, Order, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Order, Order, QAfterWhere> anyBranchId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'branchId'));
  }

  QueryBuilder<Order, Order, QAfterWhere> anyStatusBranchId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'status_branchId'));
  }
}

extension OrderQueryWhere on QueryBuilder<Order, Order, QWhereClause> {
  QueryBuilder<Order, Order, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Order, Order, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Order, Order, QAfterWhereClause> idBetween(
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

  QueryBuilder<Order, Order, QAfterWhereClause> branchIdEqualTo(int branchId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'branchId',
      value: [branchId],
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> branchIdNotEqualTo(
      int branchId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'branchId',
        upper: [branchId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'branchId',
        lower: [branchId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'branchId',
        lower: [branchId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'branchId',
        upper: [branchId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Order, Order, QAfterWhereClause> branchIdGreaterThan(
    int branchId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'branchId',
      lower: [branchId],
      includeLower: include,
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> branchIdLessThan(
    int branchId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'branchId',
      upper: [branchId],
      includeUpper: include,
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> branchIdBetween(
    int lowerBranchId,
    int upperBranchId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'branchId',
      lower: [lowerBranchId],
      includeLower: includeLower,
      upper: [upperBranchId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> statusEqualTo(String status) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'status_branchId',
      value: [status],
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> statusNotEqualTo(
      String status) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'status_branchId',
        upper: [status],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'status_branchId',
        lower: [status],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'status_branchId',
        lower: [status],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'status_branchId',
        upper: [status],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Order, Order, QAfterWhereClause> statusBranchIdEqualTo(
      String status, int branchId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'status_branchId',
      value: [status, branchId],
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> statusBranchIdNotEqualTo(
      String status, int branchId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'status_branchId',
        upper: [status, branchId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'status_branchId',
        lower: [status, branchId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'status_branchId',
        lower: [status, branchId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'status_branchId',
        upper: [status, branchId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Order, Order, QAfterWhereClause>
      statusEqualToBranchIdGreaterThan(
    String status,
    int branchId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'status_branchId',
      lower: [status, branchId],
      includeLower: include,
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> statusEqualToBranchIdLessThan(
    String status,
    int branchId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'status_branchId',
      upper: [status, branchId],
      includeUpper: include,
    ));
  }

  QueryBuilder<Order, Order, QAfterWhereClause> statusEqualToBranchIdBetween(
    String status,
    int lowerBranchId,
    int upperBranchId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'status_branchId',
      lower: [status, lowerBranchId],
      includeLower: includeLower,
      upper: [status, upperBranchId],
      includeUpper: includeUpper,
    ));
  }
}

extension OrderQueryFilter on QueryBuilder<Order, Order, QFilterCondition> {
  QueryBuilder<Order, Order, QAfterFilterCondition> activeEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'active',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> branchIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'branchId',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> branchIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'branchId',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> branchIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'branchId',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> branchIdBetween(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> cashReceivedGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'cashReceived',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> cashReceivedLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'cashReceived',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> cashReceivedBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'cashReceived',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'createdAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> createdAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'createdAt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition>
      customerChangeDueGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'customerChangeDue',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerChangeDueLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'customerChangeDue',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerChangeDueBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'customerChangeDue',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerIdIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'customerId',
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerIdEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'customerId',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'customerId',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'customerId',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> customerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'customerId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> draftEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'draft',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Order, Order, QAfterFilterCondition> noteIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'note',
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'note',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'note',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'note',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'note',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'note',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'note',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'note',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> noteMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'note',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'orderNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'orderNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'orderNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'orderNumber',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'orderNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'orderNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'orderNumber',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'orderNumber',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'orderType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'orderType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'orderType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'orderType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'orderType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'orderType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'orderType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'orderType',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'paymentType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'paymentType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'paymentType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'paymentType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'paymentType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'paymentType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'paymentType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> paymentTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'paymentType',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'receiptType',
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'receiptType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'receiptType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'receiptType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'receiptType',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'receiptType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'receiptType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'receiptType',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> receiptTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'receiptType',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'reference',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'reference',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'reference',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'reference',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'reference',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'reference',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'reference',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> referenceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'reference',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> reportedIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'reported',
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> reportedEqualTo(
      bool? value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'reported',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'status',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'status',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'status',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> subTotalGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: false,
      property: 'subTotal',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> subTotalLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: false,
      property: 'subTotal',
      value: value,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> subTotalBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'subTotal',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'updatedAt',
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'updatedAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> updatedAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'updatedAt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension OrderQueryLinks on QueryBuilder<Order, Order, QFilterCondition> {
  QueryBuilder<Order, Order, QAfterFilterCondition> discounts(
      FilterQuery<Discount> q) {
    return linkInternal(
      isar.discounts,
      q,
      'discounts',
    );
  }

  QueryBuilder<Order, Order, QAfterFilterCondition> orderItems(
      FilterQuery<OrderItem> q) {
    return linkInternal(
      isar.orderItems,
      q,
      'orderItems',
    );
  }
}

extension OrderQueryWhereSortBy on QueryBuilder<Order, Order, QSortBy> {
  QueryBuilder<Order, Order, QAfterSortBy> sortByActive() {
    return addSortByInternal('active', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByActiveDesc() {
    return addSortByInternal('active', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByBranchId() {
    return addSortByInternal('branchId', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByBranchIdDesc() {
    return addSortByInternal('branchId', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCashReceived() {
    return addSortByInternal('cashReceived', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCashReceivedDesc() {
    return addSortByInternal('cashReceived', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCustomerChangeDue() {
    return addSortByInternal('customerChangeDue', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCustomerChangeDueDesc() {
    return addSortByInternal('customerChangeDue', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCustomerId() {
    return addSortByInternal('customerId', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByCustomerIdDesc() {
    return addSortByInternal('customerId', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByDraft() {
    return addSortByInternal('draft', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByDraftDesc() {
    return addSortByInternal('draft', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByNote() {
    return addSortByInternal('note', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByNoteDesc() {
    return addSortByInternal('note', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByOrderNumber() {
    return addSortByInternal('orderNumber', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByOrderNumberDesc() {
    return addSortByInternal('orderNumber', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByOrderType() {
    return addSortByInternal('orderType', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByOrderTypeDesc() {
    return addSortByInternal('orderType', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByPaymentType() {
    return addSortByInternal('paymentType', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByPaymentTypeDesc() {
    return addSortByInternal('paymentType', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByReceiptType() {
    return addSortByInternal('receiptType', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByReceiptTypeDesc() {
    return addSortByInternal('receiptType', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByReference() {
    return addSortByInternal('reference', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByReferenceDesc() {
    return addSortByInternal('reference', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByReported() {
    return addSortByInternal('reported', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByReportedDesc() {
    return addSortByInternal('reported', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortBySubTotal() {
    return addSortByInternal('subTotal', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortBySubTotalDesc() {
    return addSortByInternal('subTotal', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension OrderQueryWhereSortThenBy on QueryBuilder<Order, Order, QSortThenBy> {
  QueryBuilder<Order, Order, QAfterSortBy> thenByActive() {
    return addSortByInternal('active', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByActiveDesc() {
    return addSortByInternal('active', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByBranchId() {
    return addSortByInternal('branchId', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByBranchIdDesc() {
    return addSortByInternal('branchId', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCashReceived() {
    return addSortByInternal('cashReceived', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCashReceivedDesc() {
    return addSortByInternal('cashReceived', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCustomerChangeDue() {
    return addSortByInternal('customerChangeDue', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCustomerChangeDueDesc() {
    return addSortByInternal('customerChangeDue', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCustomerId() {
    return addSortByInternal('customerId', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByCustomerIdDesc() {
    return addSortByInternal('customerId', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByDraft() {
    return addSortByInternal('draft', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByDraftDesc() {
    return addSortByInternal('draft', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByNote() {
    return addSortByInternal('note', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByNoteDesc() {
    return addSortByInternal('note', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByOrderNumber() {
    return addSortByInternal('orderNumber', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByOrderNumberDesc() {
    return addSortByInternal('orderNumber', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByOrderType() {
    return addSortByInternal('orderType', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByOrderTypeDesc() {
    return addSortByInternal('orderType', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByPaymentType() {
    return addSortByInternal('paymentType', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByPaymentTypeDesc() {
    return addSortByInternal('paymentType', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByReceiptType() {
    return addSortByInternal('receiptType', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByReceiptTypeDesc() {
    return addSortByInternal('receiptType', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByReference() {
    return addSortByInternal('reference', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByReferenceDesc() {
    return addSortByInternal('reference', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByReported() {
    return addSortByInternal('reported', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByReportedDesc() {
    return addSortByInternal('reported', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByStatus() {
    return addSortByInternal('status', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByStatusDesc() {
    return addSortByInternal('status', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenBySubTotal() {
    return addSortByInternal('subTotal', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenBySubTotalDesc() {
    return addSortByInternal('subTotal', Sort.desc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Order, Order, QAfterSortBy> thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension OrderQueryWhereDistinct on QueryBuilder<Order, Order, QDistinct> {
  QueryBuilder<Order, Order, QDistinct> distinctByActive() {
    return addDistinctByInternal('active');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByBranchId() {
    return addDistinctByInternal('branchId');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByCashReceived() {
    return addDistinctByInternal('cashReceived');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByCreatedAt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('createdAt', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctByCustomerChangeDue() {
    return addDistinctByInternal('customerChangeDue');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByCustomerId() {
    return addDistinctByInternal('customerId');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByDraft() {
    return addDistinctByInternal('draft');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByNote(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('note', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctByOrderNumber(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('orderNumber', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctByOrderType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('orderType', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctByPaymentType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('paymentType', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctByReceiptType(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('receiptType', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctByReference(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('reference', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctByReported() {
    return addDistinctByInternal('reported');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('status', caseSensitive: caseSensitive);
  }

  QueryBuilder<Order, Order, QDistinct> distinctBySubTotal() {
    return addDistinctByInternal('subTotal');
  }

  QueryBuilder<Order, Order, QDistinct> distinctByUpdatedAt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('updatedAt', caseSensitive: caseSensitive);
  }
}

extension OrderQueryProperty on QueryBuilder<Order, Order, QQueryProperty> {
  QueryBuilder<Order, bool, QQueryOperations> activeProperty() {
    return addPropertyNameInternal('active');
  }

  QueryBuilder<Order, int, QQueryOperations> branchIdProperty() {
    return addPropertyNameInternal('branchId');
  }

  QueryBuilder<Order, double, QQueryOperations> cashReceivedProperty() {
    return addPropertyNameInternal('cashReceived');
  }

  QueryBuilder<Order, String, QQueryOperations> createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<Order, double, QQueryOperations> customerChangeDueProperty() {
    return addPropertyNameInternal('customerChangeDue');
  }

  QueryBuilder<Order, int?, QQueryOperations> customerIdProperty() {
    return addPropertyNameInternal('customerId');
  }

  QueryBuilder<Order, bool, QQueryOperations> draftProperty() {
    return addPropertyNameInternal('draft');
  }

  QueryBuilder<Order, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Order, String?, QQueryOperations> noteProperty() {
    return addPropertyNameInternal('note');
  }

  QueryBuilder<Order, String, QQueryOperations> orderNumberProperty() {
    return addPropertyNameInternal('orderNumber');
  }

  QueryBuilder<Order, String, QQueryOperations> orderTypeProperty() {
    return addPropertyNameInternal('orderType');
  }

  QueryBuilder<Order, String, QQueryOperations> paymentTypeProperty() {
    return addPropertyNameInternal('paymentType');
  }

  QueryBuilder<Order, String?, QQueryOperations> receiptTypeProperty() {
    return addPropertyNameInternal('receiptType');
  }

  QueryBuilder<Order, String, QQueryOperations> referenceProperty() {
    return addPropertyNameInternal('reference');
  }

  QueryBuilder<Order, bool?, QQueryOperations> reportedProperty() {
    return addPropertyNameInternal('reported');
  }

  QueryBuilder<Order, String, QQueryOperations> statusProperty() {
    return addPropertyNameInternal('status');
  }

  QueryBuilder<Order, double, QQueryOperations> subTotalProperty() {
    return addPropertyNameInternal('subTotal');
  }

  QueryBuilder<Order, String?, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }
}
