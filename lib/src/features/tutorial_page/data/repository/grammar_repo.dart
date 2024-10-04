import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';

abstract class GrammarRepo {
  Future<ApiResult<String>> get(String lessonId);
}