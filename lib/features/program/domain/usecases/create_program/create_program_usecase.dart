
import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_program_usecase.freezed.dart';
part 'create_program_usecase.g.dart';

@lazySingleton
class CreateProgramUsecase extends FPUC<ProgramModel, CreateProgramParams> {
  final ProgramRepository _programRepository;

  CreateProgramUsecase(this._programRepository);

  @override
  Future<Either<Failure, ProgramModel>> call(CreateProgramParams params,
          {HttpCallback? callback}) =>
      _programRepository.create(params);
}

@freezed
class CreateProgramParams with _$CreateProgramParams {
  const factory CreateProgramParams({
    required int clubId,
    required int mediaId,
    required String name,
    required DateTime startDate,
    required DateTime endDate,
    // ignore: invalid_annotation_target
    // @JsonKey(includeFromJson: false, includeToJson: false) File? image,
  }) = _CreateProgramParams;

  const CreateProgramParams._();

  factory CreateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProgramParamsFromJson(json);

  // FormData toFormData() => FormData.fromMap({
  //       'image': image != null ? MultipartFile.fromFileSync(image!.path) : null,
  //     });
}
