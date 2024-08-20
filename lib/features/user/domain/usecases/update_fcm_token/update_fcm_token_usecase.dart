import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_fcm_token_usecase.freezed.dart';
part 'update_fcm_token_usecase.g.dart';

@lazySingleton
class UpdateFCMTokenUsecase extends FPUC<UserModel, UpdateFCMTokenParams> {
  final UserRepository _userRepository;

  UpdateFCMTokenUsecase(this._userRepository);

  @override
  Future<Either<Failure, UserModel>> call(UpdateFCMTokenParams params,
          {HttpCallback? callback}) =>
      _userRepository.updateFCMToken(params);
}

@freezed
abstract class UpdateFCMTokenParams with _$UpdateFCMTokenParams {
  const factory UpdateFCMTokenParams({
    required String fcmToken,
  }) = _UpdateFCMTokenParams;

  const UpdateFCMTokenParams._();

  factory UpdateFCMTokenParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateFCMTokenParamsFromJson(json);
}
