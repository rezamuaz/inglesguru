import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';
import 'package:sysbit/src/features/lessons_page/data/model/lesson_mod.dart';

abstract class LessonRepo {
 Future<ApiResult<List<LessonItem>>> get();
  Future<ApiResult<List<String>>> getAssets(String lessonId);
}
