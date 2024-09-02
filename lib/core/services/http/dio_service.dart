import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:permission_handler/permission_handler.dart';

class HttpCallback {
  ProgressCallback? onReceiveProgress;
  ProgressCallback? onSendProgress;
  CancelToken? cancelToken;

  HttpCallback({
    this.onReceiveProgress,
    this.onSendProgress,
    this.cancelToken,
  });
}

@lazySingleton
class DioService with FirebaseCrashLoggerService {
  String? _auth;
  late Dio? _dio;
  final IsarService _local;

  DioService(this._local) {
    try {
      final token = _local.isar.users.where().tokenIsNotNull().findAll();
      if (token.isNotEmpty) {
        _auth = token.first.token;
      }
      _dio = _createDio();
      _dio?.interceptors.add(DioInterceptor());
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
  }

  Dio get dio {
    if (_dio != null && _auth != null) return _dio!;
    try {
      final token = _local.isar.users.where().tokenIsNotNull().findAll();
      if (token.isNotEmpty) {
        _auth = token.first.token;
      }
      _dio = _createDio();
      _dio?.interceptors.add(DioInterceptor());
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
    return _dio!;
  }

  Future<void> clearAuth() async {
    _auth = null;
    _dio = null;
    final token =
        await _local.isar.users.where().tokenIsNotNull().findAllAsync();
    Log.info('====== USER TOKEN ======: $token');
    if (token.isNotEmpty) {
      _auth = token.first.token;
    }
    _dio = _createDio();
    _dio?.interceptors.add(DioInterceptor());
  }

  Dio _createDio() => Dio(
        BaseOptions(
          baseUrl: ListAPI.BASE_URL,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            if (_auth != null) ...{
              'Authorization': "Bearer $_auth",
            },
          },
          receiveTimeout: const Duration(minutes: 10),
          connectTimeout: const Duration(minutes: 10),
          validateStatus: (int? status) {
            return status! > 0;
          },
        ),
      );

  @disposeMethod
  void dispose() {
    _dio?.close();
    _dio = null;
  }

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    JSONIsolateConverter<T>? converter,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
      );

      if (response.statusCode == 400) {
        return const Left(BadRequestFailure('Bad Request'));
      }

      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      if (kIsWeb || kIsWasm) return Right(converter!(response.data));
      if (converter == null) {
        return Right(response.data as T);
      } else {
        final isolateParse = JSONIsolateParser<T>(
          response.data as Map<String, dynamic>,
          converter,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      }
    } on DioException catch (e, stackTrace) {
      return handleException(e, stackTrace);
    }
  }

  Future<Either<Failure, T>> postRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    List<dynamic>? listData,
    FormData? formData,
    JSONIsolateConverter<T>? converter,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.post(
        url,
        data: listData ?? data ?? formData,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );

      if (response.statusCode == 400) {
        return const Left(BadRequestFailure('Bad Request'));
      }

      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      if (kIsWeb || kIsWasm) return Right(converter!(response.data));
      if (converter == null) {
        return Right(response.data as T);
      } else {
        final isolateParse = JSONIsolateParser<T>(
          response.data as Map<String, dynamic>,
          converter,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      }
    } on DioException catch (e, stackTrace) {
      return handleException(e, stackTrace);
    }
  }

  Future<Either<Failure, T>> putRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    List<dynamic>? listData,
    FormData? formData,
    Map<String, dynamic>? queryParameters,
    JSONIsolateConverter<T>? converter,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.put(
        url,
        data: listData ?? data ?? formData,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
      );

      if (response.statusCode == 400) {
        return const Left(BadRequestFailure('Bad Request'));
      }

      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      if (kIsWeb || kIsWasm) return Right(converter!(response.data));

      if (converter == null) {
        return Right(response.data as T);
      } else {
        final isolateParse = JSONIsolateParser<T>(
          response.data as Map<String, dynamic>,
          converter,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      }
    } on DioException catch (e, stackTrace) {
      return handleException(e, stackTrace);
    }
  }

  Future<Either<Failure, T>> deleteRequest<T>(
    String url, {
    Map<String, dynamic>? data,
    JSONIsolateConverter<T>? converter,
    CancelToken? cancelToken,
  }) async {
    try {
      final response = await dio.delete(
        url,
        data: data,
        cancelToken: cancelToken,
      );

      if (response.statusCode == 400) {
        return const Left(BadRequestFailure('Bad Request'));
      }

      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      if (kIsWeb || kIsWasm) return Right(converter!(response.data));
      if (converter == null) {
        return Right(response.data as T);
      } else {
        final isolateParse = JSONIsolateParser<T>(
          response.data as Map<String, dynamic>,
          converter,
        );
        final result = await isolateParse.parseInBackground();
        return Right(result);
      }
    } on DioException catch (e, stackTrace) {
      return handleException(e, stackTrace);
    }
  }

  Future<Either<Failure, File>> downloadRequest(
    String url,
    String savePath, {
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final perm = await _storagePermission();
      if (perm == false) {
        return const Left(StorageFailure(message: 'Permission Denied'));
      }

      final response = await Dio().download(
        url,
        savePath,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
      );

      if (response.statusCode == 400) {
        return const Left(BadRequestFailure('Bad Request'));
      }

      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      return Right(File(savePath));
    } on DioException catch (e, stackTrace) {
      return handleException(e, stackTrace);
    }
  }

  FutureOr<Either<Failure, T>> handleException<T>(
    DioException e,
    StackTrace stackTrace,
  ) {
    if (e.type == DioExceptionType.connectionTimeout) {
      return const Left(ServerFailure(message: 'Connection Timeout'));
    }

    final response = e.response;
    if (response == null) {
      nonFatalError(error: e, stackTrace: stackTrace);
      return const Left(ServerFailure(message: 'Connection Timeout'));
    }

    final responseData = response.data;

    return Left(ServerFailure(
      message: _extractMessageFromError(responseData) ?? 'Unknown Error',
    ));
  }

  String? _extractMessageFromError(dynamic error) {
    if (error is String) {
      return error;
    }
    if (error is Map<String, dynamic>) {
      final message = error['errors'];
      if (message is List) {
        return message.first;
      }
      if (message is Map<String, dynamic>) {
        return message.values.first;
      }
      if (message is String) {
        return message;
      }
    }
    if (error is List) {
      return _extractMessageFromError(error.first);
    }
    return null;
  }

  Future<bool> _storagePermission() async {
    final info = DeviceInfoPlugin();
    final androidInfo = await info.androidInfo;
    final androidVersion = int.parse(androidInfo.version.release);
    bool havePermission = false;

    if (androidVersion >= 13) {
      final request = await [
        Permission.videos,
        Permission.photos,
      ].request();

      havePermission =
          request.values.every((status) => status == PermissionStatus.granted);
    } else {
      final status = await Permission.storage.request();
      havePermission = status.isGranted;
    }

    if (!havePermission) {
      // if no permission then open app-setting
      await openAppSettings();
    }

    return havePermission;
  }
}
