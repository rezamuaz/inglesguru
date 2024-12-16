// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Token _$TokenFromJson(Map<String, dynamic> json) {
  return _Token.fromJson(json);
}

/// @nodoc
mixin _$Token {
  List<String> get role => throw _privateConstructorUsedError;
  @JsonKey(name: "is_premium")
  bool get isPremium => throw _privateConstructorUsedError;
  @JsonKey(name: "access_token")
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_token")
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: "access_expire_at")
  int get accessExpiredAt => throw _privateConstructorUsedError;
  @JsonKey(name: "refresh_expire_at")
  int get refreshExpiredAt => throw _privateConstructorUsedError;

  /// Serializes this Token to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenCopyWith<Token> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenCopyWith<$Res> {
  factory $TokenCopyWith(Token value, $Res Function(Token) then) =
      _$TokenCopyWithImpl<$Res, Token>;
  @useResult
  $Res call(
      {List<String> role,
      @JsonKey(name: "is_premium") bool isPremium,
      @JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "access_expire_at") int accessExpiredAt,
      @JsonKey(name: "refresh_expire_at") int refreshExpiredAt});
}

/// @nodoc
class _$TokenCopyWithImpl<$Res, $Val extends Token>
    implements $TokenCopyWith<$Res> {
  _$TokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? isPremium = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessExpiredAt = null,
    Object? refreshExpiredAt = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessExpiredAt: null == accessExpiredAt
          ? _value.accessExpiredAt
          : accessExpiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiredAt: null == refreshExpiredAt
          ? _value.refreshExpiredAt
          : refreshExpiredAt // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenImplCopyWith<$Res> implements $TokenCopyWith<$Res> {
  factory _$$TokenImplCopyWith(
          _$TokenImpl value, $Res Function(_$TokenImpl) then) =
      __$$TokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> role,
      @JsonKey(name: "is_premium") bool isPremium,
      @JsonKey(name: "access_token") String accessToken,
      @JsonKey(name: "refresh_token") String refreshToken,
      @JsonKey(name: "access_expire_at") int accessExpiredAt,
      @JsonKey(name: "refresh_expire_at") int refreshExpiredAt});
}

/// @nodoc
class __$$TokenImplCopyWithImpl<$Res>
    extends _$TokenCopyWithImpl<$Res, _$TokenImpl>
    implements _$$TokenImplCopyWith<$Res> {
  __$$TokenImplCopyWithImpl(
      _$TokenImpl _value, $Res Function(_$TokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? isPremium = null,
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessExpiredAt = null,
    Object? refreshExpiredAt = null,
  }) {
    return _then(_$TokenImpl(
      role: null == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessExpiredAt: null == accessExpiredAt
          ? _value.accessExpiredAt
          : accessExpiredAt // ignore: cast_nullable_to_non_nullable
              as int,
      refreshExpiredAt: null == refreshExpiredAt
          ? _value.refreshExpiredAt
          : refreshExpiredAt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenImpl implements _Token {
  _$TokenImpl(
      {final List<String> role = const [],
      @JsonKey(name: "is_premium") this.isPremium = false,
      @JsonKey(name: "access_token") this.accessToken = "",
      @JsonKey(name: "refresh_token") this.refreshToken = "",
      @JsonKey(name: "access_expire_at") this.accessExpiredAt = 0,
      @JsonKey(name: "refresh_expire_at") this.refreshExpiredAt = 0})
      : _role = role;

  factory _$TokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenImplFromJson(json);

  final List<String> _role;
  @override
  @JsonKey()
  List<String> get role {
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_role);
  }

  @override
  @JsonKey(name: "is_premium")
  final bool isPremium;
  @override
  @JsonKey(name: "access_token")
  final String accessToken;
  @override
  @JsonKey(name: "refresh_token")
  final String refreshToken;
  @override
  @JsonKey(name: "access_expire_at")
  final int accessExpiredAt;
  @override
  @JsonKey(name: "refresh_expire_at")
  final int refreshExpiredAt;

  @override
  String toString() {
    return 'Token(role: $role, isPremium: $isPremium, accessToken: $accessToken, refreshToken: $refreshToken, accessExpiredAt: $accessExpiredAt, refreshExpiredAt: $refreshExpiredAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenImpl &&
            const DeepCollectionEquality().equals(other._role, _role) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessExpiredAt, accessExpiredAt) ||
                other.accessExpiredAt == accessExpiredAt) &&
            (identical(other.refreshExpiredAt, refreshExpiredAt) ||
                other.refreshExpiredAt == refreshExpiredAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_role),
      isPremium,
      accessToken,
      refreshToken,
      accessExpiredAt,
      refreshExpiredAt);

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      __$$TokenImplCopyWithImpl<_$TokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenImplToJson(
      this,
    );
  }
}

abstract class _Token implements Token {
  factory _Token(
          {final List<String> role,
          @JsonKey(name: "is_premium") final bool isPremium,
          @JsonKey(name: "access_token") final String accessToken,
          @JsonKey(name: "refresh_token") final String refreshToken,
          @JsonKey(name: "access_expire_at") final int accessExpiredAt,
          @JsonKey(name: "refresh_expire_at") final int refreshExpiredAt}) =
      _$TokenImpl;

  factory _Token.fromJson(Map<String, dynamic> json) = _$TokenImpl.fromJson;

  @override
  List<String> get role;
  @override
  @JsonKey(name: "is_premium")
  bool get isPremium;
  @override
  @JsonKey(name: "access_token")
  String get accessToken;
  @override
  @JsonKey(name: "refresh_token")
  String get refreshToken;
  @override
  @JsonKey(name: "access_expire_at")
  int get accessExpiredAt;
  @override
  @JsonKey(name: "refresh_expire_at")
  int get refreshExpiredAt;

  /// Create a copy of Token
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenImplCopyWith<_$TokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
