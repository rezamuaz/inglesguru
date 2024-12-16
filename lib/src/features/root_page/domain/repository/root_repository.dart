import 'package:sysbit/src/core/common/auth_interceptor.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/constant/constant.dart';

abstract class RootRepository {
   Future<dynamic> updateFcm(String token );
}

class RootRepositoryImpl implements RootRepository {
     DioHttp apiService = DioHttp.instance;
  RootRepositoryImpl(); 
  @override
  Future<dynamic> updateFcm(String token ) async {
     apiService.configureDio(baseUrl: Constant.baseurl,
       );
   return await apiService.putApi(
      additionalInterceptors: [AuthInterceptor()],
      Constant.updateFcm,
      data: {"fcm_token": token},
      onSuccess: (res) => res,
    );
  }
}