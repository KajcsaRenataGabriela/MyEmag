// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return AppUser$.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get uid => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get pictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) = _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call({String uid, String email, String displayName, String? pictureUrl});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? pictureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$AppUser$CopyWith(_$AppUser$ value, $Res Function(_$AppUser$) then) = __$$AppUser$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String email, String displayName, String? pictureUrl});
}

/// @nodoc
class __$$AppUser$CopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res, _$AppUser$>
    implements _$$AppUser$CopyWith<$Res> {
  __$$AppUser$CopyWithImpl(_$AppUser$ _value, $Res Function(_$AppUser$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = null,
    Object? displayName = null,
    Object? pictureUrl = freezed,
  }) {
    return _then(_$AppUser$(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppUser$ implements AppUser$ {
  const _$AppUser$({required this.uid, required this.email, required this.displayName, this.pictureUrl});

  factory _$AppUser$.fromJson(Map<String, dynamic> json) => _$$AppUser$FromJson(json);

  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String? pictureUrl;

  @override
  String toString() {
    return 'AppUser(uid: $uid, email: $email, displayName: $displayName, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppUser$ &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) || other.displayName == displayName) &&
            (identical(other.pictureUrl, pictureUrl) || other.pictureUrl == pictureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, displayName, pictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppUser$CopyWith<_$AppUser$> get copyWith => __$$AppUser$CopyWithImpl<_$AppUser$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppUser$ToJson(
      this,
    );
  }
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required final String uid,
      required final String email,
      required final String displayName,
      final String? pictureUrl}) = _$AppUser$;

  factory AppUser$.fromJson(Map<String, dynamic> json) = _$AppUser$.fromJson;

  @override
  String get uid;
  @override
  String get email;
  @override
  String get displayName;
  @override
  String? get pictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$AppUser$CopyWith<_$AppUser$> get copyWith => throw _privateConstructorUsedError;
}

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  return AuthState$.fromJson(json);
}

/// @nodoc
mixin _$AuthState {
  AppUser? get user => throw _privateConstructorUsedError;
  Cart get cart => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) = _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AppUser? user, Cart cart});

  $AppUserCopyWith<$Res>? get user;
  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? cart = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CartCopyWith<$Res> get cart {
    return $CartCopyWith<$Res>(_value.cart, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthState$CopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$AuthState$CopyWith(_$AuthState$ value, $Res Function(_$AuthState$) then) =
      __$$AuthState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser? user, Cart cart});

  @override
  $AppUserCopyWith<$Res>? get user;
  @override
  $CartCopyWith<$Res> get cart;
}

/// @nodoc
class __$$AuthState$CopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$AuthState$>
    implements _$$AuthState$CopyWith<$Res> {
  __$$AuthState$CopyWithImpl(_$AuthState$ _value, $Res Function(_$AuthState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? cart = null,
  }) {
    return _then(_$AuthState$(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      cart: null == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as Cart,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthState$ implements AuthState$ {
  const _$AuthState$({this.user, this.cart = const Cart()});

  factory _$AuthState$.fromJson(Map<String, dynamic> json) => _$$AuthState$FromJson(json);

  @override
  final AppUser? user;
  @override
  @JsonKey()
  final Cart cart;

  @override
  String toString() {
    return 'AuthState(user: $user, cart: $cart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthState$ &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, cart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthState$CopyWith<_$AuthState$> get copyWith => __$$AuthState$CopyWithImpl<_$AuthState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthState$ToJson(
      this,
    );
  }
}

abstract class AuthState$ implements AuthState {
  const factory AuthState$({final AppUser? user, final Cart cart}) = _$AuthState$;

  factory AuthState$.fromJson(Map<String, dynamic> json) = _$AuthState$.fromJson;

  @override
  AppUser? get user;
  @override
  Cart get cart;
  @override
  @JsonKey(ignore: true)
  _$$AuthState$CopyWith<_$AuthState$> get copyWith => throw _privateConstructorUsedError;
}

Cart _$CartFromJson(Map<String, dynamic> json) {
  return Cart$.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  List<CartItem> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) = _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call({List<CartItem> items});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Cart$CopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$Cart$CopyWith(_$Cart$ value, $Res Function(_$Cart$) then) = __$$Cart$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartItem> items});
}

