// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_card_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashCardModImpl _$$FlashCardModImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardModImpl(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => FlashCardItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FlashCardModImplToJson(_$FlashCardModImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$FlashCardItemImpl _$$FlashCardItemImplFromJson(Map<String, dynamic> json) =>
    _$FlashCardItemImpl(
      lessonCode: json['lesson_code'] as String? ?? "",
      lessonId: (json['lesson_id'] as num?)?.toInt() ?? 0,
      wordId: (json['word_id'] as num?)?.toInt() ?? 0,
      num: (json['num'] as num?)?.toInt() ?? 0,
      done: json['done'] as bool? ?? false,
      words: json['words'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$FlashCardItemImplToJson(_$FlashCardItemImpl instance) =>
    <String, dynamic>{
      'lesson_code': instance.lessonCode,
      'lesson_id': instance.lessonId,
      'word_id': instance.wordId,
      'num': instance.num,
      'done': instance.done,
      'words': instance.words,
    };
