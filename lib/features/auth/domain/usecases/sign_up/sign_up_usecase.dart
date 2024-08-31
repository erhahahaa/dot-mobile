import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_usecase.freezed.dart';
part 'sign_up_usecase.g.dart';

@lazySingleton
class SignUpUsecase extends FPUC<UserModel, SignUpParams> {
  final AuthRepository _repo;

  SignUpUsecase(this._repo);

  @override
  Future<Either<Failure, UserModel>> call(SignUpParams params,
          {HttpCallback? callback}) =>
      _repo.signUp(params);
}

@freezed
class SignUpParams with _$SignUpParams {
  const factory SignUpParams({
    required String email,
    required String password,
    required String name,
    required String username,
    required int phone,
    required UserGender gender,
    required UserRole role,
    required String? fcmToken,
  }) = _SignUpParams;

  factory SignUpParams.fromJson(Map<String, dynamic> json) =>
      _$SignUpParamsFromJson(json);
}
