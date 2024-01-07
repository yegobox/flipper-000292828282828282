// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imported_item.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetImportedItemCollection on Isar {
  IsarCollection<String, ImportedItem> get importedItems => this.collection();
}

const ImportedItemSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'ImportedItem',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'dclDate',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'id',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'unit',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'branchId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'isTaxExempted',
        type: IsarType.bool,
      ),
      IsarPropertySchema(
        name: 'itemSeq',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'dclNo',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'taskCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'hsCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'itemNm',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'itemClCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'itemCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'imptItemsttsCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'orgnNatCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'exptNatCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'pkg',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'pkgUnitCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'qty',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'qtyUnitCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'totWt',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'netWt',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'spplrNm',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'agntNm',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'invcFcurAmt',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'invcFcurCd',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'invcFcurExcrt',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'tin',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'bhfId',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'rsdQty',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'lastTouched',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'deletedAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'action',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<String, ImportedItem>(
    serialize: serializeImportedItem,
    deserialize: deserializeImportedItem,
    deserializeProperty: deserializeImportedItemProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeImportedItem(IsarWriter writer, ImportedItem object) {
  IsarCore.writeLong(writer, 1,
      object.dclDate?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeString(writer, 2, object.id);
  IsarCore.writeString(writer, 3, object.unit);
  IsarCore.writeLong(writer, 4, object.branchId);
  IsarCore.writeBool(writer, 5, object.isTaxExempted);
  IsarCore.writeLong(writer, 6, object.itemSeq ?? -9223372036854775808);
  {
    final value = object.dclNo;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      IsarCore.writeString(writer, 7, value);
    }
  }
  {
    final value = object.taskCd;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      IsarCore.writeString(writer, 8, value);
    }
  }
  {
    final value = object.hsCd;
    if (value == null) {
      IsarCore.writeNull(writer, 9);
    } else {
      IsarCore.writeString(writer, 9, value);
    }
  }
  {
    final value = object.itemNm;
    if (value == null) {
      IsarCore.writeNull(writer, 10);
    } else {
      IsarCore.writeString(writer, 10, value);
    }
  }
  {
    final value = object.itemClCd;
    if (value == null) {
      IsarCore.writeNull(writer, 11);
    } else {
      IsarCore.writeString(writer, 11, value);
    }
  }
  {
    final value = object.itemCd;
    if (value == null) {
      IsarCore.writeNull(writer, 12);
    } else {
      IsarCore.writeString(writer, 12, value);
    }
  }
  {
    final value = object.imptItemsttsCd;
    if (value == null) {
      IsarCore.writeNull(writer, 13);
    } else {
      IsarCore.writeString(writer, 13, value);
    }
  }
  {
    final value = object.orgnNatCd;
    if (value == null) {
      IsarCore.writeNull(writer, 14);
    } else {
      IsarCore.writeString(writer, 14, value);
    }
  }
  {
    final value = object.exptNatCd;
    if (value == null) {
      IsarCore.writeNull(writer, 15);
    } else {
      IsarCore.writeString(writer, 15, value);
    }
  }
  IsarCore.writeLong(writer, 16, object.pkg ?? -9223372036854775808);
  {
    final value = object.pkgUnitCd;
    if (value == null) {
      IsarCore.writeNull(writer, 17);
    } else {
      IsarCore.writeString(writer, 17, value);
    }
  }
  IsarCore.writeLong(writer, 18, object.qty ?? -9223372036854775808);
  {
    final value = object.qtyUnitCd;
    if (value == null) {
      IsarCore.writeNull(writer, 19);
    } else {
      IsarCore.writeString(writer, 19, value);
    }
  }
  IsarCore.writeDouble(writer, 20, object.totWt ?? double.nan);
  IsarCore.writeDouble(writer, 21, object.netWt ?? double.nan);
  {
    final value = object.spplrNm;
    if (value == null) {
      IsarCore.writeNull(writer, 22);
    } else {
      IsarCore.writeString(writer, 22, value);
    }
  }
  {
    final value = object.agntNm;
    if (value == null) {
      IsarCore.writeNull(writer, 23);
    } else {
      IsarCore.writeString(writer, 23, value);
    }
  }
  IsarCore.writeDouble(writer, 24, object.invcFcurAmt ?? double.nan);
  {
    final value = object.invcFcurCd;
    if (value == null) {
      IsarCore.writeNull(writer, 25);
    } else {
      IsarCore.writeString(writer, 25, value);
    }
  }
  IsarCore.writeDouble(writer, 26, object.invcFcurExcrt ?? double.nan);
  IsarCore.writeLong(writer, 27, object.tin ?? -9223372036854775808);
  {
    final value = object.bhfId;
    if (value == null) {
      IsarCore.writeNull(writer, 28);
    } else {
      IsarCore.writeString(writer, 28, value);
    }
  }
  IsarCore.writeDouble(writer, 29, object.rsdQty ?? double.nan);
  IsarCore.writeLong(
      writer,
      30,
      object.lastTouched?.toUtc().microsecondsSinceEpoch ??
          -9223372036854775808);
  IsarCore.writeLong(writer, 31,
      object.deletedAt?.toUtc().microsecondsSinceEpoch ?? -9223372036854775808);
  IsarCore.writeString(writer, 32, object.action);
  return Isar.fastHash(object.id);
}

@isarProtected
ImportedItem deserializeImportedItem(IsarReader reader) {
  final DateTime? _dclDate;
  {
    final value = IsarCore.readLong(reader, 1);
    if (value == -9223372036854775808) {
      _dclDate = null;
    } else {
      _dclDate =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final int _branchId;
  _branchId = IsarCore.readLong(reader, 4);
  final int? _itemSeq;
  {
    final value = IsarCore.readLong(reader, 6);
    if (value == -9223372036854775808) {
      _itemSeq = null;
    } else {
      _itemSeq = value;
    }
  }
  final String? _dclNo;
  _dclNo = IsarCore.readString(reader, 7);
  final String? _hsCd;
  _hsCd = IsarCore.readString(reader, 9);
  final String? _itemNm;
  _itemNm = IsarCore.readString(reader, 10);
  final String? _imptItemsttsCd;
  _imptItemsttsCd = IsarCore.readString(reader, 13);
  final String? _orgnNatCd;
  _orgnNatCd = IsarCore.readString(reader, 14);
  final String? _exptNatCd;
  _exptNatCd = IsarCore.readString(reader, 15);
  final int? _pkg;
  {
    final value = IsarCore.readLong(reader, 16);
    if (value == -9223372036854775808) {
      _pkg = null;
    } else {
      _pkg = value;
    }
  }
  final String? _pkgUnitCd;
  _pkgUnitCd = IsarCore.readString(reader, 17);
  final int? _qty;
  {
    final value = IsarCore.readLong(reader, 18);
    if (value == -9223372036854775808) {
      _qty = null;
    } else {
      _qty = value;
    }
  }
  final String? _qtyUnitCd;
  _qtyUnitCd = IsarCore.readString(reader, 19);
  final double? _totWt;
  {
    final value = IsarCore.readDouble(reader, 20);
    if (value.isNaN) {
      _totWt = null;
    } else {
      _totWt = value;
    }
  }
  final double? _netWt;
  {
    final value = IsarCore.readDouble(reader, 21);
    if (value.isNaN) {
      _netWt = null;
    } else {
      _netWt = value;
    }
  }
  final String? _spplrNm;
  _spplrNm = IsarCore.readString(reader, 22);
  final String? _agntNm;
  _agntNm = IsarCore.readString(reader, 23);
  final double? _invcFcurAmt;
  {
    final value = IsarCore.readDouble(reader, 24);
    if (value.isNaN) {
      _invcFcurAmt = null;
    } else {
      _invcFcurAmt = value;
    }
  }
  final String? _invcFcurCd;
  _invcFcurCd = IsarCore.readString(reader, 25);
  final double? _invcFcurExcrt;
  {
    final value = IsarCore.readDouble(reader, 26);
    if (value.isNaN) {
      _invcFcurExcrt = null;
    } else {
      _invcFcurExcrt = value;
    }
  }
  final int? _tin;
  {
    final value = IsarCore.readLong(reader, 27);
    if (value == -9223372036854775808) {
      _tin = null;
    } else {
      _tin = value;
    }
  }
  final String? _bhfId;
  _bhfId = IsarCore.readString(reader, 28);
  final DateTime? _lastTouched;
  {
    final value = IsarCore.readLong(reader, 30);
    if (value == -9223372036854775808) {
      _lastTouched = null;
    } else {
      _lastTouched =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = ImportedItem(
    dclDate: _dclDate,
    branchId: _branchId,
    itemSeq: _itemSeq,
    dclNo: _dclNo,
    hsCd: _hsCd,
    itemNm: _itemNm,
    imptItemsttsCd: _imptItemsttsCd,
    orgnNatCd: _orgnNatCd,
    exptNatCd: _exptNatCd,
    pkg: _pkg,
    pkgUnitCd: _pkgUnitCd,
    qty: _qty,
    qtyUnitCd: _qtyUnitCd,
    totWt: _totWt,
    netWt: _netWt,
    spplrNm: _spplrNm,
    agntNm: _agntNm,
    invcFcurAmt: _invcFcurAmt,
    invcFcurCd: _invcFcurCd,
    invcFcurExcrt: _invcFcurExcrt,
    tin: _tin,
    bhfId: _bhfId,
    lastTouched: _lastTouched,
  );
  object.id = IsarCore.readString(reader, 2) ?? '';
  object.unit = IsarCore.readString(reader, 3) ?? '';
  object.isTaxExempted = IsarCore.readBool(reader, 5);
  object.taskCd = IsarCore.readString(reader, 8);
  object.itemClCd = IsarCore.readString(reader, 11);
  object.itemCd = IsarCore.readString(reader, 12);
  {
    final value = IsarCore.readDouble(reader, 29);
    if (value.isNaN) {
      object.rsdQty = null;
    } else {
      object.rsdQty = value;
    }
  }
  {
    final value = IsarCore.readLong(reader, 31);
    if (value == -9223372036854775808) {
      object.deletedAt = null;
    } else {
      object.deletedAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  object.action = IsarCore.readString(reader, 32) ?? '';
  return object;
}

@isarProtected
dynamic deserializeImportedItemProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      {
        final value = IsarCore.readLong(reader, 1);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readLong(reader, 4);
    case 5:
      return IsarCore.readBool(reader, 5);
    case 6:
      {
        final value = IsarCore.readLong(reader, 6);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 7:
      return IsarCore.readString(reader, 7);
    case 8:
      return IsarCore.readString(reader, 8);
    case 9:
      return IsarCore.readString(reader, 9);
    case 10:
      return IsarCore.readString(reader, 10);
    case 11:
      return IsarCore.readString(reader, 11);
    case 12:
      return IsarCore.readString(reader, 12);
    case 13:
      return IsarCore.readString(reader, 13);
    case 14:
      return IsarCore.readString(reader, 14);
    case 15:
      return IsarCore.readString(reader, 15);
    case 16:
      {
        final value = IsarCore.readLong(reader, 16);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 17:
      return IsarCore.readString(reader, 17);
    case 18:
      {
        final value = IsarCore.readLong(reader, 18);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 19:
      return IsarCore.readString(reader, 19);
    case 20:
      {
        final value = IsarCore.readDouble(reader, 20);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 21:
      {
        final value = IsarCore.readDouble(reader, 21);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 22:
      return IsarCore.readString(reader, 22);
    case 23:
      return IsarCore.readString(reader, 23);
    case 24:
      {
        final value = IsarCore.readDouble(reader, 24);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 25:
      return IsarCore.readString(reader, 25);
    case 26:
      {
        final value = IsarCore.readDouble(reader, 26);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 27:
      {
        final value = IsarCore.readLong(reader, 27);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return value;
        }
      }
    case 28:
      return IsarCore.readString(reader, 28);
    case 29:
      {
        final value = IsarCore.readDouble(reader, 29);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 30:
      {
        final value = IsarCore.readLong(reader, 30);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 31:
      {
        final value = IsarCore.readLong(reader, 31);
        if (value == -9223372036854775808) {
          return null;
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 32:
      return IsarCore.readString(reader, 32) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _ImportedItemUpdate {
  bool call({
    required String id,
    DateTime? dclDate,
    String? unit,
    int? branchId,
    bool? isTaxExempted,
    int? itemSeq,
    String? dclNo,
    String? taskCd,
    String? hsCd,
    String? itemNm,
    String? itemClCd,
    String? itemCd,
    String? imptItemsttsCd,
    String? orgnNatCd,
    String? exptNatCd,
    int? pkg,
    String? pkgUnitCd,
    int? qty,
    String? qtyUnitCd,
    double? totWt,
    double? netWt,
    String? spplrNm,
    String? agntNm,
    double? invcFcurAmt,
    String? invcFcurCd,
    double? invcFcurExcrt,
    int? tin,
    String? bhfId,
    double? rsdQty,
    DateTime? lastTouched,
    DateTime? deletedAt,
    String? action,
  });
}

class _ImportedItemUpdateImpl implements _ImportedItemUpdate {
  const _ImportedItemUpdateImpl(this.collection);

  final IsarCollection<String, ImportedItem> collection;

  @override
  bool call({
    required String id,
    Object? dclDate = ignore,
    Object? unit = ignore,
    Object? branchId = ignore,
    Object? isTaxExempted = ignore,
    Object? itemSeq = ignore,
    Object? dclNo = ignore,
    Object? taskCd = ignore,
    Object? hsCd = ignore,
    Object? itemNm = ignore,
    Object? itemClCd = ignore,
    Object? itemCd = ignore,
    Object? imptItemsttsCd = ignore,
    Object? orgnNatCd = ignore,
    Object? exptNatCd = ignore,
    Object? pkg = ignore,
    Object? pkgUnitCd = ignore,
    Object? qty = ignore,
    Object? qtyUnitCd = ignore,
    Object? totWt = ignore,
    Object? netWt = ignore,
    Object? spplrNm = ignore,
    Object? agntNm = ignore,
    Object? invcFcurAmt = ignore,
    Object? invcFcurCd = ignore,
    Object? invcFcurExcrt = ignore,
    Object? tin = ignore,
    Object? bhfId = ignore,
    Object? rsdQty = ignore,
    Object? lastTouched = ignore,
    Object? deletedAt = ignore,
    Object? action = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (dclDate != ignore) 1: dclDate as DateTime?,
          if (unit != ignore) 3: unit as String?,
          if (branchId != ignore) 4: branchId as int?,
          if (isTaxExempted != ignore) 5: isTaxExempted as bool?,
          if (itemSeq != ignore) 6: itemSeq as int?,
          if (dclNo != ignore) 7: dclNo as String?,
          if (taskCd != ignore) 8: taskCd as String?,
          if (hsCd != ignore) 9: hsCd as String?,
          if (itemNm != ignore) 10: itemNm as String?,
          if (itemClCd != ignore) 11: itemClCd as String?,
          if (itemCd != ignore) 12: itemCd as String?,
          if (imptItemsttsCd != ignore) 13: imptItemsttsCd as String?,
          if (orgnNatCd != ignore) 14: orgnNatCd as String?,
          if (exptNatCd != ignore) 15: exptNatCd as String?,
          if (pkg != ignore) 16: pkg as int?,
          if (pkgUnitCd != ignore) 17: pkgUnitCd as String?,
          if (qty != ignore) 18: qty as int?,
          if (qtyUnitCd != ignore) 19: qtyUnitCd as String?,
          if (totWt != ignore) 20: totWt as double?,
          if (netWt != ignore) 21: netWt as double?,
          if (spplrNm != ignore) 22: spplrNm as String?,
          if (agntNm != ignore) 23: agntNm as String?,
          if (invcFcurAmt != ignore) 24: invcFcurAmt as double?,
          if (invcFcurCd != ignore) 25: invcFcurCd as String?,
          if (invcFcurExcrt != ignore) 26: invcFcurExcrt as double?,
          if (tin != ignore) 27: tin as int?,
          if (bhfId != ignore) 28: bhfId as String?,
          if (rsdQty != ignore) 29: rsdQty as double?,
          if (lastTouched != ignore) 30: lastTouched as DateTime?,
          if (deletedAt != ignore) 31: deletedAt as DateTime?,
          if (action != ignore) 32: action as String?,
        }) >
        0;
  }
}

sealed class _ImportedItemUpdateAll {
  int call({
    required List<String> id,
    DateTime? dclDate,
    String? unit,
    int? branchId,
    bool? isTaxExempted,
    int? itemSeq,
    String? dclNo,
    String? taskCd,
    String? hsCd,
    String? itemNm,
    String? itemClCd,
    String? itemCd,
    String? imptItemsttsCd,
    String? orgnNatCd,
    String? exptNatCd,
    int? pkg,
    String? pkgUnitCd,
    int? qty,
    String? qtyUnitCd,
    double? totWt,
    double? netWt,
    String? spplrNm,
    String? agntNm,
    double? invcFcurAmt,
    String? invcFcurCd,
    double? invcFcurExcrt,
    int? tin,
    String? bhfId,
    double? rsdQty,
    DateTime? lastTouched,
    DateTime? deletedAt,
    String? action,
  });
}

class _ImportedItemUpdateAllImpl implements _ImportedItemUpdateAll {
  const _ImportedItemUpdateAllImpl(this.collection);

  final IsarCollection<String, ImportedItem> collection;

  @override
  int call({
    required List<String> id,
    Object? dclDate = ignore,
    Object? unit = ignore,
    Object? branchId = ignore,
    Object? isTaxExempted = ignore,
    Object? itemSeq = ignore,
    Object? dclNo = ignore,
    Object? taskCd = ignore,
    Object? hsCd = ignore,
    Object? itemNm = ignore,
    Object? itemClCd = ignore,
    Object? itemCd = ignore,
    Object? imptItemsttsCd = ignore,
    Object? orgnNatCd = ignore,
    Object? exptNatCd = ignore,
    Object? pkg = ignore,
    Object? pkgUnitCd = ignore,
    Object? qty = ignore,
    Object? qtyUnitCd = ignore,
    Object? totWt = ignore,
    Object? netWt = ignore,
    Object? spplrNm = ignore,
    Object? agntNm = ignore,
    Object? invcFcurAmt = ignore,
    Object? invcFcurCd = ignore,
    Object? invcFcurExcrt = ignore,
    Object? tin = ignore,
    Object? bhfId = ignore,
    Object? rsdQty = ignore,
    Object? lastTouched = ignore,
    Object? deletedAt = ignore,
    Object? action = ignore,
  }) {
    return collection.updateProperties(id, {
      if (dclDate != ignore) 1: dclDate as DateTime?,
      if (unit != ignore) 3: unit as String?,
      if (branchId != ignore) 4: branchId as int?,
      if (isTaxExempted != ignore) 5: isTaxExempted as bool?,
      if (itemSeq != ignore) 6: itemSeq as int?,
      if (dclNo != ignore) 7: dclNo as String?,
      if (taskCd != ignore) 8: taskCd as String?,
      if (hsCd != ignore) 9: hsCd as String?,
      if (itemNm != ignore) 10: itemNm as String?,
      if (itemClCd != ignore) 11: itemClCd as String?,
      if (itemCd != ignore) 12: itemCd as String?,
      if (imptItemsttsCd != ignore) 13: imptItemsttsCd as String?,
      if (orgnNatCd != ignore) 14: orgnNatCd as String?,
      if (exptNatCd != ignore) 15: exptNatCd as String?,
      if (pkg != ignore) 16: pkg as int?,
      if (pkgUnitCd != ignore) 17: pkgUnitCd as String?,
      if (qty != ignore) 18: qty as int?,
      if (qtyUnitCd != ignore) 19: qtyUnitCd as String?,
      if (totWt != ignore) 20: totWt as double?,
      if (netWt != ignore) 21: netWt as double?,
      if (spplrNm != ignore) 22: spplrNm as String?,
      if (agntNm != ignore) 23: agntNm as String?,
      if (invcFcurAmt != ignore) 24: invcFcurAmt as double?,
      if (invcFcurCd != ignore) 25: invcFcurCd as String?,
      if (invcFcurExcrt != ignore) 26: invcFcurExcrt as double?,
      if (tin != ignore) 27: tin as int?,
      if (bhfId != ignore) 28: bhfId as String?,
      if (rsdQty != ignore) 29: rsdQty as double?,
      if (lastTouched != ignore) 30: lastTouched as DateTime?,
      if (deletedAt != ignore) 31: deletedAt as DateTime?,
      if (action != ignore) 32: action as String?,
    });
  }
}

extension ImportedItemUpdate on IsarCollection<String, ImportedItem> {
  _ImportedItemUpdate get update => _ImportedItemUpdateImpl(this);

  _ImportedItemUpdateAll get updateAll => _ImportedItemUpdateAllImpl(this);
}

sealed class _ImportedItemQueryUpdate {
  int call({
    DateTime? dclDate,
    String? unit,
    int? branchId,
    bool? isTaxExempted,
    int? itemSeq,
    String? dclNo,
    String? taskCd,
    String? hsCd,
    String? itemNm,
    String? itemClCd,
    String? itemCd,
    String? imptItemsttsCd,
    String? orgnNatCd,
    String? exptNatCd,
    int? pkg,
    String? pkgUnitCd,
    int? qty,
    String? qtyUnitCd,
    double? totWt,
    double? netWt,
    String? spplrNm,
    String? agntNm,
    double? invcFcurAmt,
    String? invcFcurCd,
    double? invcFcurExcrt,
    int? tin,
    String? bhfId,
    double? rsdQty,
    DateTime? lastTouched,
    DateTime? deletedAt,
    String? action,
  });
}

class _ImportedItemQueryUpdateImpl implements _ImportedItemQueryUpdate {
  const _ImportedItemQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<ImportedItem> query;
  final int? limit;

  @override
  int call({
    Object? dclDate = ignore,
    Object? unit = ignore,
    Object? branchId = ignore,
    Object? isTaxExempted = ignore,
    Object? itemSeq = ignore,
    Object? dclNo = ignore,
    Object? taskCd = ignore,
    Object? hsCd = ignore,
    Object? itemNm = ignore,
    Object? itemClCd = ignore,
    Object? itemCd = ignore,
    Object? imptItemsttsCd = ignore,
    Object? orgnNatCd = ignore,
    Object? exptNatCd = ignore,
    Object? pkg = ignore,
    Object? pkgUnitCd = ignore,
    Object? qty = ignore,
    Object? qtyUnitCd = ignore,
    Object? totWt = ignore,
    Object? netWt = ignore,
    Object? spplrNm = ignore,
    Object? agntNm = ignore,
    Object? invcFcurAmt = ignore,
    Object? invcFcurCd = ignore,
    Object? invcFcurExcrt = ignore,
    Object? tin = ignore,
    Object? bhfId = ignore,
    Object? rsdQty = ignore,
    Object? lastTouched = ignore,
    Object? deletedAt = ignore,
    Object? action = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (dclDate != ignore) 1: dclDate as DateTime?,
      if (unit != ignore) 3: unit as String?,
      if (branchId != ignore) 4: branchId as int?,
      if (isTaxExempted != ignore) 5: isTaxExempted as bool?,
      if (itemSeq != ignore) 6: itemSeq as int?,
      if (dclNo != ignore) 7: dclNo as String?,
      if (taskCd != ignore) 8: taskCd as String?,
      if (hsCd != ignore) 9: hsCd as String?,
      if (itemNm != ignore) 10: itemNm as String?,
      if (itemClCd != ignore) 11: itemClCd as String?,
      if (itemCd != ignore) 12: itemCd as String?,
      if (imptItemsttsCd != ignore) 13: imptItemsttsCd as String?,
      if (orgnNatCd != ignore) 14: orgnNatCd as String?,
      if (exptNatCd != ignore) 15: exptNatCd as String?,
      if (pkg != ignore) 16: pkg as int?,
      if (pkgUnitCd != ignore) 17: pkgUnitCd as String?,
      if (qty != ignore) 18: qty as int?,
      if (qtyUnitCd != ignore) 19: qtyUnitCd as String?,
      if (totWt != ignore) 20: totWt as double?,
      if (netWt != ignore) 21: netWt as double?,
      if (spplrNm != ignore) 22: spplrNm as String?,
      if (agntNm != ignore) 23: agntNm as String?,
      if (invcFcurAmt != ignore) 24: invcFcurAmt as double?,
      if (invcFcurCd != ignore) 25: invcFcurCd as String?,
      if (invcFcurExcrt != ignore) 26: invcFcurExcrt as double?,
      if (tin != ignore) 27: tin as int?,
      if (bhfId != ignore) 28: bhfId as String?,
      if (rsdQty != ignore) 29: rsdQty as double?,
      if (lastTouched != ignore) 30: lastTouched as DateTime?,
      if (deletedAt != ignore) 31: deletedAt as DateTime?,
      if (action != ignore) 32: action as String?,
    });
  }
}

extension ImportedItemQueryUpdate on IsarQuery<ImportedItem> {
  _ImportedItemQueryUpdate get updateFirst =>
      _ImportedItemQueryUpdateImpl(this, limit: 1);

  _ImportedItemQueryUpdate get updateAll => _ImportedItemQueryUpdateImpl(this);
}

class _ImportedItemQueryBuilderUpdateImpl implements _ImportedItemQueryUpdate {
  const _ImportedItemQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<ImportedItem, ImportedItem, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? dclDate = ignore,
    Object? unit = ignore,
    Object? branchId = ignore,
    Object? isTaxExempted = ignore,
    Object? itemSeq = ignore,
    Object? dclNo = ignore,
    Object? taskCd = ignore,
    Object? hsCd = ignore,
    Object? itemNm = ignore,
    Object? itemClCd = ignore,
    Object? itemCd = ignore,
    Object? imptItemsttsCd = ignore,
    Object? orgnNatCd = ignore,
    Object? exptNatCd = ignore,
    Object? pkg = ignore,
    Object? pkgUnitCd = ignore,
    Object? qty = ignore,
    Object? qtyUnitCd = ignore,
    Object? totWt = ignore,
    Object? netWt = ignore,
    Object? spplrNm = ignore,
    Object? agntNm = ignore,
    Object? invcFcurAmt = ignore,
    Object? invcFcurCd = ignore,
    Object? invcFcurExcrt = ignore,
    Object? tin = ignore,
    Object? bhfId = ignore,
    Object? rsdQty = ignore,
    Object? lastTouched = ignore,
    Object? deletedAt = ignore,
    Object? action = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (dclDate != ignore) 1: dclDate as DateTime?,
        if (unit != ignore) 3: unit as String?,
        if (branchId != ignore) 4: branchId as int?,
        if (isTaxExempted != ignore) 5: isTaxExempted as bool?,
        if (itemSeq != ignore) 6: itemSeq as int?,
        if (dclNo != ignore) 7: dclNo as String?,
        if (taskCd != ignore) 8: taskCd as String?,
        if (hsCd != ignore) 9: hsCd as String?,
        if (itemNm != ignore) 10: itemNm as String?,
        if (itemClCd != ignore) 11: itemClCd as String?,
        if (itemCd != ignore) 12: itemCd as String?,
        if (imptItemsttsCd != ignore) 13: imptItemsttsCd as String?,
        if (orgnNatCd != ignore) 14: orgnNatCd as String?,
        if (exptNatCd != ignore) 15: exptNatCd as String?,
        if (pkg != ignore) 16: pkg as int?,
        if (pkgUnitCd != ignore) 17: pkgUnitCd as String?,
        if (qty != ignore) 18: qty as int?,
        if (qtyUnitCd != ignore) 19: qtyUnitCd as String?,
        if (totWt != ignore) 20: totWt as double?,
        if (netWt != ignore) 21: netWt as double?,
        if (spplrNm != ignore) 22: spplrNm as String?,
        if (agntNm != ignore) 23: agntNm as String?,
        if (invcFcurAmt != ignore) 24: invcFcurAmt as double?,
        if (invcFcurCd != ignore) 25: invcFcurCd as String?,
        if (invcFcurExcrt != ignore) 26: invcFcurExcrt as double?,
        if (tin != ignore) 27: tin as int?,
        if (bhfId != ignore) 28: bhfId as String?,
        if (rsdQty != ignore) 29: rsdQty as double?,
        if (lastTouched != ignore) 30: lastTouched as DateTime?,
        if (deletedAt != ignore) 31: deletedAt as DateTime?,
        if (action != ignore) 32: action as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension ImportedItemQueryBuilderUpdate
    on QueryBuilder<ImportedItem, ImportedItem, QOperations> {
  _ImportedItemQueryUpdate get updateFirst =>
      _ImportedItemQueryBuilderUpdateImpl(this, limit: 1);

  _ImportedItemQueryUpdate get updateAll =>
      _ImportedItemQueryBuilderUpdateImpl(this);
}

extension ImportedItemQueryFilter
    on QueryBuilder<ImportedItem, ImportedItem, QFilterCondition> {
  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclDateBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      idLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> unitEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      unitGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      unitGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> unitLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      unitLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> unitBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> unitContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> unitMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      branchIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      branchIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      branchIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      branchIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      branchIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      branchIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      isTaxExemptedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemSeqBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> dclNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> dclNoLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> dclNoBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> dclNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> dclNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> dclNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      dclNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> taskCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> taskCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> taskCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      taskCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> hsCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      hsCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 9));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> hsCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      hsCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      hsCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> hsCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      hsCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> hsCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 9,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      hsCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> hsCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> hsCdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 9,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> hsCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 9,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      hsCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      hsCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 9,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 10));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> itemNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> itemNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 10,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 10,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> itemNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 10,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemNmIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 10,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 11));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 11,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 11,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 11,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemClCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 11,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 12));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> itemCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> itemCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 12,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 12,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> itemCdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 12,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 12,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      itemCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 12,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 13));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 13,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 13,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 13,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 13,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      imptItemsttsCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 13,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 14));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 14,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 14,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 14,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 14,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      orgnNatCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 14,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 15));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 15,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 15,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 15,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      exptNatCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 15,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> pkgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 16));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> pkgEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> pkgLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 16,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> pkgBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 16,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 17));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 17,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 17,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 17,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 17,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      pkgUnitCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 17,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> qtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 18));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 18));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> qtyEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 18,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 18,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 18,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> qtyLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 18,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 18,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> qtyBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 18,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 19));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 19));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 19,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 19,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 19,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 19,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      qtyUnitCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 19,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      totWtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 20));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      totWtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 20));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> totWtEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 20,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      totWtGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 20,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      totWtGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 20,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> totWtLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 20,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      totWtLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 20,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> totWtBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 20,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      netWtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 21));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      netWtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 21));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> netWtEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 21,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      netWtGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 21,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      netWtGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 21,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> netWtLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 21,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      netWtLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 21,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> netWtBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 21,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 22));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 22));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 22,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 22,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 22,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 22,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      spplrNmIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 22,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 23));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 23));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> agntNmEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> agntNmBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 23,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 23,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> agntNmMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 23,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 23,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      agntNmIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 23,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 24));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 24));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 24,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 24,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 24,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 24,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 24,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurAmtBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 24,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 25));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 25));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 25,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 25,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 25,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 25,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurCdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 25,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 26));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 26));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 26,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 26,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 26,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 26,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 26,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      invcFcurExcrtBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 26,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> tinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 27));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      tinIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 27));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> tinEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      tinGreaterThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      tinGreaterThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> tinLessThan(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      tinLessThanOrEqualTo(
    int? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 27,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> tinBetween(
    int? lower,
    int? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 27,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 28));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 28));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> bhfIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> bhfIdLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> bhfIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 28,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> bhfIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> bhfIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 28,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> bhfIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 28,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 28,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      bhfIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 28,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      rsdQtyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 29));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      rsdQtyIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 29));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> rsdQtyEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 29,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      rsdQtyGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 29,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      rsdQtyGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 29,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      rsdQtyLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 29,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      rsdQtyLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 29,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> rsdQtyBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 29,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 30));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 30));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 30,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 30,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 30,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 30,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 30,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      lastTouchedBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 30,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 31));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 31));
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 31,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtGreaterThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 31,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtGreaterThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 31,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtLessThan(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 31,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtLessThanOrEqualTo(
    DateTime? value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 31,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      deletedAtBetween(
    DateTime? lower,
    DateTime? upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 31,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> actionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> actionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 32,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 32,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition> actionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 32,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 32,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterFilterCondition>
      actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 32,
          value: '',
        ),
      );
    });
  }
}

