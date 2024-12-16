// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'words_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WordsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lessonCode) list,
    required TResult Function(String lessonCode) shuffle,
    required TResult Function() learned,
    required TResult Function(Word word) unTicked,
    required TResult Function() shuffleLearned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lessonCode)? list,
    TResult? Function(String lessonCode)? shuffle,
    TResult? Function()? learned,
    TResult? Function(Word word)? unTicked,
    TResult? Function()? shuffleLearned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lessonCode)? list,
    TResult Function(String lessonCode)? shuffle,
    TResult Function()? learned,
    TResult Function(Word word)? unTicked,
    TResult Function()? shuffleLearned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_List value) list,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_Learned value) learned,
    required TResult Function(_UnTicked value) unTicked,
    required TResult Function(_ShuffleLearned value) shuffleLearned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_List value)? list,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_Learned value)? learned,
    TResult? Function(_UnTicked value)? unTicked,
    TResult? Function(_ShuffleLearned value)? shuffleLearned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_List value)? list,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_Learned value)? learned,
    TResult Function(_UnTicked value)? unTicked,
    TResult Function(_ShuffleLearned value)? shuffleLearned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsEventCopyWith<$Res> {
  factory $WordsEventCopyWith(
          WordsEvent value, $Res Function(WordsEvent) then) =
      _$WordsEventCopyWithImpl<$Res, WordsEvent>;
}

/// @nodoc
class _$WordsEventCopyWithImpl<$Res, $Val extends WordsEvent>
    implements $WordsEventCopyWith<$Res> {
  _$WordsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ListImplCopyWith<$Res> {
  factory _$$ListImplCopyWith(
          _$ListImpl value, $Res Function(_$ListImpl) then) =
      __$$ListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lessonCode});
}

/// @nodoc
class __$$ListImplCopyWithImpl<$Res>
    extends _$WordsEventCopyWithImpl<$Res, _$ListImpl>
    implements _$$ListImplCopyWith<$Res> {
  __$$ListImplCopyWithImpl(_$ListImpl _value, $Res Function(_$ListImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = null,
  }) {
    return _then(_$ListImpl(
      lessonCode: null == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListImpl implements _List {
  const _$ListImpl({required this.lessonCode});

  @override
  final String lessonCode;

  @override
  String toString() {
    return 'WordsEvent.list(lessonCode: $lessonCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListImpl &&
            (identical(other.lessonCode, lessonCode) ||
                other.lessonCode == lessonCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonCode);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListImplCopyWith<_$ListImpl> get copyWith =>
      __$$ListImplCopyWithImpl<_$ListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lessonCode) list,
    required TResult Function(String lessonCode) shuffle,
    required TResult Function() learned,
    required TResult Function(Word word) unTicked,
    required TResult Function() shuffleLearned,
  }) {
    return list(lessonCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lessonCode)? list,
    TResult? Function(String lessonCode)? shuffle,
    TResult? Function()? learned,
    TResult? Function(Word word)? unTicked,
    TResult? Function()? shuffleLearned,
  }) {
    return list?.call(lessonCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lessonCode)? list,
    TResult Function(String lessonCode)? shuffle,
    TResult Function()? learned,
    TResult Function(Word word)? unTicked,
    TResult Function()? shuffleLearned,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(lessonCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_List value) list,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_Learned value) learned,
    required TResult Function(_UnTicked value) unTicked,
    required TResult Function(_ShuffleLearned value) shuffleLearned,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_List value)? list,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_Learned value)? learned,
    TResult? Function(_UnTicked value)? unTicked,
    TResult? Function(_ShuffleLearned value)? shuffleLearned,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_List value)? list,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_Learned value)? learned,
    TResult Function(_UnTicked value)? unTicked,
    TResult Function(_ShuffleLearned value)? shuffleLearned,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class _List implements WordsEvent {
  const factory _List({required final String lessonCode}) = _$ListImpl;

  String get lessonCode;

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListImplCopyWith<_$ListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShuffleImplCopyWith<$Res> {
  factory _$$ShuffleImplCopyWith(
          _$ShuffleImpl value, $Res Function(_$ShuffleImpl) then) =
      __$$ShuffleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lessonCode});
}

