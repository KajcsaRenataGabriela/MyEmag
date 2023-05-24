part of '../index.dart';

enum OrderStatus {
  submitted,
  shipped,
  received,
}

@freezed
class Order with _$Order implements Comparable<Order> {
  const factory Order({
    @JsonSerializable(explicitToJson: true) required String id,
    required String uid,
    required Cart cart,
    @Default(<Product>[]) List<Product> products,
    required DateTime createdAt,
    @Default(OrderStatus.submitted) OrderStatus status,
  }) = Order$;

  factory Order.fromJson(Map<dynamic, dynamic> json) => _$OrderFromJson(Map<String, dynamic>.from(json));

  const Order._();

  @override
  int compareTo(Order other) {
    return other.createdAt.compareTo(createdAt);
  }
}
