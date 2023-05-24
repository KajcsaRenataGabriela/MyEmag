part of '../index.dart';

@freezed
class Cart with _$Cart {
  const factory Cart({
    @JsonSerializable(explicitToJson: true) @Default(<CartItem>[]) List<CartItem> items,
  }) = Cart$;

  factory Cart.fromJson(Map<dynamic, dynamic> json) => _$CartFromJson(Map<String, dynamic>.from(json));
}

@freezed
class CartItem with _$CartItem {
  const factory CartItem({
    @JsonSerializable(explicitToJson: true) required String productId,
    required int quantity,
  }) = CartItem$;

  factory CartItem.fromJson(Map<dynamic, dynamic> json) => _$CartItemFromJson(Map<String, dynamic>.from(json));
}
