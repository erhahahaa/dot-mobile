import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dot_coaching/feats/club/domain/entities/club_entity.dart';
import 'package:dot_coaching/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_club_param.freezed.dart';

@freezed
class UpdateClubParams with _$UpdateClubParams {
  const factory UpdateClubParams({
    required String id,
    required String name,
    required String description,
    File? image,
    required SportType type,
  }) = _UpdateClubParams;

  const UpdateClubParams._();

  Map<String, dynamic> get determineBody {
    if (image != null) {
      return {
        'name': name,
        'description': description,
        'type': type.value,
        'image': MultipartFile.fromFileSync(image!.path),
      };
    } else {
      return {
        'name': name,
        'description': description,
        'type': type.value,
      };
    }
  }

  FormData toFormData() => FormData.fromMap(determineBody);
}
