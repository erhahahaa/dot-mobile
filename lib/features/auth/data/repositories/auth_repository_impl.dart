import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remote;
  final AuthLocalDataSource _local;

  AuthRepositoryImpl(this._remote, this._local);

  @override
  Future<Either<Failure, bool>> signOut() async {
    await _local.clearSignedInUser();
    return const Right(true);
  }

  @override
  Future<Either<Failure, UserModel>> me() async {
    final res = await _remote.me();

    return res.fold(
      (failure) => Left(failure),
      (success) {
        _local.clearSignedInUser();
        _local.cacheSignedInUser(success);
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, UserModel>> signIn(
    SignInParams params,
  ) async {
    final res = await _remote.signIn(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        _local.clearSignedInUser();
        _local.cacheSignedInUser(success);
        return Right(success);
      },
    );
  }

  @override
  Future<Either<Failure, UserModel>> signUp(
    SignUpParams params,
  ) async {
    final res = await _remote.signUp(params);

    return res.fold(
      (failure) => Left(failure),
      (success) {
        return Right(success);
      },
    );
  }
}
