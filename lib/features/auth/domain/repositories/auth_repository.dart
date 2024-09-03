import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> signIn(
    SignInParams params,
  );
  Future<Either<Failure, UserModel>> signUp(
    SignUpParams params,
  );
  Future<Either<Failure, UserModel>> me();
  Future<Either<Failure, bool>> signOut();
}
