import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'api_result.dart';
import 'network_exceptions.dart';

class DioHttp {
  late final String baseUrl;

  late Dio _dio;
  late final List<Interceptor>? interceptors;

  DioHttp(
      {String? xBaseUrl,
      List<Interceptor>? this.interceptors}) {
    // get api base url from .env file
    baseUrl = xBaseUrl ?? dotenv.env['BASE_URL'] ?? '';
    // set options
    _dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
        responseType: ResponseType.json));
    // set request header
    _dio.options.headers['Accept'] = 'application/json';
     _dio.options.headers['Content-Type'] = 'application/json';
   
    if (interceptors?.isNotEmpty ?? false) {
      _dio.interceptors.addAll(interceptors!);
    }
  }

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
  }) async {
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
  }) async {
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
    // dynamic Function(Response<dynamic>)? onSuccess,
  }) async {
    Response<dynamic> response = await _dio.post(endPoint,
        data: data,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onReceiveProgress,
        onReceiveProgress: onReceiveProgress);

    return response;
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
  }) async {
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
  }) async {
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
  }) async {
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
    if (authorization) setAuthorizationApi(token);
    // _setAcceptLanguage();

    try {
      Response<dynamic> response = await httpRequest();
      return ApiResult.success(
        data: onSuccess?.call(response) ?? "Sukses",
      );
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
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