extension ImportedItemQueryObject
    on QueryBuilder<ImportedItem, ImportedItem, QFilterCondition> {}

extension ImportedItemQuerySortBy
    on QueryBuilder<ImportedItem, ImportedItem, QSortBy> {
  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByDclDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByDclDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByUnitDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByIsTaxExempted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      sortByIsTaxExemptedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByDclNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByDclNoDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByTaskCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByTaskCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByHsCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByHsCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        9,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemNmDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        10,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemClCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemClCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        11,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        12,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByItemCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        12,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByImptItemsttsCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        13,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      sortByImptItemsttsCdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        13,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByOrgnNatCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        14,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByOrgnNatCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        14,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByExptNatCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        15,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByExptNatCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        15,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByPkg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByPkgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByPkgUnitCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        17,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByPkgUnitCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        17,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(18);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(18, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByQtyUnitCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        19,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByQtyUnitCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        19,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByTotWt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByTotWtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByNetWt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByNetWtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortBySpplrNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        22,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortBySpplrNmDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        22,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByAgntNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        23,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByAgntNmDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        23,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByInvcFcurAmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      sortByInvcFcurAmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByInvcFcurCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        25,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByInvcFcurCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        25,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByInvcFcurExcrt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(26);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      sortByInvcFcurExcrtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(26, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByTin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(27);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByTinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(27, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByBhfId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        28,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByBhfIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        28,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByRsdQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(29);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByRsdQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(29, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByLastTouched() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(30);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      sortByLastTouchedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(30, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(31);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(31, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        32,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> sortByActionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        32,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension ImportedItemQuerySortThenBy
    on QueryBuilder<ImportedItem, ImportedItem, QSortThenBy> {
  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByDclDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByDclDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByUnitDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByBranchIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByIsTaxExempted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      thenByIsTaxExemptedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByDclNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByDclNoDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByTaskCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByTaskCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByHsCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByHsCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(9, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemNmDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(10, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemClCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemClCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(11, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByItemCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(12, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByImptItemsttsCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      thenByImptItemsttsCdDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(13, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByOrgnNatCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByOrgnNatCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(14, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByExptNatCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByExptNatCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(15, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByPkg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByPkgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(16, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByPkgUnitCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByPkgUnitCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(17, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(18);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(18, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByQtyUnitCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByQtyUnitCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(19, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByTotWt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByTotWtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(20, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByNetWt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByNetWtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(21, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenBySpplrNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenBySpplrNmDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(22, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByAgntNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(23, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByAgntNmDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(23, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByInvcFcurAmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      thenByInvcFcurAmtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(24, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByInvcFcurCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(25, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByInvcFcurCdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(25, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByInvcFcurExcrt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(26);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      thenByInvcFcurExcrtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(26, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByTin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(27);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByTinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(27, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByBhfId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(28, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByBhfIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(28, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByRsdQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(29);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByRsdQtyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(29, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByLastTouched() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(30);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy>
      thenByLastTouchedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(30, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(31);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByDeletedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(31, sort: Sort.desc);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(32, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterSortBy> thenByActionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(32, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension ImportedItemQueryWhereDistinct
    on QueryBuilder<ImportedItem, ImportedItem, QDistinct> {
  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByDclDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct>
      distinctByBranchId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct>
      distinctByIsTaxExempted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByItemSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByDclNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByTaskCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByHsCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(9, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByItemNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(10, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByItemClCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(11, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByItemCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(12, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct>
      distinctByImptItemsttsCd({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(13, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByOrgnNatCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(14, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByExptNatCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(15, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByPkg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(16);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByPkgUnitCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(17, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(18);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByQtyUnitCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(19, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByTotWt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(20);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByNetWt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(21);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctBySpplrNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(22, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByAgntNm(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(23, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct>
      distinctByInvcFcurAmt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(24);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByInvcFcurCd(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(25, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct>
      distinctByInvcFcurExcrt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(26);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByTin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(27);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByBhfId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(28, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByRsdQty() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(29);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct>
      distinctByLastTouched() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(30);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct>
      distinctByDeletedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(31);
    });
  }

  QueryBuilder<ImportedItem, ImportedItem, QAfterDistinct> distinctByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(32, caseSensitive: caseSensitive);
    });
  }
}

extension ImportedItemQueryProperty1
    on QueryBuilder<ImportedItem, ImportedItem, QProperty> {
  QueryBuilder<ImportedItem, DateTime?, QAfterProperty> dclDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ImportedItem, String, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ImportedItem, String, QAfterProperty> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ImportedItem, int, QAfterProperty> branchIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ImportedItem, bool, QAfterProperty> isTaxExemptedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ImportedItem, int?, QAfterProperty> itemSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> dclNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> taskCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> hsCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> itemNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> itemClCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> itemCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> imptItemsttsCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> orgnNatCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> exptNatCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<ImportedItem, int?, QAfterProperty> pkgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> pkgUnitCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<ImportedItem, int?, QAfterProperty> qtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> qtyUnitCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<ImportedItem, double?, QAfterProperty> totWtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<ImportedItem, double?, QAfterProperty> netWtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> spplrNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> agntNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<ImportedItem, double?, QAfterProperty> invcFcurAmtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> invcFcurCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }

  QueryBuilder<ImportedItem, double?, QAfterProperty> invcFcurExcrtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(26);
    });
  }

  QueryBuilder<ImportedItem, int?, QAfterProperty> tinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(27);
    });
  }

  QueryBuilder<ImportedItem, String?, QAfterProperty> bhfIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(28);
    });
  }

  QueryBuilder<ImportedItem, double?, QAfterProperty> rsdQtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(29);
    });
  }

  QueryBuilder<ImportedItem, DateTime?, QAfterProperty> lastTouchedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(30);
    });
  }

  QueryBuilder<ImportedItem, DateTime?, QAfterProperty> deletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(31);
    });
  }

  QueryBuilder<ImportedItem, String, QAfterProperty> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(32);
    });
  }
}

extension ImportedItemQueryProperty2<R>
    on QueryBuilder<ImportedItem, R, QAfterProperty> {
  QueryBuilder<ImportedItem, (R, DateTime?), QAfterProperty> dclDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ImportedItem, (R, String), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ImportedItem, (R, String), QAfterProperty> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ImportedItem, (R, int), QAfterProperty> branchIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ImportedItem, (R, bool), QAfterProperty>
      isTaxExemptedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ImportedItem, (R, int?), QAfterProperty> itemSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> dclNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> taskCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> hsCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> itemNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> itemClCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> itemCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty>
      imptItemsttsCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> orgnNatCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> exptNatCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<ImportedItem, (R, int?), QAfterProperty> pkgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> pkgUnitCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<ImportedItem, (R, int?), QAfterProperty> qtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> qtyUnitCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<ImportedItem, (R, double?), QAfterProperty> totWtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<ImportedItem, (R, double?), QAfterProperty> netWtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> spplrNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> agntNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<ImportedItem, (R, double?), QAfterProperty>
      invcFcurAmtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty>
      invcFcurCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }

  QueryBuilder<ImportedItem, (R, double?), QAfterProperty>
      invcFcurExcrtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(26);
    });
  }

  QueryBuilder<ImportedItem, (R, int?), QAfterProperty> tinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(27);
    });
  }

  QueryBuilder<ImportedItem, (R, String?), QAfterProperty> bhfIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(28);
    });
  }

  QueryBuilder<ImportedItem, (R, double?), QAfterProperty> rsdQtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(29);
    });
  }

  QueryBuilder<ImportedItem, (R, DateTime?), QAfterProperty>
      lastTouchedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(30);
    });
  }

  QueryBuilder<ImportedItem, (R, DateTime?), QAfterProperty>
      deletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(31);
    });
  }

  QueryBuilder<ImportedItem, (R, String), QAfterProperty> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(32);
    });
  }
}

extension ImportedItemQueryProperty3<R1, R2>
    on QueryBuilder<ImportedItem, (R1, R2), QAfterProperty> {
  QueryBuilder<ImportedItem, (R1, R2, DateTime?), QOperations>
      dclDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String), QOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, int), QOperations> branchIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, bool), QOperations>
      isTaxExemptedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, int?), QOperations> itemSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> dclNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> taskCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> hsCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(9);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> itemNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(10);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations>
      itemClCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(11);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> itemCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(12);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations>
      imptItemsttsCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(13);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations>
      orgnNatCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(14);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations>
      exptNatCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(15);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, int?), QOperations> pkgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(16);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations>
      pkgUnitCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(17);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, int?), QOperations> qtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(18);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations>
      qtyUnitCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(19);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, double?), QOperations> totWtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(20);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, double?), QOperations> netWtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(21);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> spplrNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(22);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> agntNmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(23);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, double?), QOperations>
      invcFcurAmtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(24);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations>
      invcFcurCdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(25);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, double?), QOperations>
      invcFcurExcrtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(26);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, int?), QOperations> tinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(27);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String?), QOperations> bhfIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(28);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, double?), QOperations> rsdQtyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(29);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, DateTime?), QOperations>
      lastTouchedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(30);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, DateTime?), QOperations>
      deletedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(31);
    });
  }

  QueryBuilder<ImportedItem, (R1, R2, String), QOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(32);
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportedItem _$ImportedItemFromJson(Map<String, dynamic> json) => ImportedItem(
      itemNm: json['itemNm'] as String?,
      dclDate: ImportedItem._dateTimeFromJson(json['dclDate'] as String?),
      branchId: json['branchId'] as int,
      itemSeq: json['itemSeq'] as int?,
      dclNo: json['dclNo'] as String?,
      hsCd: json['hsCd'] as String?,
      imptItemsttsCd: json['imptItemsttsCd'] as String?,
      orgnNatCd: json['orgnNatCd'] as String?,
      exptNatCd: json['exptNatCd'] as String?,
      pkg: json['pkg'] as int?,
      pkgUnitCd: json['pkgUnitCd'] as String?,
      qty: json['qty'] as int?,
      qtyUnitCd: json['qtyUnitCd'] as String?,
      totWt: (json['totWt'] as num?)?.toDouble(),
      netWt: (json['netWt'] as num?)?.toDouble(),
      spplrNm: json['spplrNm'] as String?,
      agntNm: json['agntNm'] as String?,
      invcFcurAmt: (json['invcFcurAmt'] as num?)?.toDouble(),
      invcFcurCd: json['invcFcurCd'] as String?,
      invcFcurExcrt: (json['invcFcurExcrt'] as num?)?.toDouble(),
      tin: json['tin'] as int?,
      bhfId: json['bhfId'] as String?,
      lastTouched: json['lastTouched'] == null
          ? null
          : DateTime.parse(json['lastTouched'] as String),
    )
      ..deletedAt = json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String)
      ..action = json['action'] as String
      ..id = json['id'] as String
      ..unit = json['unit'] as String
      ..isTaxExempted = json['isTaxExempted'] as bool
      ..taskCd = json['taskCd'] as String?
      ..itemClCd = json['itemClCd'] as String?
      ..itemCd = json['itemCd'] as String?
      ..rsdQty = (json['rsdQty'] as num?)?.toDouble();

