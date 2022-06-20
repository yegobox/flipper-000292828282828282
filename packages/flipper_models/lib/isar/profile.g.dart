// GENERATED CODE - DO NOT MODIFY BY HAND

part of flipper_models;

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable, no_leading_underscores_for_local_identifiers, inference_failure_on_function_invocation

extension GetProfileCollection on Isar {
  IsarCollection<Profile> get profiles => getCollection();
}

const ProfileSchema = CollectionSchema(
  name: 'Profile',
  schema:
      '{"name":"Profile","idName":"id","properties":[{"name":"about","type":"String"},{"name":"address","type":"String"},{"name":"businessId","type":"Long"},{"name":"cell","type":"String"},{"name":"city","type":"String"},{"name":"country","type":"String"},{"name":"coverPic","type":"String"},{"name":"district","type":"String"},{"name":"email","type":"String"},{"name":"livingAt","type":"String"},{"name":"name","type":"String"},{"name":"nationalId","type":"String"},{"name":"phone","type":"String"},{"name":"pincode","type":"String"},{"name":"profilePic","type":"String"},{"name":"state","type":"String"},{"name":"vaccinationCode","type":"String"}],"indexes":[{"name":"businessId","unique":false,"replace":false,"properties":[{"name":"businessId","type":"Value","caseSensitive":false}]}],"links":[]}',
  idName: 'id',
  propertyIds: {
    'about': 0,
    'address': 1,
    'businessId': 2,
    'cell': 3,
    'city': 4,
    'country': 5,
    'coverPic': 6,
    'district': 7,
    'email': 8,
    'livingAt': 9,
    'name': 10,
    'nationalId': 11,
    'phone': 12,
    'pincode': 13,
    'profilePic': 14,
    'state': 15,
    'vaccinationCode': 16
  },
  listProperties: {},
  indexIds: {'businessId': 0},
  indexValueTypes: {
    'businessId': [
      IndexValueType.long,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _profileGetId,
  setId: _profileSetId,
  getLinks: _profileGetLinks,
  attachLinks: _profileAttachLinks,
  serializeNative: _profileSerializeNative,
  deserializeNative: _profileDeserializeNative,
  deserializePropNative: _profileDeserializePropNative,
  serializeWeb: _profileSerializeWeb,
  deserializeWeb: _profileDeserializeWeb,
  deserializePropWeb: _profileDeserializePropWeb,
  version: 4,
);

int? _profileGetId(Profile object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _profileSetId(Profile object, int id) {
  object.id = id;
}

List<IsarLinkBase<dynamic>> _profileGetLinks(Profile object) {
  return [];
}

void _profileSerializeNative(
    IsarCollection<Profile> collection,
    IsarCObject cObj,
    Profile object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  IsarUint8List? about$Bytes;
  final about$Value = object.about;
  if (about$Value != null) {
    about$Bytes = IsarBinaryWriter.utf8Encoder.convert(about$Value);
  }
  IsarUint8List? address$Bytes;
  final address$Value = object.address;
  if (address$Value != null) {
    address$Bytes = IsarBinaryWriter.utf8Encoder.convert(address$Value);
  }
  final cell$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.cell);
  IsarUint8List? city$Bytes;
  final city$Value = object.city;
  if (city$Value != null) {
    city$Bytes = IsarBinaryWriter.utf8Encoder.convert(city$Value);
  }
  final country$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.country);
  IsarUint8List? coverPic$Bytes;
  final coverPic$Value = object.coverPic;
  if (coverPic$Value != null) {
    coverPic$Bytes = IsarBinaryWriter.utf8Encoder.convert(coverPic$Value);
  }
  final district$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.district);
  final email$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.email);
  final livingAt$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.livingAt);
  final name$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.name);
  final nationalId$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.nationalId);
  final phone$Bytes = IsarBinaryWriter.utf8Encoder.convert(object.phone);
  IsarUint8List? pincode$Bytes;
  final pincode$Value = object.pincode;
  if (pincode$Value != null) {
    pincode$Bytes = IsarBinaryWriter.utf8Encoder.convert(pincode$Value);
  }
  IsarUint8List? profilePic$Bytes;
  final profilePic$Value = object.profilePic;
  if (profilePic$Value != null) {
    profilePic$Bytes = IsarBinaryWriter.utf8Encoder.convert(profilePic$Value);
  }
  IsarUint8List? state$Bytes;
  final state$Value = object.state;
  if (state$Value != null) {
    state$Bytes = IsarBinaryWriter.utf8Encoder.convert(state$Value);
  }
  final vaccinationCode$Bytes =
      IsarBinaryWriter.utf8Encoder.convert(object.vaccinationCode);
  final size = staticSize +
      (about$Bytes?.length ?? 0) +
      (address$Bytes?.length ?? 0) +
      (cell$Bytes.length) +
      (city$Bytes?.length ?? 0) +
      (country$Bytes.length) +
      (coverPic$Bytes?.length ?? 0) +
      (district$Bytes.length) +
      (email$Bytes.length) +
      (livingAt$Bytes.length) +
      (name$Bytes.length) +
      (nationalId$Bytes.length) +
      (phone$Bytes.length) +
      (pincode$Bytes?.length ?? 0) +
      (profilePic$Bytes?.length ?? 0) +
      (state$Bytes?.length ?? 0) +
      (vaccinationCode$Bytes.length);
  cObj.buffer = alloc(size);
  cObj.buffer_length = size;

  final buffer = IsarNative.bufAsBytes(cObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], about$Bytes);
  writer.writeBytes(offsets[1], address$Bytes);
  writer.writeLong(offsets[2], object.businessId);
  writer.writeBytes(offsets[3], cell$Bytes);
  writer.writeBytes(offsets[4], city$Bytes);
  writer.writeBytes(offsets[5], country$Bytes);
  writer.writeBytes(offsets[6], coverPic$Bytes);
  writer.writeBytes(offsets[7], district$Bytes);
  writer.writeBytes(offsets[8], email$Bytes);
  writer.writeBytes(offsets[9], livingAt$Bytes);
  writer.writeBytes(offsets[10], name$Bytes);
  writer.writeBytes(offsets[11], nationalId$Bytes);
  writer.writeBytes(offsets[12], phone$Bytes);
  writer.writeBytes(offsets[13], pincode$Bytes);
  writer.writeBytes(offsets[14], profilePic$Bytes);
  writer.writeBytes(offsets[15], state$Bytes);
  writer.writeBytes(offsets[16], vaccinationCode$Bytes);
}

