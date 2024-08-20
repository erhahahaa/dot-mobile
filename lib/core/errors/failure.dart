import 'package:dio/dio.dart';

abstract class Failure {
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

class NoContentFailure extends Failure {
  @override
  final String message;

  const NoContentFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is NoContentFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class BadRequestFailure extends Failure {
  @override
  final String message;

  const BadRequestFailure(this.message);

  @override
  bool operator ==(Object other) =>
      other is BadRequestFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}

class FirebaseFailure extends Failure {
  @override
  final String message;

  const FirebaseFailure({required this.message});

  @override
  bool operator ==(Object other) =>
      other is FirebaseFailure && other.message == message;

  @override
  int get hashCode => message.hashCode;
}
