import 'package:dio/dio.dart';
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/common/dio_interceptor.dart';
import 'package:sysbit/src/core/env/endpoint.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/conversation_page/data/model/lesson_data.dart';
import 'package:sysbit/src/features/conversation_page/data/repository/conv_repo.dart';

class ConvRepoImpl implements ConvRepo {
  late DioHttp http;
  var preference = const HiveService();
  ConvRepoImpl() {
    http = DioHttp(
      xBaseUrl: Env.baseurl,interceptors: [DioInterceptor()]
    );
  }

  @override
  Future<ApiResult<LessonData>> get(String lessonId) async {
 var user = await preference.read<UserHive>(boxName: "vaultUser", key: preference.authKey);
    return await http.getApi(
      "/api/m/lesson/detail?code=$lessonId",
      authorization: true,token: user?.accessToken,
      options: Options(headers: {"accept-language": "id"}),
      onSuccess: (response) {
        return LessonData.fromJson(response.data["result"]);
      },
    );
  }
}
