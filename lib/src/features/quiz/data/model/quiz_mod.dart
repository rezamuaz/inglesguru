import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_mod.freezed.dart';
part 'quiz_mod.g.dart';

@freezed
class QuizMod with _$QuizMod {

  factory QuizMod( final List<ContextMod>? result) = _QuizMod;

  factory QuizMod.fromJson(Map<String, dynamic> json) => _$QuizModFromJson(json);
}

@freezed
class ContextMod with _$ContextMod {

  factory ContextMod({
    @JsonKey(name: "lesson_code",defaultValue: "") final String? lessonCode,
    @Default(0) final int? quizId,
    @Default(0) final int? num,
    @Default("") final String? lang,
    @Default("") final String? context,
    @Default("") final String? question,
     final List<ChoiceMod>? selections,
     final String? answer,
     final String? reason
  }) = _ContextMod;

  factory ContextMod.fromJson(Map<String, dynamic> json) => _$ContextModFromJson(json);
}

@freezed
class ChoiceMod with _$ChoiceMod {

  factory ChoiceMod({@Default("") final String? choice, @Default("") final String? description}) = _ChoiceMod;

  factory ChoiceMod.fromJson(Map<String, dynamic> json) => _$ChoiceModFromJson(json);
}