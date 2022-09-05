import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drecipe/features/common/domain/failures/failure.dart';

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
      return const Failure.offline();
    }

    switch (response!.statusCode) {
      case 500:
        return const Failure.serverErrorGeneral();
      case 403:
        return const Failure.forbidden();
      case 401:
        return const Failure.unauthorizedAccess();
      //TODO: handle 402
      default:
        return const Failure.unexpectedDataError();
    }
  }
}