Profile _profileDeserializeNative(IsarCollection<Profile> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Profile(
    about: reader.readStringOrNull(offsets[0]),
    address: reader.readStringOrNull(offsets[1]),
    businessId: reader.readLong(offsets[2]),
    cell: reader.readString(offsets[3]),
    city: reader.readStringOrNull(offsets[4]),
    country: reader.readString(offsets[5]),
    coverPic: reader.readStringOrNull(offsets[6]),
    district: reader.readString(offsets[7]),
    email: reader.readString(offsets[8]),
    id: id,
    livingAt: reader.readString(offsets[9]),
    name: reader.readString(offsets[10]),
    nationalId: reader.readString(offsets[11]),
    phone: reader.readString(offsets[12]),
    pincode: reader.readStringOrNull(offsets[13]),
    profilePic: reader.readStringOrNull(offsets[14]),
    state: reader.readStringOrNull(offsets[15]),
    vaccinationCode: reader.readString(offsets[16]),
  );
  return object;
}

P _profileDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

Object _profileSerializeWeb(
    IsarCollection<Profile> collection, Profile object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'about', object.about);
  IsarNative.jsObjectSet(jsObj, 'address', object.address);
  IsarNative.jsObjectSet(jsObj, 'businessId', object.businessId);
  IsarNative.jsObjectSet(jsObj, 'cell', object.cell);
  IsarNative.jsObjectSet(jsObj, 'city', object.city);
  IsarNative.jsObjectSet(jsObj, 'country', object.country);
  IsarNative.jsObjectSet(jsObj, 'coverPic', object.coverPic);
  IsarNative.jsObjectSet(jsObj, 'district', object.district);
  IsarNative.jsObjectSet(jsObj, 'email', object.email);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'livingAt', object.livingAt);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'nationalId', object.nationalId);
  IsarNative.jsObjectSet(jsObj, 'phone', object.phone);
  IsarNative.jsObjectSet(jsObj, 'pincode', object.pincode);
  IsarNative.jsObjectSet(jsObj, 'profilePic', object.profilePic);
  IsarNative.jsObjectSet(jsObj, 'state', object.state);
  IsarNative.jsObjectSet(jsObj, 'vaccinationCode', object.vaccinationCode);
  return jsObj;
}

