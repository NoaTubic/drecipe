import 'package:dio/dio.dart';
import 'package:drecipe/core/api/api_client.dart';
import 'package:drecipe/core/api/api_constants.dart';
import 'package:drecipe/core/api/auth_interceptor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final dioProvider = Provider<Dio>((ref) {
  final dioInstance = Dio(
    BaseOptions(
      baseUrl: ApiConstants.rapidApiBaseUrl,
      contentType: 'application/json',
    ),
  )
    ..interceptors.add(ref.read(authInterceptorProvider))
    ..interceptors.add(ref.read(prettyDioLoggerProvider));
  return dioInstance;
});

final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient.createDefault(
    ref.read(dioProvider),
  ),
);

final authInterceptorProvider = Provider<AuthInterceptor>(
  (ref) => AuthInterceptor(),
);

final prettyDioLoggerProvider = Provider<PrettyDioLogger>(
  (ref) => PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 100,
  ),
);