/// @nodoc
class __$$ShuffleImplCopyWithImpl<$Res>
    extends _$WordsEventCopyWithImpl<$Res, _$ShuffleImpl>
    implements _$$ShuffleImplCopyWith<$Res> {
  __$$ShuffleImplCopyWithImpl(
      _$ShuffleImpl _value, $Res Function(_$ShuffleImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = null,
  }) {
    return _then(_$ShuffleImpl(
      lessonCode: null == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShuffleImpl implements _Shuffle {
  const _$ShuffleImpl({required this.lessonCode});

  @override
  final String lessonCode;

  @override
  String toString() {
    return 'WordsEvent.shuffle(lessonCode: $lessonCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShuffleImpl &&
            (identical(other.lessonCode, lessonCode) ||
                other.lessonCode == lessonCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lessonCode);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShuffleImplCopyWith<_$ShuffleImpl> get copyWith =>
      __$$ShuffleImplCopyWithImpl<_$ShuffleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lessonCode) list,
    required TResult Function(String lessonCode) shuffle,
    required TResult Function() learned,
    required TResult Function(Word word) unTicked,
    required TResult Function() shuffleLearned,
  }) {
    return shuffle(lessonCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lessonCode)? list,
    TResult? Function(String lessonCode)? shuffle,
    TResult? Function()? learned,
    TResult? Function(Word word)? unTicked,
    TResult? Function()? shuffleLearned,
  }) {
    return shuffle?.call(lessonCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lessonCode)? list,
    TResult Function(String lessonCode)? shuffle,
    TResult Function()? learned,
    TResult Function(Word word)? unTicked,
    TResult Function()? shuffleLearned,
    required TResult orElse(),
  }) {
    if (shuffle != null) {
      return shuffle(lessonCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_List value) list,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_Learned value) learned,
    required TResult Function(_UnTicked value) unTicked,
    required TResult Function(_ShuffleLearned value) shuffleLearned,
  }) {
    return shuffle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_List value)? list,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_Learned value)? learned,
    TResult? Function(_UnTicked value)? unTicked,
    TResult? Function(_ShuffleLearned value)? shuffleLearned,
  }) {
    return shuffle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_List value)? list,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_Learned value)? learned,
    TResult Function(_UnTicked value)? unTicked,
    TResult Function(_ShuffleLearned value)? shuffleLearned,
    required TResult orElse(),
  }) {
    if (shuffle != null) {
      return shuffle(this);
    }
    return orElse();
  }
}

abstract class _Shuffle implements WordsEvent {
  const factory _Shuffle({required final String lessonCode}) = _$ShuffleImpl;

  String get lessonCode;

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShuffleImplCopyWith<_$ShuffleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LearnedImplCopyWith<$Res> {
  factory _$$LearnedImplCopyWith(
          _$LearnedImpl value, $Res Function(_$LearnedImpl) then) =
      __$$LearnedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LearnedImplCopyWithImpl<$Res>
    extends _$WordsEventCopyWithImpl<$Res, _$LearnedImpl>
    implements _$$LearnedImplCopyWith<$Res> {
  __$$LearnedImplCopyWithImpl(
      _$LearnedImpl _value, $Res Function(_$LearnedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LearnedImpl implements _Learned {
  const _$LearnedImpl();

  @override
  String toString() {
    return 'WordsEvent.learned()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LearnedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lessonCode) list,
    required TResult Function(String lessonCode) shuffle,
    required TResult Function() learned,
    required TResult Function(Word word) unTicked,
    required TResult Function() shuffleLearned,
  }) {
    return learned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lessonCode)? list,
    TResult? Function(String lessonCode)? shuffle,
    TResult? Function()? learned,
    TResult? Function(Word word)? unTicked,
    TResult? Function()? shuffleLearned,
  }) {
    return learned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lessonCode)? list,
    TResult Function(String lessonCode)? shuffle,
    TResult Function()? learned,
    TResult Function(Word word)? unTicked,
    TResult Function()? shuffleLearned,
    required TResult orElse(),
  }) {
    if (learned != null) {
      return learned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_List value) list,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_Learned value) learned,
    required TResult Function(_UnTicked value) unTicked,
    required TResult Function(_ShuffleLearned value) shuffleLearned,
  }) {
    return learned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_List value)? list,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_Learned value)? learned,
    TResult? Function(_UnTicked value)? unTicked,
    TResult? Function(_ShuffleLearned value)? shuffleLearned,
  }) {
    return learned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_List value)? list,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_Learned value)? learned,
    TResult Function(_UnTicked value)? unTicked,
    TResult Function(_ShuffleLearned value)? shuffleLearned,
    required TResult orElse(),
  }) {
    if (learned != null) {
      return learned(this);
    }
    return orElse();
  }
}

