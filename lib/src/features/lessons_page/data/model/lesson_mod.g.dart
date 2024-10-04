// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_mod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LessonItemImpl _$$LessonItemImplFromJson(Map<String, dynamic> json) =>
    _$LessonItemImpl(
      lessonCode: json['lesson_code'] as String? ?? '',
      lessonId: (json['lesson_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$LessonItemImplToJson(_$LessonItemImpl instance) =>
    <String, dynamic>{
      'lesson_code': instance.lessonCode,
      'lesson_id': instance.lessonId,
      'title': instance.title,
      'image': instance.image,
    };
