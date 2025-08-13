import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../config/env.dart' show Env;

part 'tmdb_rest_client_provider.g.dart';

@Riverpod(keepAlive: true)
Dio tmdbRestClient(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: Env.tmdbApiBaseUrl,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': Env.theMovieDbApiKey.isNotEmpty
            ? 'Bearer ${Env.theMovieDbApiKey}'
            : '',
      },
    ),
  );

  dio.interceptors.addAll([
    LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  ]);

  return dio;
}
