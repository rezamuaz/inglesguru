import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/features/quiz/data/model/quiz_mod.dart';

abstract class QuizRepo {
 Future<ApiResult<QuizMod>> get(String lessonId);
}
