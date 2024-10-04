import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sysbit/src/features/lessons_page/data/model/progress_mod.dart';

part 'lesson_mod.freezed.dart';
part 'lesson_mod.g.dart';



@freezed
class LessonItem with _$LessonItem {
  factory LessonItem(
      {@JsonKey(name: "lesson_code",defaultValue: "") final String? lessonCode,
      @JsonKey(name: "lesson_id",defaultValue: 0) final int? lessonId,
      final String? title,
      final String? image,
      }) = _LessonItem;
  const LessonItem._();
  factory LessonItem.fromJson(Map<String, dynamic> json) =>
      _$LessonItemFromJson(json);
}
