import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/common/auth_interceptor.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/home_page/data/model/payment_created.dart';
import 'package:sysbit/src/features/home_page/data/model/price.dart';

abstract class HomeRemoteDatasource {
  Future<ApiResult<PaymentCreated>> createPayment();

}

class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
    DioHttp apiService = DioHttp.instance;
  HomeRemoteDatasourceImpl();
  @override
  Future<ApiResult<PaymentCreated>> createPayment() async {
    return  await apiService.postApi(
        additionalInterceptors: [AuthInterceptor()],
      Constant.createPayment,
      onSuccess: (response) => PaymentCreated.fromJson(response.data),
    );
   
  }

  
}
