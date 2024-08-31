import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_usecase.freezed.dart';
part 'sign_in_usecase.g.dart';

@lazySingleton
class SignInUsecase extends FPUC<UserModel, SignInParams> {
  final AuthRepository _repo;

  SignInUsecase(this._repo);

  @override
  Future<Either<Failure, UserModel>> call(SignInParams params,
          {HttpCallback? callback}) =>
      _repo.signIn(params);
}

@freezed
class SignInParams with _$SignInParams {
  const factory SignInParams({
    required String identifier,
    required String password,
  }) = _SignInParams;

  factory SignInParams.fromJson(Map<String, dynamic> json) =>
      _$SignInParamsFromJson(json);
}
