import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_profile_usecase.freezed.dart';
part 'update_profile_usecase.g.dart';

@lazySingleton
class UpdateProfileUsecase extends FPUC<UserModel, UpdateProfileParams> {
  final UserRepository _userRepository;

  UpdateProfileUsecase(this._userRepository);

  @override
  Future<Either<Failure, UserModel>> call(UpdateProfileParams params,
          {HttpCallback? callback}) =>
      _userRepository.updateProfile(params);
}

@freezed
abstract class UpdateProfileParams with _$UpdateProfileParams {
  const factory UpdateProfileParams({
    required int id,
    required String email,
    required String password,
    required String name,
    required String username,
    required int phone,
    required UserGender gender,
    required UserRole role,
    String? bornPlace,
    DateTime? bornDate,
    String? religion,
    String? address,
    String? expertise,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) File? image,
  }) = _UpdateProfileParams;

  const UpdateProfileParams._();

  factory UpdateProfileParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileParamsFromJson(json);

  FormData toFormData() => FormData.fromMap({
        'image': image != null ? MultipartFile.fromFileSync(image!.path) : null,
      });
}
