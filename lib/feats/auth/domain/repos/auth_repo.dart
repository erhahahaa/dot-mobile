import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/feats/feats.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserModel>> signIn(
    LoginParams params,
  );
  Future<Either<Failure, UserModel>> signUp(
    RegisterParams params,
  );
  Future<Either<Failure, UserModel>> me();
  Future<Either<Failure, bool>> logout();
}
