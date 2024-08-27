import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Failure, UserModel>> signIn(SignInParams params);
  Future<Either<Failure, UserModel>> signUp(SignUpParams params);
  Future<Either<Failure, UserModel>> me();
  Future<bool> signOut();
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDatasourceImpl implements AuthRemoteDataSource {
  final DioService _remote;

  AuthRemoteDatasourceImpl(this._remote);

  @override
  Future<bool> signOut() async {
    _remote.clearAuth();
    return Future.value(true);
  }

  @override
  Future<Either<Failure, UserModel>> me() async {
    final res = await _remote.getRequest(
      ListAPI.AUTH_ME,
      converter: (res) => UserModel.fromJson(res['data']),
    );

    await _remote.clearAuth();
    return res;
  }

  @override
  Future<Either<Failure, UserModel>> signIn(
    SignInParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.AUTH_SIGN_IN,
      data: params.toJson(),
      converter: (res) => UserModel.fromJson(res['data']),
    );
    await _remote.clearAuth();

    return res;
  }

  @override
  Future<Either<Failure, UserModel>> signUp(
    SignUpParams params,
  ) async {
    final res = await _remote.postRequest(
      ListAPI.AUTH_SIGN_UP,
      data: params.toJson(),
      converter: (res) => UserModel.fromJson(res['data']),
    );
    await _remote.clearAuth();

    return res;
  }
}
