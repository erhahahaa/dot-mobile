import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:isar/isar.dart';
import 'package:permission_handler/permission_handler.dart';

class DioClient with FirebaseCrashLogger {
  String? _auth;
  late Dio _dio;
  final IsarClient _local;

  DioClient(this._local) {
    try {
      final token = _local.users.filter().tokenIsNotEmpty().findAllSync();
      if (token.isNotEmpty) {
        _auth = token.first.token;
      }
      _dio = _createDio();
      _dio.interceptors.add(DioInterceptor());
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
  }

  Dio get dio {
    try {
      final token = _local.users.filter().tokenIsNotEmpty().findAllSync();
      if (token.isNotEmpty) {
        _auth = token.first.token;
      }
      _dio = _createDio();
      _dio.interceptors.add(DioInterceptor());
    } catch (error, stackTrace) {
      nonFatalError(error: error, stackTrace: stackTrace);
    }
    return _dio;
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

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required JSONIsolateConverter<T> converter,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await dio.get(
        url,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );

      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      final isolateParse = JSONIsolateParser<T>(
        response.data as Map<String, dynamic>,
        converter,
      );
      final result = await isolateParse.parseInBackground();

      return Right(result);
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
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final response = await dio.post(
        url,
        data: listData ?? data ?? formData,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
      );
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
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
    Function(int, int)? onSendProgress,
    Function(int, int)? onReceiveProgress,
  }) async {
    try {
      final response = await dio.put(
        url,
        data: listData ?? data ?? formData,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

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
  }) async {
    try {
      final response = await dio.delete(
        url,
        data: data,
      );
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
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
  }) async {
    try {
      final perm = await _storagePermission();
      if (perm == false) {
        return const Left(
          ServerFailure(
            message: 'Permission Denied',
          ),
        );
      }

      final response = await Dio().download(
        url,
        savePath,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
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
      DioException e, StackTrace stackTrace) {
    if (e.type == DioExceptionType.connectionTimeout) {
      return Left(
        ServerFailure(
          message: 'Connection Timeout',
          exception: e,
        ),
      );
    }

    if (e.response?.data is String) {
      log.e('Error: ${e.response?.data}');
      return Left(
        ServerFailure(
          message: e.response?.data as String,
          exception: e,
        ),
      );
    }

    final res = e.response?.data as Map<String, dynamic>?;
    if (res == null) {
      return Left(
        ServerFailure(
          message: "Internal Server Error",
          exception: e,
        ),
      );
    }
    nonFatalError(error: e, stackTrace: stackTrace);
    return Left(
      ServerFailure(
        message: e.response == null
            ? e.message ?? "Internal Server Error"
            : res['error'] as String? ?? "Internal Server Error",
        exception: e,
      ),
    );
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