Profile _profileDeserializeWeb(
    IsarCollection<Profile> collection, Object jsObj) {
  final object = Profile(
    about: IsarNative.jsObjectGet(jsObj, 'about'),
    address: IsarNative.jsObjectGet(jsObj, 'address'),
    businessId: IsarNative.jsObjectGet(jsObj, 'businessId') ??
        (double.negativeInfinity as int),
    cell: IsarNative.jsObjectGet(jsObj, 'cell') ?? '',
    city: IsarNative.jsObjectGet(jsObj, 'city'),
    country: IsarNative.jsObjectGet(jsObj, 'country') ?? '',
    coverPic: IsarNative.jsObjectGet(jsObj, 'coverPic'),
    district: IsarNative.jsObjectGet(jsObj, 'district') ?? '',
    email: IsarNative.jsObjectGet(jsObj, 'email') ?? '',
    id: IsarNative.jsObjectGet(jsObj, 'id') ?? (double.negativeInfinity as int),
    livingAt: IsarNative.jsObjectGet(jsObj, 'livingAt') ?? '',
    name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
    nationalId: IsarNative.jsObjectGet(jsObj, 'nationalId') ?? '',
    phone: IsarNative.jsObjectGet(jsObj, 'phone') ?? '',
    pincode: IsarNative.jsObjectGet(jsObj, 'pincode'),
    profilePic: IsarNative.jsObjectGet(jsObj, 'profilePic'),
    state: IsarNative.jsObjectGet(jsObj, 'state'),
    vaccinationCode: IsarNative.jsObjectGet(jsObj, 'vaccinationCode') ?? '',
  );
  return object;
}

