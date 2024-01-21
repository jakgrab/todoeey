import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../common/constants/constants.dart';

class ApiClient {
  ApiClient() {
    client = _createDio();
  }

  late final Dio client;

  static const _receiveTimeout = 30;
  static const _connectTimeout = 15;
  static const _sendTimeout = 15;

  Dio _createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        receiveTimeout: const Duration(seconds: _receiveTimeout),
        connectTimeout: const Duration(seconds: _connectTimeout),
        sendTimeout: const Duration(seconds: _sendTimeout),
        contentType: Headers.jsonContentType,
      ),
    );

    dio.interceptors.addAll(
      [
        if (kDebugMode)
          PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseBody: true,
              responseHeader: true,
              error: true,
              compact: true,
              maxWidth: 90),
      ],
    );

    return dio;
  }
}
