// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextState {
  String? get origintext => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  Color? get textColor => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;
  bool get init => throw _privateConstructorUsedError;

  /// Create a copy of TextState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextStateCopyWith<TextState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextStateCopyWith<$Res> {
  factory $TextStateCopyWith(TextState value, $Res Function(TextState) then) =
      _$TextStateCopyWithImpl<$Res, TextState>;
  @useResult
  $Res call(
      {String? origintext,
      String? text,
      Color? textColor,
      bool isCorrect,
      bool init});
}

/// @nodoc
class _$TextStateCopyWithImpl<$Res, $Val extends TextState>
    implements $TextStateCopyWith<$Res> {
  _$TextStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origintext = freezed,
    Object? text = freezed,
    Object? textColor = freezed,
    Object? isCorrect = null,
    Object? init = null,
  }) {
    return _then(_value.copyWith(
      origintext: freezed == origintext
          ? _value.origintext
          : origintext // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TextStateImplCopyWith<$Res>
    implements $TextStateCopyWith<$Res> {
  factory _$$TextStateImplCopyWith(
          _$TextStateImpl value, $Res Function(_$TextStateImpl) then) =
      __$$TextStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? origintext,
      String? text,
      Color? textColor,
      bool isCorrect,
      bool init});
}

/// @nodoc
class __$$TextStateImplCopyWithImpl<$Res>
    extends _$TextStateCopyWithImpl<$Res, _$TextStateImpl>
    implements _$$TextStateImplCopyWith<$Res> {
  __$$TextStateImplCopyWithImpl(
      _$TextStateImpl _value, $Res Function(_$TextStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? origintext = freezed,
    Object? text = freezed,
    Object? textColor = freezed,
    Object? isCorrect = null,
    Object? init = null,
  }) {
    return _then(_$TextStateImpl(
      origintext: freezed == origintext
          ? _value.origintext
          : origintext // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textColor: freezed == textColor
          ? _value.textColor
          : textColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
      init: null == init
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TextStateImpl implements _TextState {
  _$TextStateImpl(
      {this.origintext,
      this.text,
      this.textColor,
      this.isCorrect = false,
      this.init = false});

  @override
  final String? origintext;
  @override
  final String? text;
  @override
  final Color? textColor;
  @override
  @JsonKey()
  final bool isCorrect;
  @override
  @JsonKey()
  final bool init;

  @override
  String toString() {
    return 'TextState(origintext: $origintext, text: $text, textColor: $textColor, isCorrect: $isCorrect, init: $init)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextStateImpl &&
            (identical(other.origintext, origintext) ||
                other.origintext == origintext) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textColor, textColor) ||
                other.textColor == textColor) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.init, init) || other.init == init));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, origintext, text, textColor, isCorrect, init);

  /// Create a copy of TextState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextStateImplCopyWith<_$TextStateImpl> get copyWith =>
      __$$TextStateImplCopyWithImpl<_$TextStateImpl>(this, _$identity);
}

abstract class _TextState implements TextState {
  factory _TextState(
      {final String? origintext,
      final String? text,
      final Color? textColor,
      final bool isCorrect,
      final bool init}) = _$TextStateImpl;

  @override
  String? get origintext;
  @override
  String? get text;
  @override
  Color? get textColor;
  @override
  bool get isCorrect;
  @override
  bool get init;

  /// Create a copy of TextState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextStateImplCopyWith<_$TextStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
