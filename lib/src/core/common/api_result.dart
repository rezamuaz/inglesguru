import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sysbit/src/core/common/network_exceptions.dart';

part 'api_result.freezed.dart';

@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(
      {required T result, required bool success, required int rc}) = Success<T>;

  const factory ApiResult.failure(
      {required NetworkExceptions error, required String message}) = Failure<T>;
}
