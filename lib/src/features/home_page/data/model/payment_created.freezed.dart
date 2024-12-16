// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_created.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentCreated _$PaymentCreatedFromJson(Map<String, dynamic> json) {
  return _PaymentCreated.fromJson(json);
}

/// @nodoc
mixin _$PaymentCreated {
  @JsonKey(name: "order_id")
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "payment_url")
  String get paymentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PaymentCreated to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCreatedCopyWith<PaymentCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCreatedCopyWith<$Res> {
  factory $PaymentCreatedCopyWith(
          PaymentCreated value, $Res Function(PaymentCreated) then) =
      _$PaymentCreatedCopyWithImpl<$Res, PaymentCreated>;
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "payment_url") String paymentUrl,
      @JsonKey(name: "created_at") int createdAt});
}

/// @nodoc
class _$PaymentCreatedCopyWithImpl<$Res, $Val extends PaymentCreated>
    implements $PaymentCreatedCopyWith<$Res> {
  _$PaymentCreatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? userId = null,
    Object? paymentUrl = null,
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
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentCreatedImplCopyWith<$Res>
    implements $PaymentCreatedCopyWith<$Res> {
  factory _$$PaymentCreatedImplCopyWith(_$PaymentCreatedImpl value,
          $Res Function(_$PaymentCreatedImpl) then) =
      __$$PaymentCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "order_id") String orderId,
      @JsonKey(name: "user_id") String userId,
      @JsonKey(name: "payment_url") String paymentUrl,
      @JsonKey(name: "created_at") int createdAt});
}

/// @nodoc
class __$$PaymentCreatedImplCopyWithImpl<$Res>
    extends _$PaymentCreatedCopyWithImpl<$Res, _$PaymentCreatedImpl>
    implements _$$PaymentCreatedImplCopyWith<$Res> {
  __$$PaymentCreatedImplCopyWithImpl(
      _$PaymentCreatedImpl _value, $Res Function(_$PaymentCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentCreated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? userId = null,
    Object? paymentUrl = null,
    Object? createdAt = null,
  }) {
    return _then(_$PaymentCreatedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentCreatedImpl implements _PaymentCreated {
  _$PaymentCreatedImpl(
      {@JsonKey(name: "order_id") this.orderId = "",
      @JsonKey(name: "user_id") this.userId = "",
      @JsonKey(name: "payment_url") this.paymentUrl = "",
      @JsonKey(name: "created_at") this.createdAt = 0});

  factory _$PaymentCreatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentCreatedImplFromJson(json);

  @override
  @JsonKey(name: "order_id")
  final String orderId;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "payment_url")
  final String paymentUrl;
  @override
  @JsonKey(name: "created_at")
  final int createdAt;

  @override
  String toString() {
    return 'PaymentCreated(orderId: $orderId, userId: $userId, paymentUrl: $paymentUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentCreatedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, userId, paymentUrl, createdAt);

  /// Create a copy of PaymentCreated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentCreatedImplCopyWith<_$PaymentCreatedImpl> get copyWith =>
      __$$PaymentCreatedImplCopyWithImpl<_$PaymentCreatedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentCreatedImplToJson(
      this,
    );
  }
}

abstract class _PaymentCreated implements PaymentCreated {
  factory _PaymentCreated(
      {@JsonKey(name: "order_id") final String orderId,
      @JsonKey(name: "user_id") final String userId,
      @JsonKey(name: "payment_url") final String paymentUrl,
      @JsonKey(name: "created_at") final int createdAt}) = _$PaymentCreatedImpl;

  factory _PaymentCreated.fromJson(Map<String, dynamic> json) =
      _$PaymentCreatedImpl.fromJson;

  @override
  @JsonKey(name: "order_id")
  String get orderId;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "payment_url")
  String get paymentUrl;
  @override
  @JsonKey(name: "created_at")
  int get createdAt;

  /// Create a copy of PaymentCreated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentCreatedImplCopyWith<_$PaymentCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
