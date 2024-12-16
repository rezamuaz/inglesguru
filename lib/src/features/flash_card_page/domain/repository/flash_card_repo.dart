
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/auth_interceptor.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/flash_card_page/data/model/flash_card_mod.dart';

abstract class FlashCardRepo {
  Future<ApiResult<List<FlashCardItem>>> getRemote(String lessonId);
}

class FlashCardRepoImpl implements FlashCardRepo {
    DioHttp apiService = DioHttp.instance;

  @override
  Future<ApiResult<List<FlashCardItem>>> getRemote(String lessonId) async {
       apiService.configureDio(baseUrl: Constant.baseurl,
       );
    return await apiService.getApi(
      additionalInterceptors: [AuthInterceptor()],
      "${Constant.flashCard}?code=$lessonId",
      onSuccess: (response) => (response.data["result"] as List)
          .map(
            (e) => FlashCardItem.fromJson(e),
          )
          .toList(),
    );
  }

 
}
