// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names,
// constant_identifier_names, invalid_use_of_protected_member,
// unnecessary_cast, unused_local_variable,
// no_leading_underscores_for_local_identifiers,
// inference_failure_on_function_invocation, prefer_const_constructors

extension GetDrawersCollection on Isar {
  IsarCollection<Drawers> get drawerss => getCollection();
}

const DrawersSchema = CollectionSchema(
  name: 'Drawers',
  schema:
      '{"name":"Drawers","idName":"id","properties":[{"name":"cashierId","type":"Long"},{"name":"closingBalance","type":"Double"},{"name":"closingDateTime","type":"String"},{"name":"csSaleCount","type":"Long"},{"name":"incompleteSale","type":"Long"},{"name":"nrSaleCount","type":"Long"},{"name":"nsSaleCount","type":"Long"},{"name":"open","type":"Bool"},{"name":"openingBalance","type":"Double"},{"name":"openingDateTime","type":"String"},{"name":"otherTransactions","type":"Long"},{"name":"paymentMode","type":"String"},{"name":"psSaleCount","type":"Long"},{"name":"totalCsSaleIncome","type":"Double"},{"name":"totalNsSaleIncome","type":"Double"},{"name":"trSaleCount","type":"Long"},{"name":"tradeName","type":"String"}],"indexes":[{"name":"cashierId","unique":false,"replace":false,"properties":[{"name":"cashierId","type":"Value","caseSensitive":false}]},{"name":"open_cashierId","unique":false,"replace":false,"properties":[{"name":"open","type":"Value","caseSensitive":false},{"name":"cashierId","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'cashierId': 0,
    'closingBalance': 1,
    'closingDateTime': 2,
    'csSaleCount': 3,
    'incompleteSale': 4,
    'nrSaleCount': 5,
    'nsSaleCount': 6,
    'open': 7,
    'openingBalance': 8,
    'openingDateTime': 9,
    'otherTransactions': 10,
    'paymentMode': 11,
    'psSaleCount': 12,
    'totalCsSaleIncome': 13,
    'totalNsSaleIncome': 14,
    'trSaleCount': 15,
    'tradeName': 16
  },
  listProperties: {},
  indexIds: {'cashierId': 0, 'open_cashierId': 1},
  indexValueTypes: {
    'cashierId': [
      IndexValueType.long,
    ],
    'open_cashierId': [
      IndexValueType.bool,
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _drawersGetId,
  setId: _drawersSetId,
  getLinks: _drawersGetLinks,
  attachLinks: _drawersAttachLinks,
  serializeNative: _drawersSerializeNative,
  deserializeNative: _drawersDeserializeNative,
  deserializePropNative: _drawersDeserializePropNative,
  serializeWeb: _drawersSerializeWeb,
  deserializeWeb: _drawersDeserializeWeb,
  deserializePropWeb: _drawersDeserializePropWeb,
  version: 4,
);

int? _drawersGetId(Drawers object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _drawersSetId(Drawers object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _drawersGetLinks(Drawers object) {
  return [];
}

void _drawersSerializeNative(
    IsarCollection<Drawers> collection,
    IsarCObject cObj,
    Drawers object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  IsarUint8List? closingDateTime$Bytes;
  final closingDateTime$Value = object.closingDateTime;
  if (closingDateTime$Value != null) {
    closingDateTime$Bytes =
        IsarBinaryWriter.utf8Encoder.convert(closingDateTime$Value);
  }
  IsarUint8List? openingDateTime$Bytes;
  final openingDateTime$Value = object.openingDateTime;
  if (openingDateTime$Value != null) {
    openingDateTime$Bytes =
        IsarBinaryWriter.utf8Encoder.convert(openingDateTime$Value);
  }
  IsarUint8List? paymentMode$Bytes;
  final paymentMode$Value = object.paymentMode;
  if (paymentMode$Value != null) {
    paymentMode$Bytes = IsarBinaryWriter.utf8Encoder.convert(paymentMode$Value);
  }
  IsarUint8List? tradeName$Bytes;
  final tradeName$Value = object.tradeName;
  if (tradeName$Value != null) {
    tradeName$Bytes = IsarBinaryWriter.utf8Encoder.convert(tradeName$Value);
  }
  final size = (staticSize +
      (closingDateTime$Bytes?.length ?? 0) +
      (openingDateTime$Bytes?.length ?? 0) +
      (paymentMode$Bytes?.length ?? 0) +
      (tradeName$Bytes?.length ?? 0)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], object.cashierId);
  writer.writeDouble(offsets[1], object.closingBalance);
  writer.writeBytes(offsets[2], closingDateTime$Bytes);
  writer.writeLong(offsets[3], object.csSaleCount);
  writer.writeLong(offsets[4], object.incompleteSale);
  writer.writeLong(offsets[5], object.nrSaleCount);
  writer.writeLong(offsets[6], object.nsSaleCount);
  writer.writeBool(offsets[7], object.open);
  writer.writeDouble(offsets[8], object.openingBalance);
  writer.writeBytes(offsets[9], openingDateTime$Bytes);
  writer.writeLong(offsets[10], object.otherTransactions);
  writer.writeBytes(offsets[11], paymentMode$Bytes);
  writer.writeLong(offsets[12], object.psSaleCount);
  writer.writeDouble(offsets[13], object.totalCsSaleIncome);
  writer.writeDouble(offsets[14], object.totalNsSaleIncome);
  writer.writeLong(offsets[15], object.trSaleCount);
  writer.writeBytes(offsets[16], tradeName$Bytes);
}

Drawers _drawersDeserializeNative(IsarCollection<Drawers> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Drawers();
  object.cashierId = reader.readLong(offsets[0]);
  object.closingBalance = reader.readDouble(offsets[1]);
  object.closingDateTime = reader.readStringOrNull(offsets[2]);
  object.csSaleCount = reader.readLongOrNull(offsets[3]);
  object.id = id;
  object.incompleteSale = reader.readLongOrNull(offsets[4]);
  object.nrSaleCount = reader.readLongOrNull(offsets[5]);
  object.nsSaleCount = reader.readLongOrNull(offsets[6]);
  object.open = reader.readBool(offsets[7]);
  object.openingBalance = reader.readDouble(offsets[8]);
  object.openingDateTime = reader.readStringOrNull(offsets[9]);
  object.otherTransactions = reader.readLongOrNull(offsets[10]);
  object.paymentMode = reader.readStringOrNull(offsets[11]);
  object.psSaleCount = reader.readLongOrNull(offsets[12]);
  object.totalCsSaleIncome = reader.readDoubleOrNull(offsets[13]);
  object.totalNsSaleIncome = reader.readDoubleOrNull(offsets[14]);
  object.trSaleCount = reader.readLongOrNull(offsets[15]);
  object.tradeName = reader.readStringOrNull(offsets[16]);
  return object;
}

P _drawersDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _drawersSerializeWeb(
    IsarCollection<Drawers> collection, Drawers object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'cashierId', object.cashierId);
  IsarNative.jsObjectSet(jsObj, 'closingBalance', object.closingBalance);
  IsarNative.jsObjectSet(jsObj, 'closingDateTime', object.closingDateTime);
  IsarNative.jsObjectSet(jsObj, 'csSaleCount', object.csSaleCount);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'incompleteSale', object.incompleteSale);
  IsarNative.jsObjectSet(jsObj, 'nrSaleCount', object.nrSaleCount);
  IsarNative.jsObjectSet(jsObj, 'nsSaleCount', object.nsSaleCount);
  IsarNative.jsObjectSet(jsObj, 'open', object.open);
  IsarNative.jsObjectSet(jsObj, 'openingBalance', object.openingBalance);
  IsarNative.jsObjectSet(jsObj, 'openingDateTime', object.openingDateTime);
  IsarNative.jsObjectSet(jsObj, 'otherTransactions', object.otherTransactions);
  IsarNative.jsObjectSet(jsObj, 'paymentMode', object.paymentMode);
  IsarNative.jsObjectSet(jsObj, 'psSaleCount', object.psSaleCount);
  IsarNative.jsObjectSet(jsObj, 'totalCsSaleIncome', object.totalCsSaleIncome);
  IsarNative.jsObjectSet(jsObj, 'totalNsSaleIncome', object.totalNsSaleIncome);
  IsarNative.jsObjectSet(jsObj, 'trSaleCount', object.trSaleCount);
  IsarNative.jsObjectSet(jsObj, 'tradeName', object.tradeName);
  return jsObj;
}

