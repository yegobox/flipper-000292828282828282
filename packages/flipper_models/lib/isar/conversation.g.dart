// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names,
// constant_identifier_names, invalid_use_of_protected_member,
// unnecessary_cast, unused_local_variable,
// no_leading_underscores_for_local_identifiers,
// inference_failure_on_function_invocation, prefer_const_constructors

extension GetConversationCollection on Isar {
  IsarCollection<Conversation> get conversations => getCollection();
}

const ConversationSchema = CollectionSchema(
  name: 'Conversation',
  schema:
      '{"name":"Conversation","idName":"id","properties":[{"name":"createdAt","type":"Long"},{"name":"dbAvatars","type":"String"},{"name":"delivered","type":"Bool"},{"name":"lastMessage","type":"String"},{"name":"receiverId","type":"Long"},{"name":"senderId","type":"Long"},{"name":"senderName","type":"String"},{"name":"status","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'createdAt': 0,
    'dbAvatars': 1,
    'delivered': 2,
    'lastMessage': 3,
    'receiverId': 4,
    'senderId': 5,
    'senderName': 6,
    'status': 7
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _conversationGetId,
  setId: _conversationSetId,
  getLinks: _conversationGetLinks,
  attachLinks: _conversationAttachLinks,
  serializeNative: _conversationSerializeNative,
  deserializeNative: _conversationDeserializeNative,
  deserializePropNative: _conversationDeserializePropNative,
  serializeWeb: _conversationSerializeWeb,
  deserializeWeb: _conversationDeserializeWeb,
  deserializePropWeb: _conversationDeserializePropWeb,
  version: 4,
);

int? _conversationGetId(Conversation object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _conversationSetId(Conversation object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _conversationGetLinks(Conversation object) {
  return [];
}

void _conversationSerializeNative(
    IsarCollection<Conversation> collection,
    IsarCObject cObj,
    Conversation object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  IsarUint8List? dbAvatars$Bytes;
  final dbAvatars$Value = object.dbAvatars;
  if (dbAvatars$Value != null) {
    dbAvatars$Bytes = IsarBinaryWriter.utf8Encoder.convert(dbAvatars$Value);
  }
  IsarUint8List? lastMessage$Bytes;
  final lastMessage$Value = object.lastMessage;
  if (lastMessage$Value != null) {
    lastMessage$Bytes = IsarBinaryWriter.utf8Encoder.convert(lastMessage$Value);
  }
  final senderName$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.senderName);
  final status$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.status);
  final size = (staticSize +
      (dbAvatars$Bytes?.length ?? 0) +
      (lastMessage$Bytes?.length ?? 0) +
      (senderName$Bytes.length) +
      (status$Bytes.length)) as int;
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], object.createdAt);
  writer.writeBytes(offsets[1], dbAvatars$Bytes);
  writer.writeBool(offsets[2], object.delivered);
  writer.writeBytes(offsets[3], lastMessage$Bytes);
  writer.writeLong(offsets[4], object.receiverId);
  writer.writeLong(offsets[5], object.senderId);
  writer.writeBytes(offsets[6], senderName$Bytes);
  writer.writeBytes(offsets[7], status$Bytes);
}

Conversation _conversationDeserializeNative(
    IsarCollection<Conversation> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = Conversation();
  object.createdAt = reader.readLong(offsets[0]);
  object.delivered = reader.readBool(offsets[2]);
  object.id = id;
  object.lastMessage = reader.readStringOrNull(offsets[3]);
  object.receiverId = reader.readLong(offsets[4]);
  object.senderId = reader.readLong(offsets[5]);
  object.senderName = reader.readString(offsets[6]);
  object.status = reader.readString(offsets[7]);
  return object;
}

P _conversationDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _conversationSerializeWeb(
    IsarCollection<Conversation> collection, Conversation object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'createdAt', object.createdAt);
  IsarNative.jsObjectSet(jsObj, 'dbAvatars', object.dbAvatars);
  IsarNative.jsObjectSet(jsObj, 'delivered', object.delivered);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'lastMessage', object.lastMessage);
  IsarNative.jsObjectSet(jsObj, 'receiverId', object.receiverId);
  IsarNative.jsObjectSet(jsObj, 'senderId', object.senderId);
  IsarNative.jsObjectSet(jsObj, 'senderName', object.senderName);
  IsarNative.jsObjectSet(jsObj, 'status', object.status);
  return jsObj;
}

Conversation _conversationDeserializeWeb(
    IsarCollection<Conversation> collection, Object jsObj) {
  final object = Conversation();
  object.createdAt = IsarNative.jsObjectGet(jsObj, 'createdAt') ??
      (double.negativeInfinity as int);
  object.delivered = IsarNative.jsObjectGet(jsObj, 'delivered') ?? false;
  object.id =
      IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int);
  object.lastMessage = IsarNative.jsObjectGet(jsObj, 'lastMessage');
  object.receiverId = IsarNative.jsObjectGet(jsObj, 'receiverId') ??
      (double.negativeInfinity as int);
  object.senderId = IsarNative.jsObjectGet(jsObj, 'senderId') ??
      (double.negativeInfinity as int);
  object.senderName = IsarNative.jsObjectGet(jsObj, 'senderName') ?? '';
  object.status = IsarNative.jsObjectGet(jsObj, 'status') ?? '';
  return object;
}

