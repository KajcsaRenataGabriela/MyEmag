// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      pictureUrl: json['pictureUrl'] as String?,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'pictureUrl': instance.pictureUrl,
    };

_$AuthState$ _$$AuthState$FromJson(Map<String, dynamic> json) => _$AuthState$(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
      cart: json['cart'] == null ? const Cart() : Cart.fromJson(json['cart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthState$ToJson(_$AuthState$ instance) => <String, dynamic>{
      'user': instance.user,
      'cart': instance.cart,
    };

_$Cart$ _$$Cart$FromJson(Map<String, dynamic> json) => _$Cart$(
      items: (json['items'] as List<dynamic>?)?.map((e) => CartItem.fromJson(e as Map<String, dynamic>)).toList() ??
          const <CartItem>[],
    );

Map<String, dynamic> _$$Cart$ToJson(_$Cart$ instance) => <String, dynamic>{
      'items': instance.items,
    };

_$CartItem$ _$$CartItem$FromJson(Map<String, dynamic> json) => _$CartItem$(
      productId: json['productId'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$CartItem$ToJson(_$CartItem$ instance) => <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };

_$ProductsState$ _$$ProductsState$FromJson(Map<String, dynamic> json) => _$ProductsState$(
      products: (json['products'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Product.fromJson(e as Map<String, dynamic>)),
          ) ??
          const <String, Product>{},
      productIds: (json['productIds'] as List<dynamic>?)?.map((e) => e as String).toList() ?? const <String>[],
      categories:
          (json['categories'] as List<dynamic>?)?.map((e) => Category.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Category>[],
      vendors: (json['vendors'] as List<dynamic>?)?.map((e) => Vendor.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Vendor>[],
      selectedCategoryId: json['selectedCategoryId'] as String?,
      selectedProductId: json['selectedProductId'] as String?,
    );

Map<String, dynamic> _$$ProductsState$ToJson(_$ProductsState$ instance) => <String, dynamic>{
      'products': instance.products,
      'productIds': instance.productIds,
      'categories': instance.categories,
      'vendors': instance.vendors,
      'selectedCategoryId': instance.selectedCategoryId,
      'selectedProductId': instance.selectedProductId,
    };

_$Product$ _$$Product$FromJson(Map<String, dynamic> json) => _$Product$(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      price: (json['price'] as num).toDouble(),
      categoryId: json['categoryId'] as String,
      vendorId: json['vendorId'] as String,
    );

Map<String, dynamic> _$$Product$ToJson(_$Product$ instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'vendorId': instance.vendorId,
    };

_$Category$ _$$Category$FromJson(Map<String, dynamic> json) => _$Category$(
      id: json['id'] as String,
      title: json['title'] as String,
      icon: json['icon'] as int,
    );

Map<String, dynamic> _$$Category$ToJson(_$Category$ instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon': instance.icon,
    };

_$Vendor$ _$$Vendor$FromJson(Map<String, dynamic> json) => _$Vendor$(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$Vendor$ToJson(_$Vendor$ instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
    };

_$Order$ _$$Order$FromJson(Map<String, dynamic> json) => _$Order$(
      id: json['id'] as String,
      uid: json['uid'] as String,
      cart: Cart.fromJson(json['cart'] as Map<String, dynamic>),
      products:
          (json['products'] as List<dynamic>?)?.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Product>[],
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: $enumDecodeNullable(_$OrderStatusEnumMap, json['status']) ?? OrderStatus.submitted,
    );

Map<String, dynamic> _$$Order$ToJson(_$Order$ instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'cart': instance.cart,
      'products': instance.products,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': _$OrderStatusEnumMap[instance.status]!,
    };

const _$OrderStatusEnumMap = {
  OrderStatus.submitted: 'submitted',
  OrderStatus.shipped: 'shipped',
  OrderStatus.received: 'received',
};

_$OrdersState$ _$$OrdersState$FromJson(Map<String, dynamic> json) => _$OrdersState$(
      orders: (json['orders'] as List<dynamic>?)?.map((e) => Order.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Order>[],
    );

Map<String, dynamic> _$$OrdersState$ToJson(_$OrdersState$ instance) => <String, dynamic>{
      'orders': instance.orders,
    };

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      pendingActions: (json['pendingActions'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? const <String>{},
      products: json['products'] == null
          ? const ProductsState()
          : ProductsState.fromJson(json['products'] as Map<String, dynamic>),
      order: json['order'] == null ? const OrdersState() : OrdersState.fromJson(json['order'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'auth': instance.auth,
      'pendingActions': instance.pendingActions.toList(),
      'products': instance.products,
      'order': instance.order,
    };
