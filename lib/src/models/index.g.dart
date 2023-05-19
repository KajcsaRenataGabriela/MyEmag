// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppUser$ _$$AppUser$FromJson(Map<String, dynamic> json) => _$AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      profileUrl: json['profileUrl'] as String?,
    );

Map<String, dynamic> _$$AppUser$ToJson(_$AppUser$ instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'profileUrl': instance.profileUrl,
    };

_$AuthState$ _$$AuthState$FromJson(Map<String, dynamic> json) => _$AuthState$(
      user: json['user'] == null ? null : AppUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthState$ToJson(_$AuthState$ instance) => <String, dynamic>{
      'user': instance.user,
    };

_$ProductsState$ _$$ProductsState$FromJson(Map<String, dynamic> json) => _$ProductsState$(
      products:
          (json['products'] as List<dynamic>?)?.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Product>[],
      categories:
          (json['categories'] as List<dynamic>?)?.map((e) => Category.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Category>[],
      vendors: (json['vendors'] as List<dynamic>?)?.map((e) => Vendor.fromJson(e as Map<String, dynamic>)).toList() ??
          const <Vendor>[],
      selectedCategoryId: json['selectedCategoryId'] as String?,
    );

Map<String, dynamic> _$$ProductsState$ToJson(_$ProductsState$ instance) => <String, dynamic>{
      'products': instance.products,
      'categories': instance.categories,
      'vendors': instance.vendors,
      'selectedCategoryId': instance.selectedCategoryId,
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

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      auth: json['auth'] == null ? const AuthState() : AuthState.fromJson(json['auth'] as Map<String, dynamic>),
      pendingActions: (json['pendingActions'] as List<dynamic>?)?.map((e) => e as String).toSet() ?? const <String>{},
      products: json['products'] == null
          ? const ProductsState()
          : ProductsState.fromJson(json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'auth': instance.auth,
      'pendingActions': instance.pendingActions.toList(),
      'products': instance.products,
    };
