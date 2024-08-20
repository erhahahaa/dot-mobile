import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_program_usecase.freezed.dart';
part 'update_program_usecase.g.dart';

@lazySingleton
class UpdateProgramUsecase extends FPUC<ProgramModel, UpdateProgramParams> {
  final ProgramRepository _programRepository;

  UpdateProgramUsecase(this._programRepository);

  @override
  Future<Either<Failure, ProgramModel>> call(UpdateProgramParams params,
          {HttpCallback? callback}) =>
      _programRepository.update(params);
}

@freezed
class UpdateProgramParams with _$UpdateProgramParams {
  const factory UpdateProgramParams({
    required int id,
    required int clubId,
    required String name,
    required DateTime? startDate,
    required DateTime? endDate,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) File? image,
  }) = _UpdateProgramParams;

  const UpdateProgramParams._();

  factory UpdateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProgramParamsFromJson(json);

  FormData toFormData() => FormData.fromMap({
        'image': image != null ? MultipartFile.fromFileSync(image!.path) : null,
      });
}
