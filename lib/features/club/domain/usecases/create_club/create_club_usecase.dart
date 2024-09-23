import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_club_usecase.freezed.dart';

@lazySingleton
class CreateClubUsecase extends FPUC<ClubModel, CreateClubParams> {
  final ClubRepository _clubRepository;

  CreateClubUsecase(this._clubRepository);

  @override
  Future<Either<Failure, ClubModel>> call(CreateClubParams params,
          {HttpCallback? callback}) =>
      _clubRepository.create(params);
}

@freezed
class CreateClubParams with _$CreateClubParams {
  const factory CreateClubParams({
    required String name,
    required String description,
    required File image,
    required String type,
  }) = _CreateClubParams;

  const CreateClubParams._();

  FormData toFormData() => FormData.fromMap({
        'name': name,
        'description': description,
        'type': type,
        'image': MultipartFile.fromFileSync(image.path),
      });
}
