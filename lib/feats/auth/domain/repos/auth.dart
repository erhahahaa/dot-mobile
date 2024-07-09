import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class AuthRepo {
  Future<Either<Failure, TokenEntity>> login(
    LoginParams params,
  );
  Future<Either<Failure, TokenEntity>> register(
    RegisterParams params,
  );
  Future<Either<Failure, TokenEntity>> me();
  Future<Either<Failure, bool>> logout();
}