/// @nodoc
class __$$Cart$CopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res, _$Cart$> implements _$$Cart$CopyWith<$Res> {
  __$$Cart$CopyWithImpl(_$Cart$ _value, $Res Function(_$Cart$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$Cart$(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Cart$ implements Cart$ {
  const _$Cart$({final List<CartItem> items = const <CartItem>[]}) : _items = items;

  factory _$Cart$.fromJson(Map<String, dynamic> json) => _$$Cart$FromJson(json);

  final List<CartItem> _items;
  @override
  @JsonKey()
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Cart(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Cart$ &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Cart$CopyWith<_$Cart$> get copyWith => __$$Cart$CopyWithImpl<_$Cart$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Cart$ToJson(
      this,
    );
  }
}

abstract class Cart$ implements Cart {
  const factory Cart$({final List<CartItem> items}) = _$Cart$;

  factory Cart$.fromJson(Map<String, dynamic> json) = _$Cart$.fromJson;

  @override
  List<CartItem> get items;
  @override
  @JsonKey(ignore: true)
  _$$Cart$CopyWith<_$Cart$> get copyWith => throw _privateConstructorUsedError;
}

CartItem _$CartItemFromJson(Map<String, dynamic> json) {
  return CartItem$.fromJson(json);
}

/// @nodoc
mixin _$CartItem {
  String get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) = _$CartItemCopyWithImpl<$Res, CartItem>;
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res, $Val extends CartItem> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItem$CopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$$CartItem$CopyWith(_$CartItem$ value, $Res Function(_$CartItem$) then) = __$$CartItem$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, int quantity});
}

/// @nodoc
class __$$CartItem$CopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res, _$CartItem$>
    implements _$$CartItem$CopyWith<$Res> {
  __$$CartItem$CopyWithImpl(_$CartItem$ _value, $Res Function(_$CartItem$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$CartItem$(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItem$ implements CartItem$ {
  const _$CartItem$({required this.productId, required this.quantity});

  factory _$CartItem$.fromJson(Map<String, dynamic> json) => _$$CartItem$FromJson(json);

  @override
  final String productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartItem(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItem$ &&
            (identical(other.productId, productId) || other.productId == productId) &&
            (identical(other.quantity, quantity) || other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItem$CopyWith<_$CartItem$> get copyWith => __$$CartItem$CopyWithImpl<_$CartItem$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItem$ToJson(
      this,
    );
  }
}

abstract class CartItem$ implements CartItem {
  const factory CartItem$({required final String productId, required final int quantity}) = _$CartItem$;

  factory CartItem$.fromJson(Map<String, dynamic> json) = _$CartItem$.fromJson;

  @override
  String get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$CartItem$CopyWith<_$CartItem$> get copyWith => throw _privateConstructorUsedError;
}

ProductsState _$ProductsStateFromJson(Map<String, dynamic> json) {
  return ProductsState$.fromJson(json);
}

/// @nodoc
mixin _$ProductsState {
  Map<String, Product> get products => throw _privateConstructorUsedError;
  List<String> get productIds => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<Vendor> get vendors => throw _privateConstructorUsedError;
  String? get selectedCategoryId => throw _privateConstructorUsedError;
  String? get selectedProductId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsStateCopyWith<ProductsState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {Map<String, Product> products,
      List<String> productIds,
      List<Category> categories,
      List<Vendor> vendors,
      String? selectedCategoryId,
      String? selectedProductId});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState> implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productIds = null,
    Object? categories = null,
    Object? vendors = null,
    Object? selectedCategoryId = freezed,
    Object? selectedProductId = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<String, Product>,
      productIds: null == productIds
          ? _value.productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      vendors: null == vendors
          ? _value.vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedProductId: freezed == selectedProductId
          ? _value.selectedProductId
          : selectedProductId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsState$CopyWith<$Res> implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsState$CopyWith(_$ProductsState$ value, $Res Function(_$ProductsState$) then) =
      __$$ProductsState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Product> products,
      List<String> productIds,
      List<Category> categories,
      List<Vendor> vendors,
      String? selectedCategoryId,
      String? selectedProductId});
}

/// @nodoc
class __$$ProductsState$CopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res, _$ProductsState$>
    implements _$$ProductsState$CopyWith<$Res> {
  __$$ProductsState$CopyWithImpl(_$ProductsState$ _value, $Res Function(_$ProductsState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productIds = null,
    Object? categories = null,
    Object? vendors = null,
    Object? selectedCategoryId = freezed,
    Object? selectedProductId = freezed,
  }) {
    return _then(_$ProductsState$(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as Map<String, Product>,
      productIds: null == productIds
          ? _value._productIds
          : productIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      vendors: null == vendors
          ? _value._vendors
          : vendors // ignore: cast_nullable_to_non_nullable
              as List<Vendor>,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedProductId: freezed == selectedProductId
          ? _value.selectedProductId
          : selectedProductId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsState$ implements ProductsState$ {
  const _$ProductsState$(
      {final Map<String, Product> products = const <String, Product>{},
      final List<String> productIds = const <String>[],
      final List<Category> categories = const <Category>[],
      final List<Vendor> vendors = const <Vendor>[],
      this.selectedCategoryId,
      this.selectedProductId})
      : _products = products,
        _productIds = productIds,
        _categories = categories,
        _vendors = vendors;

  factory _$ProductsState$.fromJson(Map<String, dynamic> json) => _$$ProductsState$FromJson(json);

  final Map<String, Product> _products;
  @override
  @JsonKey()
  Map<String, Product> get products {
    if (_products is EqualUnmodifiableMapView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_products);
  }

  final List<String> _productIds;
  @override
  @JsonKey()
  List<String> get productIds {
    if (_productIds is EqualUnmodifiableListView) return _productIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productIds);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Vendor> _vendors;
  @override
  @JsonKey()
  List<Vendor> get vendors {
    if (_vendors is EqualUnmodifiableListView) return _vendors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendors);
  }

  @override
  final String? selectedCategoryId;
  @override
  final String? selectedProductId;

  @override
  String toString() {
    return 'ProductsState(products: $products, productIds: $productIds, categories: $categories, vendors: $vendors, selectedCategoryId: $selectedCategoryId, selectedProductId: $selectedProductId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsState$ &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality().equals(other._productIds, _productIds) &&
            const DeepCollectionEquality().equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._vendors, _vendors) &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                other.selectedCategoryId == selectedCategoryId) &&
            (identical(other.selectedProductId, selectedProductId) || other.selectedProductId == selectedProductId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_productIds),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_vendors),
      selectedCategoryId,
      selectedProductId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsState$CopyWith<_$ProductsState$> get copyWith =>
      __$$ProductsState$CopyWithImpl<_$ProductsState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsState$ToJson(
      this,
    );
  }
}

abstract class ProductsState$ implements ProductsState {
  const factory ProductsState$(
      {final Map<String, Product> products,
      final List<String> productIds,
      final List<Category> categories,
      final List<Vendor> vendors,
      final String? selectedCategoryId,
      final String? selectedProductId}) = _$ProductsState$;

  factory ProductsState$.fromJson(Map<String, dynamic> json) = _$ProductsState$.fromJson;

  @override
  Map<String, Product> get products;
  @override
  List<String> get productIds;
  @override
  List<Category> get categories;
  @override
  List<Vendor> get vendors;
  @override
  String? get selectedCategoryId;
  @override
  String? get selectedProductId;
  @override
  @JsonKey(ignore: true)
  _$$ProductsState$CopyWith<_$ProductsState$> get copyWith => throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return Product$.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError; //required List<ProductVariant> variant,
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get categoryId => throw _privateConstructorUsedError;
  String get vendorId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) = _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id, String title, String description, String image, double price, String categoryId, String vendorId});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? price = null,
    Object? categoryId = null,
    Object? vendorId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Product$CopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$Product$CopyWith(_$Product$ value, $Res Function(_$Product$) then) = __$$Product$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String title, String description, String image, double price, String categoryId, String vendorId});
}

