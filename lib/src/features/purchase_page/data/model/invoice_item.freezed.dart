// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) {
  return _InvoiceItem.fromJson(json);
}

/// @nodoc
mixin _$InvoiceItem {
  @JsonKey(name: "invoice_id")
  String get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: "order_id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "invoice_url")
  String get invoiceUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_method")
  String get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: "settlement")
  int get settlement => throw _privateConstructorUsedError;
  @JsonKey(name: "ref")
  String get ref => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  int get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this InvoiceItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InvoiceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InvoiceItemCopyWith<InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemCopyWith<$Res> {
  factory $InvoiceItemCopyWith(
          InvoiceItem value, $Res Function(InvoiceItem) then) =
      _$InvoiceItemCopyWithImpl<$Res, InvoiceItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "invoice_id") String invoiceId,
      @JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "invoice_url") String invoiceUrl,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "settlement") int settlement,
      @JsonKey(name: "ref") String ref,
      @JsonKey(name: "updated_at") int updatedAt,
      @JsonKey(name: "created_at") int createdAt});
}

/// @nodoc
class _$InvoiceItemCopyWithImpl<$Res, $Val extends InvoiceItem>
    implements $InvoiceItemCopyWith<$Res> {
  _$InvoiceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? orderId = null,
    Object? userId = null,
    Object? invoiceUrl = null,
    Object? paymentMethod = null,
    Object? settlement = null,
    Object? ref = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceUrl: null == invoiceUrl
          ? _value.invoiceUrl
          : invoiceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: null == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as int,
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$InvoiceItemImplCopyWith<$Res>
    implements $InvoiceItemCopyWith<$Res> {
  factory _$$InvoiceItemImplCopyWith(
          _$InvoiceItemImpl value, $Res Function(_$InvoiceItemImpl) then) =
      __$$InvoiceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "invoice_id") String invoiceId,
      @JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "invoice_url") String invoiceUrl,
      @JsonKey(name: "payment_method") String paymentMethod,
      @JsonKey(name: "settlement") int settlement,
      @JsonKey(name: "ref") String ref,
      @JsonKey(name: "updated_at") int updatedAt,
      @JsonKey(name: "created_at") int createdAt});
}

/// @nodoc
class __$$InvoiceItemImplCopyWithImpl<$Res>
    extends _$InvoiceItemCopyWithImpl<$Res, _$InvoiceItemImpl>
    implements _$$InvoiceItemImplCopyWith<$Res> {
  __$$InvoiceItemImplCopyWithImpl(
      _$InvoiceItemImpl _value, $Res Function(_$InvoiceItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoiceId = null,
    Object? orderId = null,
    Object? userId = null,
    Object? invoiceUrl = null,
    Object? paymentMethod = null,
    Object? settlement = null,
    Object? ref = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$InvoiceItemImpl(
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceUrl: null == invoiceUrl
          ? _value.invoiceUrl
          : invoiceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      settlement: null == settlement
          ? _value.settlement
          : settlement // ignore: cast_nullable_to_non_nullable
              as int,
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$InvoiceItemImpl implements _InvoiceItem {
  _$InvoiceItemImpl(
      {@JsonKey(name: "invoice_id") this.invoiceId = "",
      @JsonKey(name: "order_id") this.orderId = "",
      @JsonKey(name: "user_id") this.userId = "",
      @JsonKey(name: "invoice_url") this.invoiceUrl = "",
      @JsonKey(name: "payment_method") this.paymentMethod = "",
      @JsonKey(name: "settlement") this.settlement = 0,
      @JsonKey(name: "ref") this.ref = "",
      @JsonKey(name: "updated_at") this.updatedAt = 0,
      @JsonKey(name: "created_at") this.createdAt = 0});

  factory _$InvoiceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceItemImplFromJson(json);

  @override
  @JsonKey(name: "invoice_id")
  final String invoiceId;
  @override
  @JsonKey(name: "order_id")
  final String orderId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "invoice_url")
  final String invoiceUrl;
  @override
  @JsonKey(name: "payment_method")
  final String paymentMethod;
  @override
  @JsonKey(name: "settlement")
  final int settlement;
  @override
  @JsonKey(name: "ref")
  final String ref;
  @override
  @JsonKey(name: "updated_at")
  final int updatedAt;
  @override
  @JsonKey(name: "created_at")
  final int createdAt;

  @override
  String toString() {
    return 'InvoiceItem(invoiceId: $invoiceId, orderId: $orderId, userId: $userId, invoiceUrl: $invoiceUrl, paymentMethod: $paymentMethod, settlement: $settlement, ref: $ref, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceItemImpl &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.invoiceUrl, invoiceUrl) ||
                other.invoiceUrl == invoiceUrl) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.settlement, settlement) ||
                other.settlement == settlement) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, invoiceId, orderId, userId,
      invoiceUrl, paymentMethod, settlement, ref, updatedAt, createdAt);

  /// Create a copy of InvoiceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceItemImplCopyWith<_$InvoiceItemImpl> get copyWith =>
      __$$InvoiceItemImplCopyWithImpl<_$InvoiceItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceItemImplToJson(
      this,
    );
  }
}

abstract class _InvoiceItem implements InvoiceItem {
  factory _InvoiceItem(
      {@JsonKey(name: "invoice_id") final String invoiceId,
      @JsonKey(name: "order_id") final String orderId,
      @JsonKey(name: "user_id") final String userId,
      @JsonKey(name: "invoice_url") final String invoiceUrl,
      @JsonKey(name: "payment_method") final String paymentMethod,
      @JsonKey(name: "settlement") final int settlement,
      @JsonKey(name: "ref") final String ref,
      @JsonKey(name: "updated_at") final int updatedAt,
      @JsonKey(name: "created_at") final int createdAt}) = _$InvoiceItemImpl;

  factory _InvoiceItem.fromJson(Map<String, dynamic> json) =
      _$InvoiceItemImpl.fromJson;

  @override
  @JsonKey(name: "invoice_id")
  String get invoiceId;
  @override
  @JsonKey(name: "order_id")
  String get orderId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "invoice_url")
  String get invoiceUrl;
  @override
  @JsonKey(name: "payment_method")
  String get paymentMethod;
  @override
  @JsonKey(name: "settlement")
  int get settlement;
  @override
  @JsonKey(name: "ref")
  String get ref;
  @override
  @JsonKey(name: "updated_at")
  int get updatedAt;
  @override
  @JsonKey(name: "created_at")
  int get createdAt;

  /// Create a copy of InvoiceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvoiceItemImplCopyWith<_$InvoiceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
