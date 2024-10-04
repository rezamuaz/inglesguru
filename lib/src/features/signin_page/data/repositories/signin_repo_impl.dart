
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/common/dio_interceptor.dart';
import 'package:sysbit/src/core/env/endpoint.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/features/signin_page/data/model/register_req.dart';
import 'package:sysbit/src/features/signin_page/data/model/retrive_token_req.dart';
import 'package:sysbit/src/features/signin_page/data/model/token_resp.dart';

import 'signin_repo.dart';

class SigninRepoImpl implements SigninRepo {
  late DioHttp http;
  SigninRepoImpl() {
    http = DioHttp(
        xBaseUrl: Env.baseurl,interceptors: []
        );
  }
   
   @override
   Future<ApiResult<TokenResp>> register(RegisterReqMod req) async {
    return await http.postApi("/api/m/auth/login",data: req,onSuccess: (response) {
          return TokenResp.fromJson(response.data["result"]);
    },); 
  }

   @override
   Future<ApiResult<TokenResp>> retrivedToken(String refreshToken) async {
    return await http.putApi("/api/m/auth/refreshtoken",data: {"refresh_token": refreshToken},onSuccess: (response) {
          return TokenResp.fromJson(response.data["result"]);
    },); 
  }

}