/// @nodoc
class __$$Product$CopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res, _$Product$>
    implements _$$Product$CopyWith<$Res> {
  __$$Product$CopyWithImpl(_$Product$ _value, $Res Function(_$Product$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? image = null,
    Object? price = null,
    Object? categoryId = null,
    Object? vendorId = null,
  }) {
    return _then(_$Product$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Product$ implements Product$ {
  const _$Product$(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.price,
      required this.categoryId,
      required this.vendorId});

  factory _$Product$.fromJson(Map<String, dynamic> json) => _$$Product$FromJson(json);

  @override
  final String id;
//required List<ProductVariant> variant,
  @override
  final String title;
  @override
  final String description;
  @override
  final String image;
  @override
  final double price;
  @override
  final String categoryId;
  @override
  final String vendorId;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, image: $image, price: $price, categoryId: $categoryId, vendorId: $vendorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Product$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.categoryId, categoryId) || other.categoryId == categoryId) &&
            (identical(other.vendorId, vendorId) || other.vendorId == vendorId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, image, price, categoryId, vendorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Product$CopyWith<_$Product$> get copyWith => __$$Product$CopyWithImpl<_$Product$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Product$ToJson(
      this,
    );
  }
}

abstract class Product$ implements Product {
  const factory Product$(
      {required final String id,
      required final String title,
      required final String description,
      required final String image,
      required final double price,
      required final String categoryId,
      required final String vendorId}) = _$Product$;