Drawers _drawersDeserializeWeb(
    IsarCollection<Drawers> collection, Object jsObj) {
  final object = Drawers();
  object.cashierId = IsarNative.jsObjectGet(jsObj, 'cashierId') ??
      (double.negativeInfinity as int);
  object.closingBalance = IsarNative.jsObjectGet(jsObj, 'closingBalance') ??
      double.negativeInfinity;
  object.closingDateTime = IsarNative.jsObjectGet(jsObj, 'closingDateTime');
  object.csSaleCount = IsarNative.jsObjectGet(jsObj, 'csSaleCount');
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
  object.incompleteSale = IsarNative.jsObjectGet(jsObj, 'incompleteSale');
  object.nrSaleCount = IsarNative.jsObjectGet(jsObj, 'nrSaleCount');
  object.nsSaleCount = IsarNative.jsObjectGet(jsObj, 'nsSaleCount');
  object.open = IsarNative.jsObjectGet(jsObj, 'open') ?? false;
  object.openingBalance = IsarNative.jsObjectGet(jsObj, 'openingBalance') ??
      double.negativeInfinity;
  object.openingDateTime = IsarNative.jsObjectGet(jsObj, 'openingDateTime');
  object.otherTransactions = IsarNative.jsObjectGet(jsObj, 'otherTransactions');
  object.paymentMode = IsarNative.jsObjectGet(jsObj, 'paymentMode');
  object.psSaleCount = IsarNative.jsObjectGet(jsObj, 'psSaleCount');
  object.totalCsSaleIncome = IsarNative.jsObjectGet(jsObj, 'totalCsSaleIncome');
  object.totalNsSaleIncome = IsarNative.jsObjectGet(jsObj, 'totalNsSaleIncome');
  object.trSaleCount = IsarNative.jsObjectGet(jsObj, 'trSaleCount');
  object.tradeName = IsarNative.jsObjectGet(jsObj, 'tradeName');
  return object;
}

