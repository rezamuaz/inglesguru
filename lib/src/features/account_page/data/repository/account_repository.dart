import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/constant/constant.dart';

import '../../../../core/common/api_result.dart';

abstract class AccountRepo {
  Future<ApiResult<String>> getTermsAndConditions();
  Future<ApiResult<String>> getPrivacyPolicy();
}

class AccountRepoImpl implements AccountRepo {
    DioHttp apiService = DioHttp.instance;
  AccountRepoImpl(); 
  @override
  Future<ApiResult<String>> getTermsAndConditions() async {
        apiService.configureDio(baseUrl: Constant.baseurl,
       );
    return await apiService.getApi(
      additionalInterceptors: [],
      Constant.termsAndConditions,
      onSuccess: (json) => json.data,
    );
  }

  @override
  Future<ApiResult<String>> getPrivacyPolicy() async {
        apiService.configureDio(baseUrl: Constant.baseurl,
       );
    return await apiService.getApi(
      additionalInterceptors: [],
      Constant.privacypolicy,
      onSuccess: (json) => json.data,
    );
  }

}