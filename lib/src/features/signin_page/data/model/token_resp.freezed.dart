// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenResp _$TokenRespFromJson(Map<String, dynamic> json) {
  return _TokenResp.fromJson(json);
}

/// @nodoc
mixin _$TokenResp {
  @JsonKey(name: "access_token", defaultValue: "")
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token", defaultValue: "")
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "id", defaultValue: "")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "role", defaultValue: [])
  List<String>? get role => throw _privateConstructorUsedError;

  /// Serializes this TokenResp to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenRespCopyWith<TokenResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenRespCopyWith<$Res> {
  factory $TokenRespCopyWith(TokenResp value, $Res Function(TokenResp) then) =
      _$TokenRespCopyWithImpl<$Res, TokenResp>;
  @useResult
  $Res call(
      {@JsonKey(name: "access_token", defaultValue: "") String? accessToken,
      @JsonKey(name: "refresh_token", defaultValue: "") String? refreshToken,
      @JsonKey(name: "id", defaultValue: "") String? id,
      @JsonKey(name: "role", defaultValue: []) List<String>? role});
}

/// @nodoc
class _$TokenRespCopyWithImpl<$Res, $Val extends TokenResp>
    implements $TokenRespCopyWith<$Res> {
  _$TokenRespCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? id = freezed,
    Object? role = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenRespImplCopyWith<$Res>
    implements $TokenRespCopyWith<$Res> {
  factory _$$TokenRespImplCopyWith(
          _$TokenRespImpl value, $Res Function(_$TokenRespImpl) then) =
      __$$TokenRespImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "access_token", defaultValue: "") String? accessToken,
      @JsonKey(name: "refresh_token", defaultValue: "") String? refreshToken,
      @JsonKey(name: "id", defaultValue: "") String? id,
      @JsonKey(name: "role", defaultValue: []) List<String>? role});
}

/// @nodoc
class __$$TokenRespImplCopyWithImpl<$Res>
    extends _$TokenRespCopyWithImpl<$Res, _$TokenRespImpl>
    implements _$$TokenRespImplCopyWith<$Res> {
  __$$TokenRespImplCopyWithImpl(
      _$TokenRespImpl _value, $Res Function(_$TokenRespImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenResp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? id = freezed,
    Object? role = freezed,
  }) {
    return _then(_$TokenRespImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenRespImpl implements _TokenResp {
  _$TokenRespImpl(
      {@JsonKey(name: "access_token", defaultValue: "") this.accessToken,
      @JsonKey(name: "refresh_token", defaultValue: "") this.refreshToken,
      @JsonKey(name: "id", defaultValue: "") this.id,
      @JsonKey(name: "role", defaultValue: []) final List<String>? role})
      : _role = role;

  factory _$TokenRespImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenRespImplFromJson(json);

  @override
  @JsonKey(name: "access_token", defaultValue: "")
  final String? accessToken;
  @override
  @JsonKey(name: "refresh_token", defaultValue: "")
  final String? refreshToken;
  @override
  @JsonKey(name: "id", defaultValue: "")
  final String? id;
  final List<String>? _role;
  @override
  @JsonKey(name: "role", defaultValue: [])
  List<String>? get role {
    final value = _role;
    if (value == null) return null;
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TokenResp(accessToken: $accessToken, refreshToken: $refreshToken, id: $id, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenRespImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._role, _role));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken, id,
      const DeepCollectionEquality().hash(_role));

  /// Create a copy of TokenResp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenRespImplCopyWith<_$TokenRespImpl> get copyWith =>
      __$$TokenRespImplCopyWithImpl<_$TokenRespImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenRespImplToJson(
      this,
    );
  }
}

abstract class _TokenResp implements TokenResp {
  factory _TokenResp(
          {@JsonKey(name: "access_token", defaultValue: "")
          final String? accessToken,
          @JsonKey(name: "refresh_token", defaultValue: "")
          final String? refreshToken,
          @JsonKey(name: "id", defaultValue: "") final String? id,
          @JsonKey(name: "role", defaultValue: []) final List<String>? role}) =
      _$TokenRespImpl;

  factory _TokenResp.fromJson(Map<String, dynamic> json) =
      _$TokenRespImpl.fromJson;

  @override
  @JsonKey(name: "access_token", defaultValue: "")
  String? get accessToken;
  @override
  @JsonKey(name: "refresh_token", defaultValue: "")
  String? get refreshToken;
  @override
  @JsonKey(name: "id", defaultValue: "")
  String? get id;
  @override
  @JsonKey(name: "role", defaultValue: [])
  List<String>? get role;

  /// Create a copy of TokenResp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenRespImplCopyWith<_$TokenRespImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
