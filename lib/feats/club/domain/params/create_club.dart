import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dot_coaching/feats/feats.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_club.freezed.dart';

@freezed
class CreateClubParams with _$CreateClubParams {
  const factory CreateClubParams({
    required String name,
    required String description,
    File? image,
    required SportType type,
  }) = _CreateClubParams;

  const CreateClubParams._();

  FormData toFormData() => FormData.fromMap({
        'name': name,
        'description': description,
        'type': type.toString(),
        'image': image != null ? MultipartFile.fromFileSync(image!.path) : null,
      });
}
