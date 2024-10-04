import 'package:dio/dio.dart';
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/common/dio_interceptor.dart';
import 'package:sysbit/src/core/env/endpoint.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';
import 'package:sysbit/src/features/lessons_page/data/model/lesson_mod.dart';
import 'package:sysbit/src/features/lessons_page/domain/repository/lesson_repo.dart';

class LessonRepoImpl implements LessonRepo {
  late DioHttp http;
  var preference = const HiveService(); 
  LessonRepoImpl() {
    http = DioHttp(
        xBaseUrl: Env.baseurl,interceptors: [DioInterceptor()]
        
        );
  }
   
   @override
   Future<ApiResult<List<LessonItem>>> get() async {
    var user = await preference.read<UserHive>(boxName: "vaultUser", key: preference.authKey);
    return await http.getApi("/api/m/lesson",authorization: true,token: user?.accessToken,onSuccess: (response) {
          return (response.data["result"] as List).map((e) => LessonItem.fromJson(e)).toList();
    },); 
  }

   @override
  Future<ApiResult<List<String>>> getAssets(String lessonId) async {
     var user = await preference.read<UserHive>(boxName: "vaultUser", key: preference.authKey);
    return await http.getApi(
      "/api/m/lesson/assets?code=$lessonId",
      authorization: true,token: user?.accessToken,
      onSuccess: (response) {
    
        return (response.data["result"] as List).map<String>((e) => e["url"] as String).toList();
      },
    );
  }

   
}