import 'package:sysbit/src/core/common/api_result.dart';
import 'package:sysbit/src/core/common/auth_interceptor.dart';
import 'package:sysbit/src/core/common/dio_http.dart';
import 'package:sysbit/src/core/constant/constant.dart';
import 'package:sysbit/src/features/home_page/data/model/payment_created.dart';

abstract class HomeRepo {
  Future<ApiResult<PaymentCreated>> createdPaymentRemote();
}

class HomeRepoImpl implements HomeRepo {
   DioHttp apiService = DioHttp.instance;
  HomeRepoImpl();

  @override
  Future<ApiResult<PaymentCreated>> createdPaymentRemote() async {
       apiService.configureDio(baseUrl: Constant.baseurl,
       );
    return await apiService.postApi(
      additionalInterceptors: [AuthInterceptor()],
      Constant.createPayment,
      onSuccess: (res) => PaymentCreated.fromJson(res.data["result"]),
    );
  }
}
