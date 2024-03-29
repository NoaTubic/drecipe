import 'package:dio/dio.dart';
import 'package:drecipe/features/common/data/api/api_constants.dart';

//SPOONACULAR API
// class AuthInterceptor extends InterceptorsWrapper {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     if (!options.queryParameters.containsKey(ApiConstants.apiKey)) {
//       options.queryParameters.addEntries([
//         const MapEntry('apiKey', ApiConstants.apiKey),
//       ]);
//     }
//     super.onRequest(options, handler);
//   }
// }

//RAPID API
class AuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    if (!options.headers.containsKey(ApiConstants.rapidApiKey) &&
        !options.headers.containsKey(ApiConstants.rapidApiHost)) {
      options.headers.addEntries(
        [
          MapEntry('X-RapidAPI-Key', ApiConstants.rapidApiKey),
          const MapEntry('X-RapidAPI-Host', ApiConstants.rapidApiHost),
        ],
      );
    }
    super.onRequest(options, handler);
  }
}