P _conversationDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'createdAt':
      return (IsarNative.jsObjectGet(jsObj, 'createdAt') ??
          (double.negativeInfinity as int)) as P;
    case 'dbAvatars':
      return (IsarNative.jsObjectGet(jsObj, 'dbAvatars')) as P;
    case 'delivered':
      return (IsarNative.jsObjectGet(jsObj, 'delivered') ?? false) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'lastMessage':
      return (IsarNative.jsObjectGet(jsObj, 'lastMessage')) as P;
    case 'receiverId':
      return (IsarNative.jsObjectGet(jsObj, 'receiverId') ??
          (double.negativeInfinity as int)) as P;
    case 'senderId':
      return (IsarNative.jsObjectGet(jsObj, 'senderId') ??
          (double.negativeInfinity as int)) as P;
    case 'senderName':
      return (IsarNative.jsObjectGet(jsObj, 'senderName') ?? '') as P;
    case 'status':
      return (IsarNative.jsObjectGet(jsObj, 'status') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _conversationAttachLinks(
    IsarCollection<dynamic> col, int id, Conversation object) {}

extension ConversationQueryWhereSort
    on QueryBuilder<Conversation, Conversation, QWhere> {
  QueryBuilder<Conversation, Conversation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ConversationQueryWhere
    on QueryBuilder<Conversation, Conversation, QWhereClause> {
  QueryBuilder<Conversation, Conversation, QAfterWhereClause> idEqualTo(
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

  QueryBuilder<Conversation, Conversation, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<Conversation, Conversation, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterWhereClause> idBetween(
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

extension ConversationQueryFilter
    on QueryBuilder<Conversation, Conversation, QFilterCondition> {
  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      createdAtEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      createdAtGreaterThan(
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

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      createdAtLessThan(
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

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      createdAtBetween(
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

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'dbAvatars',
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'dbAvatars',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'dbAvatars',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'dbAvatars',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'dbAvatars',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'dbAvatars',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'dbAvatars',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'dbAvatars',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      dbAvatarsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'dbAvatars',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      deliveredEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'delivered',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: 'lastMessage',
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'lastMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      lastMessageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'lastMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      receiverIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'receiverId',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      receiverIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'receiverId',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      receiverIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'receiverId',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      receiverIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'receiverId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'senderId',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'senderId',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'senderId',
        value: value,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'senderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'senderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'senderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'senderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'senderName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'senderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'senderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'senderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      senderNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'senderName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: 'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      statusGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: 'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      statusLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: 'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: 'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: 'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: 'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: 'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: 'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

extension ConversationQueryLinks
    on QueryBuilder<Conversation, Conversation, QFilterCondition> {}

extension ConversationQueryWhereSortBy
    on QueryBuilder<Conversation, Conversation, QSortBy> {
  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByDbAvatars() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('dbAvatars', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByDbAvatarsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('dbAvatars', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByDelivered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('delivered', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByDeliveredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('delivered', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByLastMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastMessage', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy>
      sortByLastMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastMessage', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByReceiverId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('receiverId', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy>
      sortByReceiverIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('receiverId', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortBySenderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderId', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortBySenderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderId', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortBySenderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderName', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy>
      sortBySenderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderName', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('status', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('status', Sort.desc);
    });
  }
}

extension ConversationQueryWhereSortThenBy
    on QueryBuilder<Conversation, Conversation, QSortThenBy> {
  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('createdAt', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByDbAvatars() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('dbAvatars', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByDbAvatarsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('dbAvatars', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByDelivered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('delivered', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByDeliveredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('delivered', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('id', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByLastMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastMessage', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy>
      thenByLastMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('lastMessage', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByReceiverId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('receiverId', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy>
      thenByReceiverIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('receiverId', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenBySenderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderId', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenBySenderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderId', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenBySenderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderName', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy>
      thenBySenderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('senderName', Sort.desc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('status', Sort.asc);
    });
  }

  QueryBuilder<Conversation, Conversation, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy('status', Sort.desc);
    });
  }
}

extension ConversationQueryWhereDistinct
    on QueryBuilder<Conversation, Conversation, QDistinct> {
  QueryBuilder<Conversation, Conversation, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('createdAt');
    });
  }

  QueryBuilder<Conversation, Conversation, QDistinct> distinctByDbAvatars(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('dbAvatars', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Conversation, Conversation, QDistinct> distinctByDelivered() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('delivered');
    });
  }

  QueryBuilder<Conversation, Conversation, QDistinct> distinctByLastMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('lastMessage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Conversation, Conversation, QDistinct> distinctByReceiverId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('receiverId');
    });
  }

  QueryBuilder<Conversation, Conversation, QDistinct> distinctBySenderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('senderId');
    });
  }

  QueryBuilder<Conversation, Conversation, QDistinct> distinctBySenderName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('senderName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Conversation, Conversation, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy('status', caseSensitive: caseSensitive);
    });
  }
}

extension ConversationQueryProperty
    on QueryBuilder<Conversation, Conversation, QQueryProperty> {
  QueryBuilder<Conversation, int, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('createdAt');
    });
  }

  QueryBuilder<Conversation, String?, QQueryOperations> dbAvatarsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('dbAvatars');
    });
  }

  QueryBuilder<Conversation, bool, QQueryOperations> deliveredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('delivered');
    });
  }

  QueryBuilder<Conversation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('id');
    });
  }

  QueryBuilder<Conversation, String?, QQueryOperations> lastMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('lastMessage');
    });
  }

  QueryBuilder<Conversation, int, QQueryOperations> receiverIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('receiverId');
    });
  }

  QueryBuilder<Conversation, int, QQueryOperations> senderIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('senderId');
    });
  }

  QueryBuilder<Conversation, String, QQueryOperations> senderNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('senderName');
    });
  }

  QueryBuilder<Conversation, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName('status');
    });
  }
}
