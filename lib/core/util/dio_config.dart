import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:wishey/core/service_locator/service_locator.dart';
import 'package:wishey/core/util/logger.dart';

void configureDio() {
  final dio = injector<Dio>();

  dio.options.baseUrl = dotenv.env['SERVER_ADDRESS']!;
  dio.interceptors.add(_makeInterceptor());
}

InterceptorsWrapper _makeInterceptor() => InterceptorsWrapper(
      onRequest: (options, handler) {
        logger.i('Requesting data from ${options.path}');
        if (options.data != null) {
          logger.i('Request data:');
          logger.i(options.data);
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        logger.i('=> ${response.statusCode}');
        logger.i(response.data);
        return handler.next(response);
      },
      onError: (DioError e, handler) {
        logger.e(e.message);
        return handler.next(e);
      },
    );
