import 'package:dio/dio.dart';

abstract class Failure {
  /// ignore: avoid_unused_constructor_parameters
  const Failure([List properties = const <dynamic>[]]);

  String get message;
}

class ServerFailure extends Failure {
  @override
  final String message;
  final DioException? exception;

  const ServerFailure({required this.message, this.exception});

  @override
  bool operator ==(Object other) =>
      other is ServerFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class StorageFailure extends Failure {
  @override
  final String message;

  const StorageFailure({required this.message});

  @override
  bool operator ==(Object other) =>
      other is ServerFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}
