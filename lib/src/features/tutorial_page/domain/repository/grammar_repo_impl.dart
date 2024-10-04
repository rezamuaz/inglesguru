
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/common/dio_interceptor.dart';
import 'package:sysbit/src/core/env/endpoint.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/tutorial_page/data/repository/grammar_repo.dart';

class GrammarRepoImpl implements GrammarRepo {
  late DioHttp http;
  var preference = const HiveService();
  GrammarRepoImpl() {
    http = DioHttp(
      xBaseUrl: Env.baseurl,interceptors: [DioInterceptor()]
    );
  }

  @override
  Future<ApiResult<String>> get(String lessonId) async {
 var user = await preference.read<UserHive>(boxName: "vaultUser", key: preference.authKey);
    return await http.getApi(
      "/api/m/lesson/detail?code=$lessonId",
      authorization: true,token: user?.accessToken,
    
      onSuccess: (response) {
        return ;
      },
    );
  }
}
