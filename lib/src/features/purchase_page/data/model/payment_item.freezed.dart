// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentItem _$PaymentItemFromJson(Map<String, dynamic> json) {
  return _PaymentItem.fromJson(json);
}

/// @nodoc
mixin _$PaymentItem {
  @JsonKey(name: "order_id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_url")
  String get paymentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "settlement")
  int get settlement => throw _privateConstructorUsedError;
  @JsonKey(name: "expired_at")
  int get expiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  int get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentItemCopyWith<PaymentItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentItemCopyWith<$Res> {
  factory $PaymentItemCopyWith(
          PaymentItem value, $Res Function(PaymentItem) then) =
      _$PaymentItemCopyWithImpl<$Res, PaymentItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "payment_url") String paymentUrl,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "settlement") int settlement,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "updated_at") int updatedAt,
      @JsonKey(name: "created_at") int createdAt});
}

/// @nodoc
class _$PaymentItemCopyWithImpl<$Res, $Val extends PaymentItem>
    implements $PaymentItemCopyWith<$Res> {
  _$PaymentItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? userId = null,
    Object? status = null,
    Object? paymentUrl = null,
    Object? paymentMethod = null,
    Object? settlement = null,
    Object? expiredAt = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: null == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentItemImplCopyWith<$Res>
    implements $PaymentItemCopyWith<$Res> {
  factory _$$PaymentItemImplCopyWith(
          _$PaymentItemImpl value, $Res Function(_$PaymentItemImpl) then) =
      __$$PaymentItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "payment_url") String paymentUrl,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "settlement") int settlement,
      @JsonKey(name: "expired_at") int expiredAt,
      @JsonKey(name: "updated_at") int updatedAt,
      @JsonKey(name: "created_at") int createdAt});
}

/// @nodoc
class __$$PaymentItemImplCopyWithImpl<$Res>
    extends _$PaymentItemCopyWithImpl<$Res, _$PaymentItemImpl>
    implements _$$PaymentItemImplCopyWith<$Res> {
  __$$PaymentItemImplCopyWithImpl(
      _$PaymentItemImpl _value, $Res Function(_$PaymentItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? userId = null,
    Object? status = null,
    Object? paymentUrl = null,
    Object? paymentMethod = null,
    Object? settlement = null,
    Object? expiredAt = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$PaymentItemImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: null == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as int,
      expiredAt: null == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentItemImpl implements _PaymentItem {
  const _$PaymentItemImpl(
      {@JsonKey(name: "order_id") this.orderId = "",
      @JsonKey(name: "user_id") this.userId = "",
      @JsonKey(name: "status") this.status = "",
      @JsonKey(name: "payment_url") this.paymentUrl = "",
      @JsonKey(name: "payment_method") this.paymentMethod = "",
      @JsonKey(name: "settlement") this.settlement = 0,
      @JsonKey(name: "expired_at") this.expiredAt = 0,
      @JsonKey(name: "updated_at") this.updatedAt = 0,
      @JsonKey(name: "created_at") this.createdAt = 0});

  factory _$PaymentItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentItemImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final String orderId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "payment_url")
  final String paymentUrl;
  @override
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @override
  @JsonKey(name: "settlement")
  final int settlement;
  @override
  @JsonKey(name: "expired_at")
  final int expiredAt;
  @override
  @JsonKey(name: "updated_at")
  final int updatedAt;
  @override
  @JsonKey(name: "created_at")
  final int createdAt;

  @override
  String toString() {
    return 'PaymentItem(orderId: $orderId, userId: $userId, status: $status, paymentUrl: $paymentUrl, paymentMethod: $paymentMethod, settlement: $settlement, expiredAt: $expiredAt, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentItemImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.settlement, settlement) ||
                other.settlement == settlement) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orderId, userId, status,
      paymentUrl, paymentMethod, settlement, expiredAt, updatedAt, createdAt);

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentItemImplCopyWith<_$PaymentItemImpl> get copyWith =>
      __$$PaymentItemImplCopyWithImpl<_$PaymentItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentItemImplToJson(
      this,
    );
  }
}

