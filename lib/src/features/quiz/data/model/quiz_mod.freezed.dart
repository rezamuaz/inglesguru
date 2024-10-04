// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_mod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizMod _$QuizModFromJson(Map<String, dynamic> json) {
  return _QuizMod.fromJson(json);
}

/// @nodoc
mixin _$QuizMod {
  List<ContextMod>? get result => throw _privateConstructorUsedError;

  /// Serializes this QuizMod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizModCopyWith<QuizMod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizModCopyWith<$Res> {
  factory $QuizModCopyWith(QuizMod value, $Res Function(QuizMod) then) =
      _$QuizModCopyWithImpl<$Res, QuizMod>;
  @useResult
  $Res call({List<ContextMod>? result});
}

/// @nodoc
class _$QuizModCopyWithImpl<$Res, $Val extends QuizMod>
    implements $QuizModCopyWith<$Res> {
  _$QuizModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ContextMod>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizModImplCopyWith<$Res> implements $QuizModCopyWith<$Res> {
  factory _$$QuizModImplCopyWith(
          _$QuizModImpl value, $Res Function(_$QuizModImpl) then) =
      __$$QuizModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContextMod>? result});
}

/// @nodoc
class __$$QuizModImplCopyWithImpl<$Res>
    extends _$QuizModCopyWithImpl<$Res, _$QuizModImpl>
    implements _$$QuizModImplCopyWith<$Res> {
  __$$QuizModImplCopyWithImpl(
      _$QuizModImpl _value, $Res Function(_$QuizModImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$QuizModImpl(
      freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ContextMod>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizModImpl implements _QuizMod {
  _$QuizModImpl(final List<ContextMod>? result) : _result = result;

  factory _$QuizModImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizModImplFromJson(json);

  final List<ContextMod>? _result;
  @override
  List<ContextMod>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizMod(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizModImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of QuizMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizModImplCopyWith<_$QuizModImpl> get copyWith =>
      __$$QuizModImplCopyWithImpl<_$QuizModImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizModImplToJson(
      this,
    );
  }
}

abstract class _QuizMod implements QuizMod {
  factory _QuizMod(final List<ContextMod>? result) = _$QuizModImpl;

  factory _QuizMod.fromJson(Map<String, dynamic> json) = _$QuizModImpl.fromJson;

  @override
  List<ContextMod>? get result;

  /// Create a copy of QuizMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizModImplCopyWith<_$QuizModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContextMod _$ContextModFromJson(Map<String, dynamic> json) {
  return _ContextMod.fromJson(json);
}

/// @nodoc
mixin _$ContextMod {
  @JsonKey(name: "lesson_code", defaultValue: "")
  String? get lessonCode => throw _privateConstructorUsedError;
  int? get quizId => throw _privateConstructorUsedError;
  int? get num => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  String? get context => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  List<ChoiceMod>? get selections => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this ContextMod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContextMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContextModCopyWith<ContextMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextModCopyWith<$Res> {
  factory $ContextModCopyWith(
          ContextMod value, $Res Function(ContextMod) then) =
      _$ContextModCopyWithImpl<$Res, ContextMod>;
  @useResult
  $Res call(
      {@JsonKey(name: "lesson_code", defaultValue: "") String? lessonCode,
      int? quizId,
      int? num,
      String? lang,
      String? context,
      String? question,
      List<ChoiceMod>? selections,
      String? answer,
      String? reason});
}

/// @nodoc
class _$ContextModCopyWithImpl<$Res, $Val extends ContextMod>
    implements $ContextModCopyWith<$Res> {
  _$ContextModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContextMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = freezed,
    Object? quizId = freezed,
    Object? num = freezed,
    Object? lang = freezed,
    Object? context = freezed,
    Object? question = freezed,
    Object? selections = freezed,
    Object? answer = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      lessonCode: freezed == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      selections: freezed == selections
          ? _value.selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<ChoiceMod>?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContextModImplCopyWith<$Res>
    implements $ContextModCopyWith<$Res> {
  factory _$$ContextModImplCopyWith(
          _$ContextModImpl value, $Res Function(_$ContextModImpl) then) =
      __$$ContextModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lesson_code", defaultValue: "") String? lessonCode,
      int? quizId,
      int? num,
      String? lang,
      String? context,
      String? question,
      List<ChoiceMod>? selections,
      String? answer,
      String? reason});
}

/// @nodoc
class __$$ContextModImplCopyWithImpl<$Res>
    extends _$ContextModCopyWithImpl<$Res, _$ContextModImpl>
    implements _$$ContextModImplCopyWith<$Res> {
  __$$ContextModImplCopyWithImpl(
      _$ContextModImpl _value, $Res Function(_$ContextModImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContextMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lessonCode = freezed,
    Object? quizId = freezed,
    Object? num = freezed,
    Object? lang = freezed,
    Object? context = freezed,
    Object? question = freezed,
    Object? selections = freezed,
    Object? answer = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$ContextModImpl(
      lessonCode: freezed == lessonCode
          ? _value.lessonCode
          : lessonCode // ignore: cast_nullable_to_non_nullable
              as String?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      num: freezed == num
          ? _value.num
          : num // ignore: cast_nullable_to_non_nullable
              as int?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      selections: freezed == selections
          ? _value._selections
          : selections // ignore: cast_nullable_to_non_nullable
              as List<ChoiceMod>?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContextModImpl implements _ContextMod {
  _$ContextModImpl(
      {@JsonKey(name: "lesson_code", defaultValue: "") this.lessonCode,
      this.quizId = 0,
      this.num = 0,
      this.lang = "",
      this.context = "",
      this.question = "",
      final List<ChoiceMod>? selections,
      this.answer,
      this.reason})
      : _selections = selections;

  factory _$ContextModImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContextModImplFromJson(json);

  @override
  @JsonKey(name: "lesson_code", defaultValue: "")
  final String? lessonCode;
  @override
  @JsonKey()
  final int? quizId;
  @override
  @JsonKey()
  final int? num;
  @override
  @JsonKey()
  final String? lang;
  @override
  @JsonKey()
  final String? context;
  @override
  @JsonKey()
  final String? question;
  final List<ChoiceMod>? _selections;
  @override
  List<ChoiceMod>? get selections {
    final value = _selections;
    if (value == null) return null;
    if (_selections is EqualUnmodifiableListView) return _selections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? answer;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ContextMod(lessonCode: $lessonCode, quizId: $quizId, num: $num, lang: $lang, context: $context, question: $question, selections: $selections, answer: $answer, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextModImpl &&
            (identical(other.lessonCode, lessonCode) ||
                other.lessonCode == lessonCode) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.num, num) || other.num == num) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._selections, _selections) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lessonCode,
      quizId,
      num,
      lang,
      context,
      question,
      const DeepCollectionEquality().hash(_selections),
      answer,
      reason);

  /// Create a copy of ContextMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextModImplCopyWith<_$ContextModImpl> get copyWith =>
      __$$ContextModImplCopyWithImpl<_$ContextModImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContextModImplToJson(
      this,
    );
  }
}

abstract class _ContextMod implements ContextMod {
  factory _ContextMod(
      {@JsonKey(name: "lesson_code", defaultValue: "") final String? lessonCode,
      final int? quizId,
      final int? num,
      final String? lang,
      final String? context,
      final String? question,
      final List<ChoiceMod>? selections,
      final String? answer,
      final String? reason}) = _$ContextModImpl;

  factory _ContextMod.fromJson(Map<String, dynamic> json) =
      _$ContextModImpl.fromJson;

  @override
  @JsonKey(name: "lesson_code", defaultValue: "")
  String? get lessonCode;
  @override
  int? get quizId;
  @override
  int? get num;
  @override
  String? get lang;
  @override
  String? get context;
  @override
  String? get question;
  @override
  List<ChoiceMod>? get selections;
  @override
  String? get answer;
  @override
  String? get reason;

  /// Create a copy of ContextMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContextModImplCopyWith<_$ContextModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChoiceMod _$ChoiceModFromJson(Map<String, dynamic> json) {
  return _ChoiceMod.fromJson(json);
}

/// @nodoc
mixin _$ChoiceMod {
  String? get choice => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ChoiceMod to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChoiceMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoiceModCopyWith<ChoiceMod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceModCopyWith<$Res> {
  factory $ChoiceModCopyWith(ChoiceMod value, $Res Function(ChoiceMod) then) =
      _$ChoiceModCopyWithImpl<$Res, ChoiceMod>;
  @useResult
  $Res call({String? choice, String? description});
}

/// @nodoc
class _$ChoiceModCopyWithImpl<$Res, $Val extends ChoiceMod>
    implements $ChoiceModCopyWith<$Res> {
  _$ChoiceModCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choice = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      choice: freezed == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceModImplCopyWith<$Res>
    implements $ChoiceModCopyWith<$Res> {
  factory _$$ChoiceModImplCopyWith(
          _$ChoiceModImpl value, $Res Function(_$ChoiceModImpl) then) =
      __$$ChoiceModImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? choice, String? description});
}

/// @nodoc
class __$$ChoiceModImplCopyWithImpl<$Res>
    extends _$ChoiceModCopyWithImpl<$Res, _$ChoiceModImpl>
    implements _$$ChoiceModImplCopyWith<$Res> {
  __$$ChoiceModImplCopyWithImpl(
      _$ChoiceModImpl _value, $Res Function(_$ChoiceModImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceMod
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choice = freezed,
    Object? description = freezed,
  }) {
    return _then(_$ChoiceModImpl(
      choice: freezed == choice
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceModImpl implements _ChoiceMod {
  _$ChoiceModImpl({this.choice = "", this.description = ""});

  factory _$ChoiceModImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceModImplFromJson(json);

  @override
  @JsonKey()
  final String? choice;
  @override
  @JsonKey()
  final String? description;

  @override
  String toString() {
    return 'ChoiceMod(choice: $choice, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceModImpl &&
            (identical(other.choice, choice) || other.choice == choice) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, choice, description);

  /// Create a copy of ChoiceMod
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceModImplCopyWith<_$ChoiceModImpl> get copyWith =>
      __$$ChoiceModImplCopyWithImpl<_$ChoiceModImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceModImplToJson(
      this,
    );
  }
}

abstract class _ChoiceMod implements ChoiceMod {
  factory _ChoiceMod({final String? choice, final String? description}) =
      _$ChoiceModImpl;

  factory _ChoiceMod.fromJson(Map<String, dynamic> json) =
      _$ChoiceModImpl.fromJson;

  @override
  String? get choice;
  @override
  String? get description;

  /// Create a copy of ChoiceMod
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceModImplCopyWith<_$ChoiceModImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
