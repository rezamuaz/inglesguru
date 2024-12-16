// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_card_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlashCardMod _$FlashCardModFromJson(Map<String, dynamic> json) {
  return _FlashCardMod.fromJson(json);
}

/// @nodoc
mixin _$FlashCardMod {
  List<FlashCardItem> get result => throw _privateConstructorUsedError;

  /// Serializes this FlashCardMod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashCardMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashCardModCopyWith<FlashCardMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardModCopyWith<$Res> {
  factory $FlashCardModCopyWith(
          FlashCardMod value, $Res Function(FlashCardMod) then) =
      _$FlashCardModCopyWithImpl<$Res, FlashCardMod>;
  @useResult
  $Res call({List<FlashCardItem> result});
}

/// @nodoc
class _$FlashCardModCopyWithImpl<$Res, $Val extends FlashCardMod>
    implements $FlashCardModCopyWith<$Res> {
  _$FlashCardModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashCardMod
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
              as List<FlashCardItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardModImplCopyWith<$Res>
    implements $FlashCardModCopyWith<$Res> {
  factory _$$FlashCardModImplCopyWith(
          _$FlashCardModImpl value, $Res Function(_$FlashCardModImpl) then) =
      __$$FlashCardModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FlashCardItem> result});
}

/// @nodoc
class __$$FlashCardModImplCopyWithImpl<$Res>
    extends _$FlashCardModCopyWithImpl<$Res, _$FlashCardModImpl>
    implements _$$FlashCardModImplCopyWith<$Res> {
  __$$FlashCardModImplCopyWithImpl(
      _$FlashCardModImpl _value, $Res Function(_$FlashCardModImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashCardMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$FlashCardModImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FlashCardItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardModImpl implements _FlashCardMod {
  _$FlashCardModImpl({final List<FlashCardItem> result = const []})
      : _result = result;

  factory _$FlashCardModImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardModImplFromJson(json);

  final List<FlashCardItem> _result;
  @override
  @JsonKey()
  List<FlashCardItem> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'FlashCardMod(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardModImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of FlashCardMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardModImplCopyWith<_$FlashCardModImpl> get copyWith =>
      __$$FlashCardModImplCopyWithImpl<_$FlashCardModImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardModImplToJson(
      this,
    );
  }
}

abstract class _FlashCardMod implements FlashCardMod {
  factory _FlashCardMod({final List<FlashCardItem> result}) =
      _$FlashCardModImpl;

  factory _FlashCardMod.fromJson(Map<String, dynamic> json) =
      _$FlashCardModImpl.fromJson;

  @override
  List<FlashCardItem> get result;

  /// Create a copy of FlashCardMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashCardModImplCopyWith<_$FlashCardModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlashCardItem _$FlashCardItemFromJson(Map<String, dynamic> json) {
  return _FlashCardItem.fromJson(json);
}

/// @nodoc
mixin _$FlashCardItem {
  @JsonKey(name: "lesson_code")
  String get lessonCode => throw _privateConstructorUsedError;
  @JsonKey(name: "lesson_id")
  int get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: "word_id")
  int get wordId => throw _privateConstructorUsedError;
  @JsonKey(name: "num")
  int get num => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  @JsonKey(name: "words")
  Map<String, dynamic> get words => throw _privateConstructorUsedError;

  /// Serializes this FlashCardItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlashCardItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashCardItemCopyWith<FlashCardItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashCardItemCopyWith<$Res> {
  factory $FlashCardItemCopyWith(
          FlashCardItem value, $Res Function(FlashCardItem) then) =
      _$FlashCardItemCopyWithImpl<$Res, FlashCardItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "lesson_code") String lessonCode,
      @JsonKey(name: "lesson_id") int lessonId,
      @JsonKey(name: "word_id") int wordId,
      @JsonKey(name: "num") int num,
      bool done,
      @JsonKey(name: "words") Map<String, dynamic> words});
}