P _profileDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'about':
      return (IsarNative.jsObjectGet(jsObj, 'about')) as P;
    case 'address':
      return (IsarNative.jsObjectGet(jsObj, 'address')) as P;
    case 'businessId':
      return (IsarNative.jsObjectGet(jsObj, 'businessId') ??
          (double.negativeInfinity as int)) as P;
    case 'cell':
      return (IsarNative.jsObjectGet(jsObj, 'cell') ?? '') as P;
    case 'city':
      return (IsarNative.jsObjectGet(jsObj, 'city')) as P;
    case 'country':
      return (IsarNative.jsObjectGet(jsObj, 'country') ?? '') as P;
    case 'coverPic':
      return (IsarNative.jsObjectGet(jsObj, 'coverPic')) as P;
    case 'district':
      return (IsarNative.jsObjectGet(jsObj, 'district') ?? '') as P;
    case 'email':
      return (IsarNative.jsObjectGet(jsObj, 'email') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ??
          (double.negativeInfinity as int)) as P;
    case 'livingAt':
      return (IsarNative.jsObjectGet(jsObj, 'livingAt') ?? '') as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'nationalId':
      return (IsarNative.jsObjectGet(jsObj, 'nationalId') ?? '') as P;
    case 'phone':
      return (IsarNative.jsObjectGet(jsObj, 'phone') ?? '') as P;
    case 'pincode':
      return (IsarNative.jsObjectGet(jsObj, 'pincode')) as P;
    case 'profilePic':
      return (IsarNative.jsObjectGet(jsObj, 'profilePic')) as P;
    case 'state':
      return (IsarNative.jsObjectGet(jsObj, 'state')) as P;
    case 'vaccinationCode':
      return (IsarNative.jsObjectGet(jsObj, 'vaccinationCode') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _profileAttachLinks(IsarCollection<dynamic> col, int id, Profile object) {}

extension ProfileQueryWhereSort on QueryBuilder<Profile, Profile, QWhere> {
  QueryBuilder<Profile, Profile, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<Profile, Profile, QAfterWhere> anyBusinessId() {
    return addWhereClauseInternal(
        const IndexWhereClause.any(indexName: 'businessId'));
  }
}

extension ProfileQueryWhere on QueryBuilder<Profile, Profile, QWhereClause> {
  QueryBuilder<Profile, Profile, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterWhereClause> idNotEqualTo(int id) {
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

  QueryBuilder<Profile, Profile, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Profile, Profile, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Profile, Profile, QAfterWhereClause> idBetween(
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

  QueryBuilder<Profile, Profile, QAfterWhereClause> businessIdEqualTo(
      int businessId) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'businessId',
      value: [businessId],
    ));
  }

  QueryBuilder<Profile, Profile, QAfterWhereClause> businessIdNotEqualTo(
      int businessId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'businessId',
        upper: [businessId],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'businessId',
        lower: [businessId],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'businessId',
        lower: [businessId],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'businessId',
        upper: [businessId],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Profile, Profile, QAfterWhereClause> businessIdGreaterThan(
    int businessId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.greaterThan(
      indexName: 'businessId',
      lower: [businessId],
      includeLower: include,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterWhereClause> businessIdLessThan(
    int businessId, {
    bool include = false,
  }) {
    return addWhereClauseInternal(IndexWhereClause.lessThan(
      indexName: 'businessId',
      upper: [businessId],
      includeUpper: include,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterWhereClause> businessIdBetween(
    int lowerBusinessId,
    int upperBusinessId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IndexWhereClause.between(
      indexName: 'businessId',
      lower: [lowerBusinessId],
      includeLower: includeLower,
      upper: [upperBusinessId],
      includeUpper: includeUpper,
    ));
  }
}

extension ProfileQueryFilter
    on QueryBuilder<Profile, Profile, QFilterCondition> {
  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'about',
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'about',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'about',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'about',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'about',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'about',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'about',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'about',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> aboutMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'about',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'address',
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'address',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'address',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'address',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> businessIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'businessId',
      value: value,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> businessIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'businessId',
      value: value,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> businessIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'businessId',
      value: value,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> businessIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'businessId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'cell',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'cell',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'cell',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'cell',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'cell',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'cell',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'cell',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cellMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'cell',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'city',
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'city',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'city',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> cityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'city',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'country',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'country',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> countryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'country',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'coverPic',
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'coverPic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'coverPic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'coverPic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'coverPic',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'coverPic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'coverPic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'coverPic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> coverPicMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'coverPic',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'district',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'district',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'district',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'district',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'district',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'district',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'district',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> districtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'district',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'email',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'email',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'email',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'livingAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'livingAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'livingAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'livingAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'livingAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'livingAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'livingAt',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> livingAtMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'livingAt',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'name',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'nationalId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'nationalId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'nationalId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'nationalId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'nationalId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'nationalId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'nationalId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> nationalIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'nationalId',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'phone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'phone',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> phoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'phone',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'pincode',
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'pincode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'pincode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'pincode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pincode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'pincode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'pincode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'pincode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> pincodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'pincode',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'profilePic',
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'profilePic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'profilePic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'profilePic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'profilePic',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'profilePic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'profilePic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'profilePic',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> profilePicMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'profilePic',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateIsNull() {
    return addFilterConditionInternal(const FilterCondition.isNull(
      property: 'state',
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'state',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'state',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> stateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'state',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> vaccinationCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.equalTo(
      property: 'vaccinationCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition>
      vaccinationCodeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.greaterThan(
      include: include,
      property: 'vaccinationCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> vaccinationCodeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition.lessThan(
      include: include,
      property: 'vaccinationCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> vaccinationCodeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'vaccinationCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition>
      vaccinationCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.startsWith(
      property: 'vaccinationCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> vaccinationCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition.endsWith(
      property: 'vaccinationCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> vaccinationCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.contains(
      property: 'vaccinationCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Profile, Profile, QAfterFilterCondition> vaccinationCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition.matches(
      property: 'vaccinationCode',
      wildcard: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension ProfileQueryLinks
    on QueryBuilder<Profile, Profile, QFilterCondition> {}

extension ProfileQueryWhereSortBy on QueryBuilder<Profile, Profile, QSortBy> {
  QueryBuilder<Profile, Profile, QAfterSortBy> sortByAbout() {
    return addSortByInternal('about', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByAboutDesc() {
    return addSortByInternal('about', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByBusinessId() {
    return addSortByInternal('businessId', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByBusinessIdDesc() {
    return addSortByInternal('businessId', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCell() {
    return addSortByInternal('cell', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCellDesc() {
    return addSortByInternal('cell', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCity() {
    return addSortByInternal('city', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCityDesc() {
    return addSortByInternal('city', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCountry() {
    return addSortByInternal('country', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCountryDesc() {
    return addSortByInternal('country', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCoverPic() {
    return addSortByInternal('coverPic', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByCoverPicDesc() {
    return addSortByInternal('coverPic', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByDistrict() {
    return addSortByInternal('district', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByDistrictDesc() {
    return addSortByInternal('district', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByLivingAt() {
    return addSortByInternal('livingAt', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByLivingAtDesc() {
    return addSortByInternal('livingAt', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByNationalId() {
    return addSortByInternal('nationalId', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByNationalIdDesc() {
    return addSortByInternal('nationalId', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByPincode() {
    return addSortByInternal('pincode', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByPincodeDesc() {
    return addSortByInternal('pincode', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByProfilePic() {
    return addSortByInternal('profilePic', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByProfilePicDesc() {
    return addSortByInternal('profilePic', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByState() {
    return addSortByInternal('state', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByStateDesc() {
    return addSortByInternal('state', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByVaccinationCode() {
    return addSortByInternal('vaccinationCode', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> sortByVaccinationCodeDesc() {
    return addSortByInternal('vaccinationCode', Sort.desc);
  }
}

extension ProfileQueryWhereSortThenBy
    on QueryBuilder<Profile, Profile, QSortThenBy> {
  QueryBuilder<Profile, Profile, QAfterSortBy> thenByAbout() {
    return addSortByInternal('about', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByAboutDesc() {
    return addSortByInternal('about', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByAddress() {
    return addSortByInternal('address', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByAddressDesc() {
    return addSortByInternal('address', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByBusinessId() {
    return addSortByInternal('businessId', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByBusinessIdDesc() {
    return addSortByInternal('businessId', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCell() {
    return addSortByInternal('cell', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCellDesc() {
    return addSortByInternal('cell', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCity() {
    return addSortByInternal('city', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCityDesc() {
    return addSortByInternal('city', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCountry() {
    return addSortByInternal('country', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCountryDesc() {
    return addSortByInternal('country', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCoverPic() {
    return addSortByInternal('coverPic', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByCoverPicDesc() {
    return addSortByInternal('coverPic', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByDistrict() {
    return addSortByInternal('district', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByDistrictDesc() {
    return addSortByInternal('district', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByEmail() {
    return addSortByInternal('email', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByEmailDesc() {
    return addSortByInternal('email', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByLivingAt() {
    return addSortByInternal('livingAt', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByLivingAtDesc() {
    return addSortByInternal('livingAt', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByNationalId() {
    return addSortByInternal('nationalId', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByNationalIdDesc() {
    return addSortByInternal('nationalId', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByPincode() {
    return addSortByInternal('pincode', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByPincodeDesc() {
    return addSortByInternal('pincode', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByProfilePic() {
    return addSortByInternal('profilePic', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByProfilePicDesc() {
    return addSortByInternal('profilePic', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByState() {
    return addSortByInternal('state', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByStateDesc() {
    return addSortByInternal('state', Sort.desc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByVaccinationCode() {
    return addSortByInternal('vaccinationCode', Sort.asc);
  }

  QueryBuilder<Profile, Profile, QAfterSortBy> thenByVaccinationCodeDesc() {
    return addSortByInternal('vaccinationCode', Sort.desc);
  }
}

extension ProfileQueryWhereDistinct
    on QueryBuilder<Profile, Profile, QDistinct> {
  QueryBuilder<Profile, Profile, QDistinct> distinctByAbout(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('about', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('address', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByBusinessId() {
    return addDistinctByInternal('businessId');
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByCell(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('cell', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByCity(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('city', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByCountry(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('country', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByCoverPic(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('coverPic', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByDistrict(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('district', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('email', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByLivingAt(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('livingAt', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByNationalId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('nationalId', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('phone', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByPincode(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('pincode', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByProfilePic(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('profilePic', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByState(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('state', caseSensitive: caseSensitive);
  }

  QueryBuilder<Profile, Profile, QDistinct> distinctByVaccinationCode(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('vaccinationCode',
        caseSensitive: caseSensitive);
  }
}

extension ProfileQueryProperty
    on QueryBuilder<Profile, Profile, QQueryProperty> {
  QueryBuilder<Profile, String?, QQueryOperations> aboutProperty() {
    return addPropertyNameInternal('about');
  }

  QueryBuilder<Profile, String?, QQueryOperations> addressProperty() {
    return addPropertyNameInternal('address');
  }

  QueryBuilder<Profile, int, QQueryOperations> businessIdProperty() {
    return addPropertyNameInternal('businessId');
  }

  QueryBuilder<Profile, String, QQueryOperations> cellProperty() {
    return addPropertyNameInternal('cell');
  }

  QueryBuilder<Profile, String?, QQueryOperations> cityProperty() {
    return addPropertyNameInternal('city');
  }

  QueryBuilder<Profile, String, QQueryOperations> countryProperty() {
    return addPropertyNameInternal('country');
  }

  QueryBuilder<Profile, String?, QQueryOperations> coverPicProperty() {
    return addPropertyNameInternal('coverPic');
  }

  QueryBuilder<Profile, String, QQueryOperations> districtProperty() {
    return addPropertyNameInternal('district');
  }

  QueryBuilder<Profile, String, QQueryOperations> emailProperty() {
    return addPropertyNameInternal('email');
  }

  QueryBuilder<Profile, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Profile, String, QQueryOperations> livingAtProperty() {
    return addPropertyNameInternal('livingAt');
  }

  QueryBuilder<Profile, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Profile, String, QQueryOperations> nationalIdProperty() {
    return addPropertyNameInternal('nationalId');
  }

  QueryBuilder<Profile, String, QQueryOperations> phoneProperty() {
    return addPropertyNameInternal('phone');
  }

  QueryBuilder<Profile, String?, QQueryOperations> pincodeProperty() {
    return addPropertyNameInternal('pincode');
  }

  QueryBuilder<Profile, String?, QQueryOperations> profilePicProperty() {
    return addPropertyNameInternal('profilePic');
  }

  QueryBuilder<Profile, String?, QQueryOperations> stateProperty() {
    return addPropertyNameInternal('state');
  }

  QueryBuilder<Profile, String, QQueryOperations> vaccinationCodeProperty() {
    return addPropertyNameInternal('vaccinationCode');
  }
}
