import 'package:built_value/built_value.dart';

part 'cart.g.dart';

abstract class Cart implements Built<Cart, CartBuilder> {
  String get parentName;

  int get id;

  int get count;

  int get variationId;

  @nullable
  DateTime get createdAt;

  @nullable
  DateTime get updatedAt;

  int get branchId;

  String get variationName;

  Cart._();
  factory Cart([void Function(CartBuilder) updates]) = _$Cart;
}