P _drawersDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'cashierId':
      return (IsarNative.jsObjectGet(jsObj, 'cashierId') ??
          (double.negativeInfinity as int)) as P;
    case 'closingBalance':
      return (IsarNative.jsObjectGet(jsObj, 'closingBalance') ??
          double.negativeInfinity) as P;
    case 'closingDateTime':
      return (IsarNative.jsObjectGet(jsObj, 'closingDateTime')) as P;
    case 'csSaleCount':
      return (IsarNative.jsObjectGet(jsObj, 'csSaleCount')) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'incompleteSale':
      return (IsarNative.jsObjectGet(jsObj, 'incompleteSale')) as P;
    case 'nrSaleCount':
      return (IsarNative.jsObjectGet(jsObj, 'nrSaleCount')) as P;
    case 'nsSaleCount':
      return (IsarNative.jsObjectGet(jsObj, 'nsSaleCount')) as P;
    case 'open':
      return (IsarNative.jsObjectGet(jsObj, 'open') ?? false) as P;
    case 'openingBalance':
      return (IsarNative.jsObjectGet(jsObj, 'openingBalance') ??
          double.negativeInfinity) as P;
    case 'openingDateTime':
      return (IsarNative.jsObjectGet(jsObj, 'openingDateTime')) as P;
    case 'otherTransactions':
      return (IsarNative.jsObjectGet(jsObj, 'otherTransactions')) as P;
    case 'paymentMode':
      return (IsarNative.jsObjectGet(jsObj, 'paymentMode')) as P;
    case 'psSaleCount':
      return (IsarNative.jsObjectGet(jsObj, 'psSaleCount')) as P;
    case 'totalCsSaleIncome':
      return (IsarNative.jsObjectGet(jsObj, 'totalCsSaleIncome')) as P;
    case 'totalNsSaleIncome':
      return (IsarNative.jsObjectGet(jsObj, 'totalNsSaleIncome')) as P;
    case 'trSaleCount':
      return (IsarNative.jsObjectGet(jsObj, 'trSaleCount')) as P;
    case 'tradeName':
      return (IsarNative.jsObjectGet(jsObj, 'tradeName')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _drawersAttachLinks(IsarCollection<dynamic> col, int id, Drawers object) {}

extension DrawersQueryWhereSort on QueryBuilder<Drawers, Drawers, QWhere> {
  QueryBuilder<Drawers, Drawers, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhere> anyCashierId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: 'cashierId'),
      );
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhere> anyOpenCashierId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: 'open_cashierId'),
      );
    });
  }
}

