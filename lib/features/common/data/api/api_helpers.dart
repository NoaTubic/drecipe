import 'dart:io';
import 'package:dio/dio.dart';
import 'package:drecipe/features/common/domain/entities/failure.dart';
import 'package:drecipe/generated/l10n.dart';

extension DioErrorExtension on DioError {
  bool isNoInternetConnectionError() {
    return type == DioErrorType.other &&
        error != null &&
        error is SocketException;
  }
}

extension NetworkHandler on DioError {
  Failure handleFailure() {
    if (error is SocketException ||
        type == DioErrorType.connectTimeout ||
        type == DioErrorType.other) {
      return Failure.generic(title: S.current.failure_offline);
    }

    switch (response!.statusCode) {
      case 500:
        return Failure.generic();
      case 403:
        return Failure.generic(title: S.current.failure_forbidden);
      case 401:
        return Failure.generic(title: S.current.failure_unauthorized_access);
      //TODO: handle 402
      default:
        return Failure.generic(title: S.current.failure_unexpected_data_error);
    }
  }
}
