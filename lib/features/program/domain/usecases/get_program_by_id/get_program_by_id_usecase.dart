import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_program_by_id_usecase.freezed.dart';
part 'get_program_by_id_usecase.g.dart';

@lazySingleton
class GetProgramByIdUsecase extends FPUC<ProgramModel, GetProgramByIdParams> {
  final ProgramRepository _programRepository;

  GetProgramByIdUsecase(this._programRepository);

  @override
  Future<Either<Failure, ProgramModel>> call(GetProgramByIdParams params,
          {HttpCallback? callback}) =>
      _programRepository.getById(params);
}

@freezed
class GetProgramByIdParams with _$GetProgramByIdParams {
  const factory GetProgramByIdParams({
    required int programId,
  }) = _GetProgramByIdParams;

  factory GetProgramByIdParams.fromJson(Map<String, dynamic> json) =>
      _$GetProgramByIdParamsFromJson(json);
}
