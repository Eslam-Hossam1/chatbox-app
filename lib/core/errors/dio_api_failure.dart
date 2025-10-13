import 'dart:developer';

import 'package:dio/dio.dart';

import 'api_error_model/api_error_model.dart';
import 'api_failure.dart';

class DioApiFailure extends ApiFailure {
  DioApiFailure(
    super.errMsg,
  );

  factory DioApiFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return DioApiFailure("Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return DioApiFailure("Send timeout with ApiServer");

      case DioExceptionType.receiveTimeout:
        return DioApiFailure("Receive timeout with ApiServer");

      case DioExceptionType.badCertificate:
        return DioApiFailure("Bad Certificate");

      case DioExceptionType.badResponse:
        return DioApiFailure.frombadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return DioApiFailure("Request to ApiServer was canceld");
      case DioExceptionType.connectionError:
        return DioApiFailure("No Internet Connection");
      case DioExceptionType.unknown:
        return DioApiFailure("Unexpected Error, Please try again");
    }
  }
  factory DioApiFailure.frombadResponse(int status, dynamic responseBody) {
    if (responseBody != null) {
      ApiErrorModel errorModel = ApiErrorModel.fromJson(responseBody);
      return DioApiFailure(errorModel.message);
    } else {
      return DioApiFailure.fromStatusCode(status);
    }
  }

  factory DioApiFailure.fromStatusCode(int status) {
    switch (status) {
      case 400:
        return DioApiFailure('Bad Request');
      case 401:
        return DioApiFailure('Unauthorized');
      case 403:
        return DioApiFailure('Forbidden');
      case 404:
        return DioApiFailure('Not Found');
      case 409:
        return DioApiFailure('Conflict');
      case 422:
        return DioApiFailure('Unprocessable Entity');
      case 500:
        return DioApiFailure('Internal Server Error');
      case 502:
        return DioApiFailure('Bad Gateway');
      case 503:
        return DioApiFailure('Service Unavailable');
      case 504:
        return DioApiFailure('Gateway Timeout');
      default:
        return DioApiFailure('Unknown Error');
    }
  }
  factory DioApiFailure.unknownException({
    required String unKnownExceptionMsg,
    String errMsg = "UnKnown Error",
  }) {
    log("UnKnownFailure: $unKnownExceptionMsg");
    return DioApiFailure(errMsg);
  }
  factory DioApiFailure.noInternetConnection({
    String errMsg = "No Internet Connection",
  }) {
    return DioApiFailure(errMsg);
  }
}
