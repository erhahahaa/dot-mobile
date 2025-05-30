import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dot_coaching/core/services/services.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/material.dart';

class DioInterceptor extends Interceptor with FirebaseCrashLoggerService {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String headerMessage = "";
    options.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    try {
      options.queryParameters.forEach(
        (k, v) => debugPrint(
          '► $k: $v',
        ),
      );
    } catch (_) {}
    try {
      String prettyJson = "";
      if (options.data is FormData) {
        prettyJson = options.data.toString();
      } else {
        const JsonEncoder encoder = JsonEncoder.withIndent('  ');
        prettyJson = encoder.convert(options.data);
      }
      Log.debug(
        // ignore: unnecessary_null_comparison
        "REQUEST ► ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"${options.baseUrl}${options.path}"}\n\n"
        "Headers:\n"
        "$headerMessage\n"
        "❖ QueryParameters : \n"
        "Query: ${options.queryParameters}\n"
        "Body: $prettyJson",
      );
    } catch (e, stackTrace) {
      Log.error("Failed to extract json request $e");
      nonFatalError(error: e, stackTrace: stackTrace);
    }

    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    Log.error(
      "<-- ${err.message} ${err.response?.requestOptions != null ? (err.response!.requestOptions.baseUrl + err.response!.requestOptions.path) : 'URL'}\n\n"
      "${err.response != null ? err.response?.data : 'Unknown Error'}",
    );
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    String headerMessage = "";
    response.headers.forEach((k, v) => headerMessage += '► $k: $v\n');

    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    final String prettyJson = encoder.convert(response.data);
    Log.debug(
      // ignore: unnecessary_null_comparison
      "◀ RESPONSE ${response.statusCode} ${response.requestOptions != null ? (response.requestOptions.baseUrl + response.requestOptions.path) : 'URL'}\n\n"
      // "Headers:\n"
      // "$headerMessage\n"
      "❖ Results : \n"
      "Response: $prettyJson",
    );
    super.onResponse(response, handler);
  }
}
