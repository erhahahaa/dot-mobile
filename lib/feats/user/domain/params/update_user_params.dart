import 'dart:io';

import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_params.freezed.dart';
part 'update_user_params.g.dart';

@freezed
class UpdateUserParams with _$UpdateUserParams {
  const factory UpdateUserParams({
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
  }) = _UpdateUserParams;

  factory UpdateUserParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserParamsFromJson(json);
}