  factory Product$.fromJson(Map<String, dynamic> json) = _$Product$.fromJson;

  @override
  String get id;
  @override //required List<ProductVariant> variant,
  String get title;
  @override
  String get description;
  @override
  String get image;
  @override
  double get price;
  @override
  String get categoryId;
  @override
  String get vendorId;
  @override
  @JsonKey(ignore: true)
  _$$Product$CopyWith<_$Product$> get copyWith => throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return Category$.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) = _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String id, String title, int icon});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Category$CopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$Category$CopyWith(_$Category$ value, $Res Function(_$Category$) then) = __$$Category$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, int icon});
}

/// @nodoc
class __$$Category$CopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res, _$Category$>
    implements _$$Category$CopyWith<$Res> {
  __$$Category$CopyWithImpl(_$Category$ _value, $Res Function(_$Category$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? icon = null,
  }) {
    return _then(_$Category$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Category$ extends Category$ {
  const _$Category$({required this.id, required this.title, required this.icon}) : super._();

  factory _$Category$.fromJson(Map<String, dynamic> json) => _$$Category$FromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int icon;

  @override
  String toString() {
    return 'Category(id: $id, title: $title, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Category$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Category$CopyWith<_$Category$> get copyWith => __$$Category$CopyWithImpl<_$Category$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Category$ToJson(
      this,
    );
  }
}

abstract class Category$ extends Category {
  const factory Category$({required final String id, required final String title, required final int icon}) =
      _$Category$;
  const Category$._() : super._();

  factory Category$.fromJson(Map<String, dynamic> json) = _$Category$.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get icon;
  @override
  @JsonKey(ignore: true)
  _$$Category$CopyWith<_$Category$> get copyWith => throw _privateConstructorUsedError;
}

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return Vendor$.fromJson(json);
}

/// @nodoc
mixin _$Vendor {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorCopyWith<Vendor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorCopyWith<$Res> {
  factory $VendorCopyWith(Vendor value, $Res Function(Vendor) then) = _$VendorCopyWithImpl<$Res, Vendor>;
  @useResult
  $Res call({String id, String name, String image, String description});
}

/// @nodoc
class _$VendorCopyWithImpl<$Res, $Val extends Vendor> implements $VendorCopyWith<$Res> {
  _$VendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Vendor$CopyWith<$Res> implements $VendorCopyWith<$Res> {
  factory _$$Vendor$CopyWith(_$Vendor$ value, $Res Function(_$Vendor$) then) = __$$Vendor$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String image, String description});
}

/// @nodoc
class __$$Vendor$CopyWithImpl<$Res> extends _$VendorCopyWithImpl<$Res, _$Vendor$> implements _$$Vendor$CopyWith<$Res> {
  __$$Vendor$CopyWithImpl(_$Vendor$ _value, $Res Function(_$Vendor$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$Vendor$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Vendor$ implements Vendor$ {
  const _$Vendor$({required this.id, required this.name, required this.image, required this.description});

  factory _$Vendor$.fromJson(Map<String, dynamic> json) => _$$Vendor$FromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final String description;

  @override
  String toString() {
    return 'Vendor(id: $id, name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Vendor$ &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) || other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Vendor$CopyWith<_$Vendor$> get copyWith => __$$Vendor$CopyWithImpl<_$Vendor$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Vendor$ToJson(
      this,
    );
  }
}

abstract class Vendor$ implements Vendor {
  const factory Vendor$(
      {required final String id,
      required final String name,
      required final String image,
      required final String description}) = _$Vendor$;

  factory Vendor$.fromJson(Map<String, dynamic> json) = _$Vendor$.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$Vendor$CopyWith<_$Vendor$> get copyWith => throw _privateConstructorUsedError;
}

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return AppState$.fromJson(json);
}

/// @nodoc
mixin _$AppState {
  AuthState get auth => throw _privateConstructorUsedError;
  Set<String> get pendingActions => throw _privateConstructorUsedError;
  ProductsState get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) = _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({AuthState auth, Set<String> pendingActions, ProductsState products});

  $AuthStateCopyWith<$Res> get auth;
  $ProductsStateCopyWith<$Res> get products;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? pendingActions = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      pendingActions: null == pendingActions
          ? _value.pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductsState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStateCopyWith<$Res> get auth {
    return $AuthStateCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsStateCopyWith<$Res> get products {
    return $ProductsStateCopyWith<$Res>(_value.products, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$$AppState$CopyWith(_$AppState$ value, $Res Function(_$AppState$) then) = __$$AppState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthState auth, Set<String> pendingActions, ProductsState products});

  @override
  $AuthStateCopyWith<$Res> get auth;
  @override
  $ProductsStateCopyWith<$Res> get products;
}

/// @nodoc
class __$$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res, _$AppState$>
    implements _$$AppState$CopyWith<$Res> {
  __$$AppState$CopyWithImpl(_$AppState$ _value, $Res Function(_$AppState$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? pendingActions = null,
    Object? products = null,
  }) {
    return _then(_$AppState$(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      pendingActions: null == pendingActions
          ? _value._pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as ProductsState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.auth = const AuthState(),
      final Set<String> pendingActions = const <String>{},
      this.products = const ProductsState()})
      : _pendingActions = pendingActions;

  factory _$AppState$.fromJson(Map<String, dynamic> json) => _$$AppState$FromJson(json);

  @override
  @JsonKey()
  final AuthState auth;
  final Set<String> _pendingActions;
  @override
  @JsonKey()
  Set<String> get pendingActions {
    if (_pendingActions is EqualUnmodifiableSetView) return _pendingActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_pendingActions);
  }

  @override
  @JsonKey()
  final ProductsState products;

  @override
  String toString() {
    return 'AppState(auth: $auth, pendingActions: $pendingActions, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppState$ &&
            (identical(other.auth, auth) || other.auth == auth) &&
            const DeepCollectionEquality().equals(other._pendingActions, _pendingActions) &&
            (identical(other.products, products) || other.products == products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, auth, const DeepCollectionEquality().hash(_pendingActions), products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppState$CopyWith<_$AppState$> get copyWith => __$$AppState$CopyWithImpl<_$AppState$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppState$ToJson(
      this,
    );
  }
}

abstract class AppState$ implements AppState {
  const factory AppState$({final AuthState auth, final Set<String> pendingActions, final ProductsState products}) =
      _$AppState$;

  factory AppState$.fromJson(Map<String, dynamic> json) = _$AppState$.fromJson;

  @override
  AuthState get auth;
  @override
  Set<String> get pendingActions;
  @override
  ProductsState get products;
  @override
  @JsonKey(ignore: true)
  _$$AppState$CopyWith<_$AppState$> get copyWith => throw _privateConstructorUsedError;
}
