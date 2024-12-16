import 'dart:developer';

import 'package:dio/dio.dart';

import 'api_result.dart';
import 'network_exceptions.dart';

class DioHttp {

 // Private constructor
  DioHttp._internal();

  // Static instance of DioHttp (singleton)
  static final DioHttp _instance = DioHttp._internal();

  // Getter for the singleton instance
  static DioHttp get instance => _instance;
  late Dio _dio;
  // late final List<Interceptor>? interceptors;
   // Configuration function
  void configureDio({
    required String baseUrl,
    Map<String, dynamic>? defaultHeaders,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    void Function(RequestOptions options, RequestInterceptorHandler handler)?
        onRequest,
    void Function(Response response, ResponseInterceptorHandler handler)?
        onResponse,
    void Function(DioException e, ErrorInterceptorHandler handler)? onError,
  }) {
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      sendTimeout:const Duration(seconds: 10) ,
      connectTimeout: connectTimeout ?? const Duration(seconds: 30),
      receiveTimeout: receiveTimeout ?? const Duration(seconds: 30),
      headers: defaultHeaders ??
          {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
    ));
    // _dio.interceptors.add(
    
    // );
  }
  // DioHttp({String? xBaseUrl, this.interceptors}) {
  //   // get api base url from .env file
  //   baseUrl = xBaseUrl ?? dotenv.env['BASE_URL'] ?? '';
  //   // set options
  //   _dio = Dio(BaseOptions(
  //       baseUrl: baseUrl,
  //       receiveDataWhenStatusError: true,
  //       sendTimeout: const Duration(seconds: 15),
  //       connectTimeout: const Duration(seconds: 15),
  //       receiveTimeout: const Duration(seconds: 15),
  //       responseType: ResponseType.json));
  //   // set request header
  //   _dio.options.headers['Accept'] = 'application/json';
  //   _dio.options.headers['Content-Type'] = 'application/json';

  //   if (interceptors?.isNotEmpty ?? false) {
  //     _dio.interceptors.addAll(interceptors!);
  //   }
  // }

  // Get : ---------------------------------------------------------------------
  Future<ApiResult<T>> getApi<T>(
    String endPoint, {
    // dynamic data,
    bool authorization = false,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
    List<Interceptor>? additionalInterceptors,
  }) async {
     if (additionalInterceptors != null) {
        // Adding interceptors dynamically for the individual request
        _dio.interceptors.addAll(additionalInterceptors);
      }
    return sendRequestApi(
        () => _dio.get(endPoint,
            // data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: token,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  Future<Response> get<T>(
    String endPoint, {
    dynamic data,
    bool authorization = false,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(
        () => _dio.get(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: token,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  // Post : --------------------------------------------------------------------

  Future<ApiResult<T>> postApi<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
     List<Interceptor>? additionalInterceptors,
  }) async {
    if (additionalInterceptors != null) {
        // Adding interceptors dynamically for the individual request
        _dio.interceptors.addAll(additionalInterceptors);
      }
    return sendRequestApi(
        () => _dio.post(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: token,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  Future<Response> post<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(int sent, int total)? onSendProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(() => _dio.post(
          endPoint,
          data: data,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onReceiveProgress,
          onReceiveProgress: onReceiveProgress,
        ));
  }

  // Patch : -------------------------------------------------------------------

  Future<ApiResult<T>> patchApi<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
     List<Interceptor>? additionalInterceptors,
  }) async {
     if (additionalInterceptors != null) {
        // Adding interceptors dynamically for the individual request
        _dio.interceptors.addAll(additionalInterceptors);
      }
    return sendRequestApi(
        () => _dio.patch(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: token,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  Future<Response> patch<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(int sent, int total)? onSendProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    
    Response<dynamic> response = await _dio.patch(endPoint,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);

    return response;
  }

  // Put : ---------------------------------------------------------------------

  Future<ApiResult<T>> putApi<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
     List<Interceptor>? additionalInterceptors,
  }) async {
     if (additionalInterceptors != null) {
        // Adding interceptors dynamically for the individual request
        _dio.interceptors.addAll(additionalInterceptors);
      }
    return sendRequestApi(
        () => _dio.put(endPoint,
            data: data,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress),
        token: token,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  Future<Response> put<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(int sent, int total)? onSendProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    
    Response<dynamic> response = await _dio.put(endPoint,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
    return response;
  }

  // Delete : ------------------------------------------------------------------

  Future<ApiResult<T>> deleteApi<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
     List<Interceptor>? additionalInterceptors,
  }) async {
     if (additionalInterceptors != null) {
        // Adding interceptors dynamically for the individual request
        _dio.interceptors.addAll(additionalInterceptors);
      }
    return sendRequestApi(
        () => _dio.delete(endPoint,
            data: data, options: options, cancelToken: cancelToken),
        token: token,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  Future<Response> delete<T>(
    String endPoint, {
    dynamic data,
    bool authorization = true,
    String? token,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
    dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    return sendRequest(
        () => _dio.delete(endPoint,
            data: data, options: options, cancelToken: cancelToken),
        token: token,
        authorization: authorization,
        onSuccess: onSuccess);
  }

  Future<ApiResult<T>> sendRequestApi<T>(
    Future<Response<dynamic>> Function() httpRequest, {
    bool authorization = false,
    String? token,
    dynamic Function(Response<dynamic>)? onSuccess,
    dynamic Function(int sent, int total)? onSendProgress,
    
  }) async {
    // if (authorization) setAuthorizationApi(token);
    // _setAcceptLanguage();

    try {
      Response<dynamic> response = await httpRequest();
      return ApiResult.success(
        success: true,
        rc: 0,
        result: onSuccess?.call(response) ?? "Sukses",
      );
    } catch (e) {
      // Check if the error has a response to extract message and rc
    
      return ApiResult.failure(
          error: NetworkExceptions.getDioException(e), message: "");
    }
  }

  void setAuthorizationApi(String? token) {
    if (token != null && token.isNotEmpty) {
      // log('#=====================auth');
      // log('Login as token: Bearer $token');
      // log('=====================#');
      _dio.options.headers['Authorization'] = 'Bearer $token';
    }
  }

  Future<Response> sendRequest<T>(
    Future<Response<dynamic>> Function() httpRequest, {
    bool authorization = false,
    String? token,
    dynamic Function(Response<dynamic>)? onSuccess,
    dynamic Function(int sent, int total)? onSendProgress,
  }) async {
    if (authorization) setAuthorization(token);

    return httpRequest();
  }

  void setAuthorization(String? token) {
    if (token != null && token.isNotEmpty) {
      log('#=====================auth');
      log('Login as token: Bearer $token');
      log('=====================#');
      _dio.options.headers['Authorization'] = 'Bearer $token';
    }
  }

  // void _setAcceptLanguage() {
  //   _dio.options.headers['Accept-Language'] =
  //       UserPrefs().getLocale()?.languageCode;
  // }
}
