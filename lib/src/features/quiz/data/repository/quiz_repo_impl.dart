import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/env/endpoint.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/quiz/data/model/quiz_mod.dart';
import 'package:sysbit/src/features/quiz/domain/repository/quiz_repo.dart';

class QuizRepoImpl implements QuizRepo {
  late DioHttp http;
  var preference = const HiveService(); 
  QuizRepoImpl() {
    http = DioHttp(
        xBaseUrl: Env.baseurl,
        
        );
  }
   
   @override
   Future<ApiResult<QuizMod>> get(String lessonId) async {
    var user = await preference.read<UserHive>(boxName: "vaultUser", key: "auth"); 
    return await http.getApi("/api/m/lesson/quiz?code=$lessonId",authorization: true,token: user?.accessToken,onSuccess: (response) {
          return  QuizMod.fromJson(response.data);
    },); 
  }


}