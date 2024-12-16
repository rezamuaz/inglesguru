// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizModImpl _$$QuizModImplFromJson(Map<String, dynamic> json) =>
    _$QuizModImpl(
      lessonCode: json['lesson_code'] as String? ?? '',
      quizId: (json['quiz_id'] as num?)?.toInt() ?? 0,
      num: (json['num'] as num?)?.toInt() ?? 0,
      lang: json['lang'] as String? ?? "",
      context: json['context'] as String? ?? "",
      question: json['question'] as String? ?? "",
      selections: (json['selections'] as List<dynamic>?)
              ?.map((e) => ChoiceMod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      answer: json['answer'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$QuizModImplToJson(_$QuizModImpl instance) =>
    <String, dynamic>{
      'lesson_code': instance.lessonCode,
      'quiz_id': instance.quizId,
      'num': instance.num,
      'lang': instance.lang,
      'context': instance.context,
      'question': instance.question,
      'selections': instance.selections,
      'answer': instance.answer,
      'reason': instance.reason,
    };

_$ChoiceModImpl _$$ChoiceModImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceModImpl(
      choice: json['choice'] as String? ?? "",
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$$ChoiceModImplToJson(_$ChoiceModImpl instance) =>
    <String, dynamic>{
      'choice': instance.choice,
      'description': instance.description,
    };

_$QuizJsonImpl _$$QuizJsonImplFromJson(Map<String, dynamic> json) =>
    _$QuizJsonImpl(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => QuizMod.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      success: json['success'] as bool? ?? false,
      rc: (json['rc'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QuizJsonImplToJson(_$QuizJsonImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'success': instance.success,
      'rc': instance.rc,
    };
