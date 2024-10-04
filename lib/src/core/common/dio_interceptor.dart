import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sysbit/src/app.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/core/env/endpoint.dart';
import 'package:sysbit/src/core/local_storage/hive/hive_service.dart';
import 'package:sysbit/src/core/local_storage/model/user_hive.dart';
import 'package:sysbit/src/features/signin_page/presentation/pages/signin_page.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log("Request[${options.method}] => PATH: ${options.path}");
    
    logger.i("${options.baseUrl}${options.path}");
    logger.i(options.data);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log("Response Status Code: [${response.statusCode}]");
   
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async{
    log("Error[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}");
     log("Response: [${err.response?.data["error"]}]");

       if (err.response?.statusCode == 403 &&
        err.response?.data['rc'] == 40301) {
          var preference = const HiveService();
    var user = await preference.read<UserHive>(boxName: "vaultUser", key: preference.authKey);
      try {

        log(user?.refreshToken??"");
        final response = await Dio().put(
          "${Env.baseurl}/api/m/auth/refreshtoken",
          options: Options(
            contentType: "application/json",
          ),
          data: {
            "refresh_token": user?.refreshToken??"",
          },
        );
        final newAccessToken = response.data['result']['access_token'];
        var newUser = user?.copyWith(accessToken: newAccessToken);
       await preference.write<UserHive>(boxName: "vaultUser", key: preference.authKey,value: newUser);
       
        err.requestOptions.headers['Authorization'] = 'Bearer $newAccessToken';
      } on DioException catch (_) {
        
        // log(e.toString());
          googleSignIn.disconnect();
          preference.clear<UserHive>(boxName: "vaultUser", key: "auth");
        navigatorKey.currentState?.pushAndRemoveUntil(MaterialPageRoute(builder: (context) => SigninPage(),), (route) => false);
      }

      return handler.resolve(await Dio().fetch(err.requestOptions));
    }
    logger.e(err.response?.statusCode);
    logger.e(err.response?.data);
    super.onError(err, handler);
  }
}