extension DrawersQueryWhere on QueryBuilder<Drawers, Drawers, QWhereClause> {
  QueryBuilder<Drawers, Drawers, QAfterWhereClause> idEqualTo(int id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        includeLower: true,
        upper: id,
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> idBetween(
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

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> cashierIdEqualTo(
      int cashierId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: 'cashierId',
        value: [cashierId],
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> cashierIdNotEqualTo(
      int cashierId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'cashierId',
              lower: [],
              includeLower: true,
              upper: [cashierId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'cashierId',
              lower: [cashierId],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'cashierId',
              lower: [cashierId],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'cashierId',
              lower: [],
              includeLower: true,
              upper: [cashierId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> cashierIdGreaterThan(
    int cashierId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'cashierId',
        lower: [cashierId],
        includeLower: include,
        upper: [],
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> cashierIdLessThan(
    int cashierId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'cashierId',
        lower: [],
        includeLower: true,
        upper: [cashierId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> cashierIdBetween(
    int lowerCashierId,
    int upperCashierId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'cashierId',
        lower: [lowerCashierId],
        includeLower: includeLower,
        upper: [upperCashierId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> openEqualToAnyCashierId(
      bool open) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: 'open_cashierId',
        value: [open],
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> openNotEqualToAnyCashierId(
      bool open) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [],
              includeLower: true,
              upper: [open],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [open],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [open],
              includeLower: false,
              upper: [],
              includeUpper: true,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [],
              includeLower: true,
              upper: [open],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> openCashierIdEqualTo(
      bool open, int cashierId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: 'open_cashierId',
        value: [open, cashierId],
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause>
      openEqualToCashierIdNotEqualTo(bool open, int cashierId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [open],
              includeLower: true,
              upper: [open, cashierId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [open, cashierId],
              includeLower: false,
              upper: [open],
              includeUpper: true,
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [open, cashierId],
              includeLower: false,
              upper: [open],
              includeUpper: true,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: 'open_cashierId',
              lower: [open],
              includeLower: true,
              upper: [open, cashierId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause>
      openEqualToCashierIdGreaterThan(
    bool open,
    int cashierId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'open_cashierId',
        lower: [open, cashierId],
        includeLower: include,
        upper: [open],
        includeUpper: true,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause>
      openEqualToCashierIdLessThan(
    bool open,
    int cashierId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'open_cashierId',
        lower: [open],
        includeLower: true,
        upper: [open, cashierId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterWhereClause> openEqualToCashierIdBetween(
    bool open,
    int lowerCashierId,
    int upperCashierId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: 'open_cashierId',
        lower: [open, lowerCashierId],
        includeLower: includeLower,
        upper: [open, upperCashierId],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DrawersQueryFilter
    on QueryBuilder<Drawers, Drawers, QFilterCondition> {
  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> cashierIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'cashierId',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> cashierIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'cashierId',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> cashierIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'cashierId',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> cashierIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'cashierId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      closingBalanceGreaterThan(double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: false,
        property: 'closingBalance',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingBalanceLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: false,
        property: 'closingBalance',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingBalanceBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'closingBalance',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      closingDateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'closingDateTime',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingDateTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'closingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      closingDateTimeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'closingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingDateTimeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'closingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingDateTimeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'closingDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      closingDateTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'closingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingDateTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'closingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingDateTimeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'closingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> closingDateTimeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'closingDateTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> csSaleCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'csSaleCount',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> csSaleCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'csSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> csSaleCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'csSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> csSaleCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'csSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> csSaleCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'csSaleCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> idEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> incompleteSaleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'incompleteSale',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> incompleteSaleEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'incompleteSale',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      incompleteSaleGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'incompleteSale',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> incompleteSaleLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'incompleteSale',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> incompleteSaleBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'incompleteSale',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nrSaleCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'nrSaleCount',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nrSaleCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'nrSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nrSaleCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'nrSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nrSaleCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'nrSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nrSaleCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'nrSaleCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nsSaleCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'nsSaleCount',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nsSaleCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'nsSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nsSaleCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'nsSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nsSaleCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'nsSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> nsSaleCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'nsSaleCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'open',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      openingBalanceGreaterThan(double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: false,
        property: 'openingBalance',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingBalanceLessThan(
      double value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: false,
        property: 'openingBalance',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingBalanceBetween(
      double lower, double upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'openingBalance',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      openingDateTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'openingDateTime',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingDateTimeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'openingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      openingDateTimeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'openingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingDateTimeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'openingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingDateTimeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'openingDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      openingDateTimeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'openingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingDateTimeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'openingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingDateTimeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'openingDateTime',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> openingDateTimeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'openingDateTime',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      otherTransactionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'otherTransactions',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      otherTransactionsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'otherTransactions',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      otherTransactionsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'otherTransactions',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      otherTransactionsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'otherTransactions',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      otherTransactionsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'otherTransactions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'paymentMode',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'paymentMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> paymentModeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'paymentMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> psSaleCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'psSaleCount',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> psSaleCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'psSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> psSaleCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'psSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> psSaleCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'psSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> psSaleCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'psSaleCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalCsSaleIncomeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'totalCsSaleIncome',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalCsSaleIncomeGreaterThan(double? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: false,
        property: 'totalCsSaleIncome',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalCsSaleIncomeLessThan(double? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: false,
        property: 'totalCsSaleIncome',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalCsSaleIncomeBetween(double? lower, double? upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'totalCsSaleIncome',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalNsSaleIncomeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'totalNsSaleIncome',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalNsSaleIncomeGreaterThan(double? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: false,
        property: 'totalNsSaleIncome',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalNsSaleIncomeLessThan(double? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: false,
        property: 'totalNsSaleIncome',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition>
      totalNsSaleIncomeBetween(double? lower, double? upper) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'totalNsSaleIncome',
        lower: lower,
        includeLower: false,
        upper: upper,
        includeUpper: false,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> trSaleCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'trSaleCount',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> trSaleCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'trSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> trSaleCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'trSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> trSaleCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'trSaleCount',
        value: value,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> trSaleCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'trSaleCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'tradeName',
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'tradeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'tradeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'tradeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'tradeName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'tradeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'tradeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'tradeName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterFilterCondition> tradeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'tradeName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension DrawersQueryLinks
    on QueryBuilder<Drawers, Drawers, QFilterCondition> {}

extension DrawersQueryWhereSortBy on QueryBuilder<Drawers, Drawers, QSortBy> {
  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByCashierId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('cashierId', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByCashierIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('cashierId', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByClosingBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingBalance', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByClosingBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingBalance', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByClosingDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingDateTime', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByClosingDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingDateTime', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByCsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('csSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByCsSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('csSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByIncompleteSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('incompleteSale', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByIncompleteSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('incompleteSale', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByNrSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nrSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByNrSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nrSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByNsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nsSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByNsSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nsSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOpen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('open', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOpenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('open', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOpeningBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingBalance', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOpeningBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingBalance', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOpeningDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingDateTime', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOpeningDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingDateTime', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOtherTransactions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('otherTransactions', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByOtherTransactionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('otherTransactions', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByPaymentMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentMode', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByPaymentModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentMode', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByPsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('psSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByPsSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('psSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTotalCsSaleIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalCsSaleIncome', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTotalCsSaleIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalCsSaleIncome', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTotalNsSaleIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalNsSaleIncome', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTotalNsSaleIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalNsSaleIncome', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTrSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('trSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTrSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('trSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTradeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('tradeName', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> sortByTradeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('tradeName', Sort.desc);
    });
  }
}

extension DrawersQueryWhereSortThenBy
    on QueryBuilder<Drawers, Drawers, QSortThenBy> {
  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByCashierId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('cashierId', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByCashierIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('cashierId', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByClosingBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingBalance', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByClosingBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingBalance', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByClosingDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingDateTime', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByClosingDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('closingDateTime', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByCsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('csSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByCsSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('csSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByIncompleteSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('incompleteSale', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByIncompleteSaleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('incompleteSale', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByNrSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nrSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByNrSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nrSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByNsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nsSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByNsSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('nsSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOpen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('open', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOpenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('open', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOpeningBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingBalance', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOpeningBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingBalance', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOpeningDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingDateTime', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOpeningDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('openingDateTime', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOtherTransactions() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('otherTransactions', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByOtherTransactionsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('otherTransactions', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByPaymentMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentMode', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByPaymentModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('paymentMode', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByPsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('psSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByPsSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('psSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTotalCsSaleIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalCsSaleIncome', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTotalCsSaleIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalCsSaleIncome', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTotalNsSaleIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalNsSaleIncome', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTotalNsSaleIncomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('totalNsSaleIncome', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTrSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('trSaleCount', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTrSaleCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('trSaleCount', Sort.desc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTradeName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('tradeName', Sort.asc);
    });
  }

  QueryBuilder<Drawers, Drawers, QAfterSortBy> thenByTradeNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('tradeName', Sort.desc);
    });
  }
}

extension DrawersQueryWhereDistinct
    on QueryBuilder<Drawers, Drawers, QDistinct> {
  QueryBuilder<Drawers, Drawers, QDistinct> distinctByCashierId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('cashierId');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByClosingBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('closingBalance');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByClosingDateTime(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('closingDateTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByCsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('csSaleCount');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByIncompleteSale() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('incompleteSale');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByNrSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('nrSaleCount');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByNsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('nsSaleCount');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByOpen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('open');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByOpeningBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('openingBalance');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByOpeningDateTime(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('openingDateTime',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByOtherTransactions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('otherTransactions');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByPaymentMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('paymentMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByPsSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('psSaleCount');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByTotalCsSaleIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('totalCsSaleIncome');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByTotalNsSaleIncome() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('totalNsSaleIncome');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByTrSaleCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('trSaleCount');
    });
  }

  QueryBuilder<Drawers, Drawers, QDistinct> distinctByTradeName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('tradeName', caseSensitive: caseSensitive);
    });
  }
}

extension DrawersQueryProperty
    on QueryBuilder<Drawers, Drawers, QQueryProperty> {
  QueryBuilder<Drawers, int, QQueryOperations> cashierIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('cashierId');
    });
  }

  QueryBuilder<Drawers, double, QQueryOperations> closingBalanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('closingBalance');
    });
  }

  QueryBuilder<Drawers, String?, QQueryOperations> closingDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('closingDateTime');
    });
  }

  QueryBuilder<Drawers, int?, QQueryOperations> csSaleCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('csSaleCount');
    });
  }

  QueryBuilder<Drawers, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Drawers, int?, QQueryOperations> incompleteSaleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('incompleteSale');
    });
  }

  QueryBuilder<Drawers, int?, QQueryOperations> nrSaleCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('nrSaleCount');
    });
  }

  QueryBuilder<Drawers, int?, QQueryOperations> nsSaleCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('nsSaleCount');
    });
  }

  QueryBuilder<Drawers, bool, QQueryOperations> openProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('open');
    });
  }

  QueryBuilder<Drawers, double, QQueryOperations> openingBalanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('openingBalance');
    });
  }

  QueryBuilder<Drawers, String?, QQueryOperations> openingDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('openingDateTime');
    });
  }

  QueryBuilder<Drawers, int?, QQueryOperations> otherTransactionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('otherTransactions');
    });
  }

  QueryBuilder<Drawers, String?, QQueryOperations> paymentModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('paymentMode');
    });
  }

  QueryBuilder<Drawers, int?, QQueryOperations> psSaleCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('psSaleCount');
    });
  }

  QueryBuilder<Drawers, double?, QQueryOperations> totalCsSaleIncomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('totalCsSaleIncome');
    });
  }

  QueryBuilder<Drawers, double?, QQueryOperations> totalNsSaleIncomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('totalNsSaleIncome');
    });
  }

  QueryBuilder<Drawers, int?, QQueryOperations> trSaleCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('trSaleCount');
    });
  }

  QueryBuilder<Drawers, String?, QQueryOperations> tradeNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('tradeName');
    });
  }
}