Map<String, dynamic> _$ImportedItemToJson(ImportedItem instance) =>
    <String, dynamic>{
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'action': instance.action,
      'dclDate': ImportedItem._dateTimeToJson(instance.dclDate),
      'id': instance.id,
      'unit': instance.unit,
      'branchId': instance.branchId,
      'isTaxExempted': instance.isTaxExempted,
      'itemSeq': instance.itemSeq,
      'dclNo': instance.dclNo,
      'taskCd': instance.taskCd,
      'hsCd': instance.hsCd,
      'itemNm': instance.itemNm,
      'itemClCd': instance.itemClCd,
      'itemCd': instance.itemCd,
      'imptItemsttsCd': instance.imptItemsttsCd,
      'orgnNatCd': instance.orgnNatCd,
      'exptNatCd': instance.exptNatCd,
      'pkg': instance.pkg,
      'pkgUnitCd': instance.pkgUnitCd,
      'qty': instance.qty,
      'qtyUnitCd': instance.qtyUnitCd,
      'totWt': instance.totWt,
      'netWt': instance.netWt,
      'spplrNm': instance.spplrNm,
      'agntNm': instance.agntNm,
      'invcFcurAmt': instance.invcFcurAmt,
      'invcFcurCd': instance.invcFcurCd,
      'invcFcurExcrt': instance.invcFcurExcrt,
      'tin': instance.tin,
      'bhfId': instance.bhfId,
      'rsdQty': instance.rsdQty,
      'lastTouched': instance.lastTouched?.toIso8601String(),
    };

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