abstract class _Learned implements WordsEvent {
  const factory _Learned() = _$LearnedImpl;
}

/// @nodoc
abstract class _$$UnTickedImplCopyWith<$Res> {
  factory _$$UnTickedImplCopyWith(
          _$UnTickedImpl value, $Res Function(_$UnTickedImpl) then) =
      __$$UnTickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Word word});
}

/// @nodoc
class __$$UnTickedImplCopyWithImpl<$Res>
    extends _$WordsEventCopyWithImpl<$Res, _$UnTickedImpl>
    implements _$$UnTickedImplCopyWith<$Res> {
  __$$UnTickedImplCopyWithImpl(
      _$UnTickedImpl _value, $Res Function(_$UnTickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
  }) {
    return _then(_$UnTickedImpl(
      null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as Word,
    ));
  }
}

/// @nodoc

class _$UnTickedImpl implements _UnTicked {
  const _$UnTickedImpl(this.word);

  @override
  final Word word;

  @override
  String toString() {
    return 'WordsEvent.unTicked(word: $word)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnTickedImpl &&
            (identical(other.word, word) || other.word == word));
  }

  @override
  int get hashCode => Object.hash(runtimeType, word);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnTickedImplCopyWith<_$UnTickedImpl> get copyWith =>
      __$$UnTickedImplCopyWithImpl<_$UnTickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lessonCode) list,
    required TResult Function(String lessonCode) shuffle,
    required TResult Function() learned,
    required TResult Function(Word word) unTicked,
    required TResult Function() shuffleLearned,
  }) {
    return unTicked(word);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lessonCode)? list,
    TResult? Function(String lessonCode)? shuffle,
    TResult? Function()? learned,
    TResult? Function(Word word)? unTicked,
    TResult? Function()? shuffleLearned,
  }) {
    return unTicked?.call(word);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lessonCode)? list,
    TResult Function(String lessonCode)? shuffle,
    TResult Function()? learned,
    TResult Function(Word word)? unTicked,
    TResult Function()? shuffleLearned,
    required TResult orElse(),
  }) {
    if (unTicked != null) {
      return unTicked(word);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_List value) list,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_Learned value) learned,
    required TResult Function(_UnTicked value) unTicked,
    required TResult Function(_ShuffleLearned value) shuffleLearned,
  }) {
    return unTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_List value)? list,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_Learned value)? learned,
    TResult? Function(_UnTicked value)? unTicked,
    TResult? Function(_ShuffleLearned value)? shuffleLearned,
  }) {
    return unTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_List value)? list,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_Learned value)? learned,
    TResult Function(_UnTicked value)? unTicked,
    TResult Function(_ShuffleLearned value)? shuffleLearned,
    required TResult orElse(),
  }) {
    if (unTicked != null) {
      return unTicked(this);
    }
    return orElse();
  }
}

abstract class _UnTicked implements WordsEvent {
  const factory _UnTicked(final Word word) = _$UnTickedImpl;

