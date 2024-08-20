import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';

// FPUC = Future Params Use Case
abstract class FPUC<T, P> {
  Future<Either<Failure, T>> call(P params);
}

// FNPUC = Future No Params Use Case
abstract class FNPUC<T> {
  Future<Either<Failure, T>> call();
}

// SUC = Stream Use Case
abstract class SUC<T, P> {
  Stream<Either<Failure, T>> call(P params);
}

// SNPC = Stream No Params Use Case
abstract class SNPC<T> {
  Stream<Either<Failure, T>> call();
}

// EPUC = Either Params Use Case
abstract class EPUC<T, P> {
  Either<Failure, T> call(P params);
}

// ENPUC = Either No Params Use Case
abstract class ENPUC<T> {
  Either<Failure, T> call();
}
