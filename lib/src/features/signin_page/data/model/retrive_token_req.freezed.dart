// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'retrive_token_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RetriveTokenReq _$RetriveTokenReqFromJson(Map<String, dynamic> json) {
  return _RetriveTokenReq.fromJson(json);
}

/// @nodoc
mixin _$RetriveTokenReq {
  String? get appId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this RetriveTokenReq to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RetriveTokenReq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RetriveTokenReqCopyWith<RetriveTokenReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetriveTokenReqCopyWith<$Res> {
  factory $RetriveTokenReqCopyWith(
          RetriveTokenReq value, $Res Function(RetriveTokenReq) then) =
      _$RetriveTokenReqCopyWithImpl<$Res, RetriveTokenReq>;
  @useResult
  $Res call({String? appId, String? email});
}

/// @nodoc
class _$RetriveTokenReqCopyWithImpl<$Res, $Val extends RetriveTokenReq>
    implements $RetriveTokenReqCopyWith<$Res> {
  _$RetriveTokenReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RetriveTokenReq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RetriveTokenReqImplCopyWith<$Res>
    implements $RetriveTokenReqCopyWith<$Res> {
  factory _$$RetriveTokenReqImplCopyWith(_$RetriveTokenReqImpl value,
          $Res Function(_$RetriveTokenReqImpl) then) =
      __$$RetriveTokenReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? appId, String? email});
}

/// @nodoc
class __$$RetriveTokenReqImplCopyWithImpl<$Res>
    extends _$RetriveTokenReqCopyWithImpl<$Res, _$RetriveTokenReqImpl>
    implements _$$RetriveTokenReqImplCopyWith<$Res> {
  __$$RetriveTokenReqImplCopyWithImpl(
      _$RetriveTokenReqImpl _value, $Res Function(_$RetriveTokenReqImpl) _then)
      : super(_value, _then);

  /// Create a copy of RetriveTokenReq
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = freezed,
    Object? email = freezed,
  }) {
    return _then(_$RetriveTokenReqImpl(
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RetriveTokenReqImpl implements _RetriveTokenReq {
  _$RetriveTokenReqImpl({this.appId, this.email});

  factory _$RetriveTokenReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$RetriveTokenReqImplFromJson(json);

  @override
  final String? appId;
  @override
  final String? email;

  @override
  String toString() {
    return 'RetriveTokenReq(appId: $appId, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RetriveTokenReqImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, appId, email);

  /// Create a copy of RetriveTokenReq
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RetriveTokenReqImplCopyWith<_$RetriveTokenReqImpl> get copyWith =>
      __$$RetriveTokenReqImplCopyWithImpl<_$RetriveTokenReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RetriveTokenReqImplToJson(
      this,
    );
  }
}

abstract class _RetriveTokenReq implements RetriveTokenReq {
  factory _RetriveTokenReq({final String? appId, final String? email}) =
      _$RetriveTokenReqImpl;

  factory _RetriveTokenReq.fromJson(Map<String, dynamic> json) =
      _$RetriveTokenReqImpl.fromJson;

  @override
  String? get appId;
  @override
  String? get email;

  /// Create a copy of RetriveTokenReq
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RetriveTokenReqImplCopyWith<_$RetriveTokenReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