/// @nodoc
class _$FlashCardItemCopyWithImpl<$Res, $Val extends FlashCardItem>
    implements $FlashCardItemCopyWith<$Res> {
  _$FlashCardItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashCardItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = null,
    Object? lessonId = null,
    Object? wordId = null,
    Object? num = null,
    Object? done = null,
    Object? words = null,
  }) {
    return _then(_value.copyWith(
      lessonCode: null == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      wordId: null == wordId
          ? _value.wordId
          : wordId // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlashCardItemImplCopyWith<$Res>
    implements $FlashCardItemCopyWith<$Res> {
  factory _$$FlashCardItemImplCopyWith(
          _$FlashCardItemImpl value, $Res Function(_$FlashCardItemImpl) then) =
      __$$FlashCardItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lesson_code") String lessonCode,
      @JsonKey(name: "lesson_id") int lessonId,
      @JsonKey(name: "word_id") int wordId,
      @JsonKey(name: "num") int num,
      bool done,
      @JsonKey(name: "words") Map<String, dynamic> words});
}

/// @nodoc
class __$$FlashCardItemImplCopyWithImpl<$Res>
    extends _$FlashCardItemCopyWithImpl<$Res, _$FlashCardItemImpl>
    implements _$$FlashCardItemImplCopyWith<$Res> {
  __$$FlashCardItemImplCopyWithImpl(
      _$FlashCardItemImpl _value, $Res Function(_$FlashCardItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashCardItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = null,
    Object? lessonId = null,
    Object? wordId = null,
    Object? num = null,
    Object? done = null,
    Object? words = null,
  }) {
    return _then(_$FlashCardItemImpl(
      lessonCode: null == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String,
      lessonId: null == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as int,
      wordId: null == wordId
          ? _value.wordId
          : wordId // ignore: cast_nullable_to_non_nullable
              as int,
      num: null == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlashCardItemImpl implements _FlashCardItem {
  _$FlashCardItemImpl(
      {@JsonKey(name: "lesson_code") this.lessonCode = "",
      @JsonKey(name: "lesson_id") this.lessonId = 0,
      @JsonKey(name: "word_id") this.wordId = 0,
      @JsonKey(name: "num") this.num = 0,
      this.done = false,
      @JsonKey(name: "words") final Map<String, dynamic> words = const {}})
      : _words = words;

  factory _$FlashCardItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlashCardItemImplFromJson(json);

  @override
  @JsonKey(name: "lesson_code")
  final String lessonCode;
  @override
  @JsonKey(name: "lesson_id")
  final int lessonId;
  @override
  @JsonKey(name: "word_id")
  final int wordId;
  @override
  @JsonKey(name: "num")
  final int num;
  @override
  @JsonKey()
  final bool done;
  final Map<String, dynamic> _words;
  @override
  @JsonKey(name: "words")
  Map<String, dynamic> get words {
    if (_words is EqualUnmodifiableMapView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_words);
  }

  @override
  String toString() {
    return 'FlashCardItem(lessonCode: $lessonCode, lessonId: $lessonId, wordId: $wordId, num: $num, done: $done, words: $words)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashCardItemImpl &&
            (identical(other.lessonCode, lessonCode) ||
                other.lessonCode == lessonCode) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.wordId, wordId) || other.wordId == wordId) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.done, done) || other.done == done) &&
            const DeepCollectionEquality().equals(other._words, _words));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lessonCode, lessonId, wordId,
      num, done, const DeepCollectionEquality().hash(_words));

  /// Create a copy of FlashCardItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashCardItemImplCopyWith<_$FlashCardItemImpl> get copyWith =>
      __$$FlashCardItemImplCopyWithImpl<_$FlashCardItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlashCardItemImplToJson(
      this,
    );
  }
}

abstract class _FlashCardItem implements FlashCardItem {
  factory _FlashCardItem(
          {@JsonKey(name: "lesson_code") final String lessonCode,
          @JsonKey(name: "lesson_id") final int lessonId,
          @JsonKey(name: "word_id") final int wordId,
          @JsonKey(name: "num") final int num,
          final bool done,
          @JsonKey(name: "words") final Map<String, dynamic> words}) =
      _$FlashCardItemImpl;

  factory _FlashCardItem.fromJson(Map<String, dynamic> json) =
      _$FlashCardItemImpl.fromJson;

  @override
  @JsonKey(name: "lesson_code")
  String get lessonCode;
  @override
  @JsonKey(name: "lesson_id")
  int get lessonId;
  @override
  @JsonKey(name: "word_id")
  int get wordId;
  @override
  @JsonKey(name: "num")
  int get num;
  @override
  bool get done;
  @override
  @JsonKey(name: "words")
  Map<String, dynamic> get words;

  /// Create a copy of FlashCardItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashCardItemImplCopyWith<_$FlashCardItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