abstract class _PaymentItem implements PaymentItem {
  const factory _PaymentItem(
      {@JsonKey(name: "order_id") final String orderId,
      @JsonKey(name: "user_id") final String userId,
      @JsonKey(name: "status") final String status,
      @JsonKey(name: "payment_url") final String paymentUrl,
      @JsonKey(name: "payment_method") final String paymentMethod,
      @JsonKey(name: "settlement") final int settlement,
      @JsonKey(name: "expired_at") final int expiredAt,
      @JsonKey(name: "updated_at") final int updatedAt,
      @JsonKey(name: "created_at") final int createdAt}) = _$PaymentItemImpl;

  factory _PaymentItem.fromJson(Map<String, dynamic> json) =
      _$PaymentItemImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  String get orderId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "payment_url")
  String get paymentUrl;
  @override
  @JsonKey(name: "payment_method")
  String get paymentMethod;
  @override
  @JsonKey(name: "settlement")
  int get settlement;
  @override
  @JsonKey(name: "expired_at")
  int get expiredAt;
  @override
  @JsonKey(name: "updated_at")
  int get updatedAt;
  @override
  @JsonKey(name: "created_at")
  int get createdAt;

  /// Create a copy of PaymentItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentItemImplCopyWith<_$PaymentItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchaseMod _$PurchaseModFromJson(Map<String, dynamic> json) {
  return _PurchaseMod.fromJson(json);
}

/// @nodoc
mixin _$PurchaseMod {
  List<PaymentItem> get result => throw _privateConstructorUsedError;

  /// Serializes this PurchaseMod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseModCopyWith<PurchaseMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseModCopyWith<$Res> {
  factory $PurchaseModCopyWith(
          PurchaseMod value, $Res Function(PurchaseMod) then) =
      _$PurchaseModCopyWithImpl<$Res, PurchaseMod>;
  @useResult
  $Res call({List<PaymentItem> result});
}

/// @nodoc
class _$PurchaseModCopyWithImpl<$Res, $Val extends PurchaseMod>
    implements $PurchaseModCopyWith<$Res> {
  _$PurchaseModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PaymentItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseModImplCopyWith<$Res>
    implements $PurchaseModCopyWith<$Res> {
  factory _$$PurchaseModImplCopyWith(
          _$PurchaseModImpl value, $Res Function(_$PurchaseModImpl) then) =
      __$$PurchaseModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentItem> result});
}

/// @nodoc
class __$$PurchaseModImplCopyWithImpl<$Res>
    extends _$PurchaseModCopyWithImpl<$Res, _$PurchaseModImpl>
    implements _$$PurchaseModImplCopyWith<$Res> {
  __$$PurchaseModImplCopyWithImpl(
      _$PurchaseModImpl _value, $Res Function(_$PurchaseModImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$PurchaseModImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PaymentItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseModImpl implements _PurchaseMod {
  _$PurchaseModImpl({final List<PaymentItem> result = const []})
      : _result = result;

  factory _$PurchaseModImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseModImplFromJson(json);

  final List<PaymentItem> _result;
  @override
  @JsonKey()
  List<PaymentItem> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'PurchaseMod(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseModImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of PurchaseMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseModImplCopyWith<_$PurchaseModImpl> get copyWith =>
      __$$PurchaseModImplCopyWithImpl<_$PurchaseModImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseModImplToJson(
      this,
    );
  }
}

abstract class _PurchaseMod implements PurchaseMod {
  factory _PurchaseMod({final List<PaymentItem> result}) = _$PurchaseModImpl;

  factory _PurchaseMod.fromJson(Map<String, dynamic> json) =
      _$PurchaseModImpl.fromJson;

  @override
  List<PaymentItem> get result;

  /// Create a copy of PurchaseMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseModImplCopyWith<_$PurchaseModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
