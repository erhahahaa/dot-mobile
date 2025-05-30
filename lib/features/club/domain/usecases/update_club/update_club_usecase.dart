import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_club_usecase.freezed.dart';

@lazySingleton
class UpdateClubUsecase extends FPUC<ClubModel, UpdateClubParams> {
  final ClubRepository _clubRepository;

  UpdateClubUsecase(this._clubRepository);

  @override
  Future<Either<Failure, ClubModel>> call(UpdateClubParams params,
          {HttpCallback? callback}) =>
      _clubRepository.update(params);
}

@freezed
class UpdateClubParams with _$UpdateClubParams {
  const factory UpdateClubParams({
    required int id,
    required String name,
    required String description,
    required File? image,
    required String type,
  }) = _UpdateClubParams;

  const UpdateClubParams._();

  Map<String, dynamic> get _determineBody {
    if (image != null) {
      return {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
        'image': MultipartFile.fromFileSync(image!.path),
      };
    } else {
      return {
        'id': id,
        'name': name,
        'description': description,
        'type': type,
      };
    }
  }

  FormData toFormData() => FormData.fromMap(_determineBody);
}