  Word get word;

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnTickedImplCopyWith<_$UnTickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShuffleLearnedImplCopyWith<$Res> {
  factory _$$ShuffleLearnedImplCopyWith(_$ShuffleLearnedImpl value,
          $Res Function(_$ShuffleLearnedImpl) then) =
      __$$ShuffleLearnedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShuffleLearnedImplCopyWithImpl<$Res>
    extends _$WordsEventCopyWithImpl<$Res, _$ShuffleLearnedImpl>
    implements _$$ShuffleLearnedImplCopyWith<$Res> {
  __$$ShuffleLearnedImplCopyWithImpl(
      _$ShuffleLearnedImpl _value, $Res Function(_$ShuffleLearnedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShuffleLearnedImpl implements _ShuffleLearned {
  const _$ShuffleLearnedImpl();

  @override
  String toString() {
    return 'WordsEvent.shuffleLearned()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShuffleLearnedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String lessonCode) list,
    required TResult Function(String lessonCode) shuffle,
    required TResult Function() learned,
    required TResult Function(Word word) unTicked,
    required TResult Function() shuffleLearned,
  }) {
    return shuffleLearned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String lessonCode)? list,
    TResult? Function(String lessonCode)? shuffle,
    TResult? Function()? learned,
    TResult? Function(Word word)? unTicked,
    TResult? Function()? shuffleLearned,
  }) {
    return shuffleLearned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String lessonCode)? list,
    TResult Function(String lessonCode)? shuffle,
    TResult Function()? learned,
    TResult Function(Word word)? unTicked,
    TResult Function()? shuffleLearned,
    required TResult orElse(),
  }) {
    if (shuffleLearned != null) {
      return shuffleLearned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_List value) list,
    required TResult Function(_Shuffle value) shuffle,
    required TResult Function(_Learned value) learned,
    required TResult Function(_UnTicked value) unTicked,
    required TResult Function(_ShuffleLearned value) shuffleLearned,
  }) {
    return shuffleLearned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_List value)? list,
    TResult? Function(_Shuffle value)? shuffle,
    TResult? Function(_Learned value)? learned,
    TResult? Function(_UnTicked value)? unTicked,
    TResult? Function(_ShuffleLearned value)? shuffleLearned,
  }) {
    return shuffleLearned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_List value)? list,
    TResult Function(_Shuffle value)? shuffle,
    TResult Function(_Learned value)? learned,
    TResult Function(_UnTicked value)? unTicked,
    TResult Function(_ShuffleLearned value)? shuffleLearned,
    required TResult orElse(),
  }) {
    if (shuffleLearned != null) {
      return shuffleLearned(this);
    }
    return orElse();
  }
}

abstract class _ShuffleLearned implements WordsEvent {
  const factory _ShuffleLearned() = _$ShuffleLearnedImpl;
}

/// @nodoc
mixin _$WordsState {
  List<Word> get words => throw _privateConstructorUsedError;
  WordsStateStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of WordsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WordsStateCopyWith<WordsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordsStateCopyWith<$Res> {
  factory $WordsStateCopyWith(
          WordsState value, $Res Function(WordsState) then) =
      _$WordsStateCopyWithImpl<$Res, WordsState>;
  @useResult
  $Res call({List<Word> words, WordsStateStatus status});
}

/// @nodoc
class _$WordsStateCopyWithImpl<$Res, $Val extends WordsState>
    implements $WordsStateCopyWith<$Res> {
  _$WordsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WordsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WordsStateStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WordsStateImplCopyWith<$Res>
    implements $WordsStateCopyWith<$Res> {
  factory _$$WordsStateImplCopyWith(
          _$WordsStateImpl value, $Res Function(_$WordsStateImpl) then) =
      __$$WordsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Word> words, WordsStateStatus status});
}

/// @nodoc
class __$$WordsStateImplCopyWithImpl<$Res>
    extends _$WordsStateCopyWithImpl<$Res, _$WordsStateImpl>
    implements _$$WordsStateImplCopyWith<$Res> {
  __$$WordsStateImplCopyWithImpl(
      _$WordsStateImpl _value, $Res Function(_$WordsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WordsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = null,
    Object? status = null,
  }) {
    return _then(_$WordsStateImpl(
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<Word>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WordsStateStatus,
    ));
  }
}

/// @nodoc

class _$WordsStateImpl implements _WordsState {
  const _$WordsStateImpl(
      {final List<Word> words = const [],
      this.status = WordsStateStatus.initial})
      : _words = words;

  final List<Word> _words;
  @override
  @JsonKey()
  List<Word> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  @JsonKey()
  final WordsStateStatus status;

  @override
  String toString() {
    return 'WordsState(words: $words, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WordsStateImpl &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_words), status);

  /// Create a copy of WordsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WordsStateImplCopyWith<_$WordsStateImpl> get copyWith =>
      __$$WordsStateImplCopyWithImpl<_$WordsStateImpl>(this, _$identity);
}

abstract class _WordsState implements WordsState {
  const factory _WordsState(
      {final List<Word> words,
      final WordsStateStatus status}) = _$WordsStateImpl;

  @override
  List<Word> get words;
  @override
  WordsStateStatus get status;

  /// Create a copy of WordsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WordsStateImplCopyWith<_$WordsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
