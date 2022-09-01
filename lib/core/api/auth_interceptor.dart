import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_constants.dart';

class AuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (!options.queryParameters.containsKey(ApiConstants.apiKey)) {
      options.queryParameters
          .addEntries([const MapEntry('apiKey', ApiConstants.apiKey)]);
    }
    super.onRequest(options, handler);
  }
}
