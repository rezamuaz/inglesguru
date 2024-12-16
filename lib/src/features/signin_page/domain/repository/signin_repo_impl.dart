import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/signin_page/data/model/register_req.dart';
import 'package:sysbit/src/features/signin_page/data/model/token_resp.dart';

import 'signin_repo.dart';

class SigninRepoImpl implements SigninRepo {
  DioHttp apiService = DioHttp.instance;
  SigninRepoImpl();

  @override
  Future<ApiResult<TokenResp>> register(RegisterReqMod req) async {
    apiService.configureDio(
      baseUrl: Constant.baseurl,
    );
    return await apiService.postApi(
     
      Constant.login,
      data: req,
      onSuccess: (response) {
        return TokenResp.fromJson(response.data["result"]);
      },
    );
  }

  @override
  Future<ApiResult<TokenResp>> retrivedToken(String refreshToken) async {
     apiService.configureDio(
      baseUrl: Constant.baseurl,
    );
    return await apiService.putApi(
      Constant.refreshEndpoit,
      data: {"refresh_token": refreshToken},
      onSuccess: (response) {
        return TokenResp.fromJson(response.data["result"]);
      },
    );
  }
}
