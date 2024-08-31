import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'delete_program_usecase.freezed.dart';
part 'delete_program_usecase.g.dart';

@lazySingleton
class DeleteProgramUsecase extends FPUC<ProgramModel, DeleteProgramParams> {
  final ProgramRepository _programRepository;

  DeleteProgramUsecase(this._programRepository);

  @override
  Future<Either<Failure, ProgramModel>> call(DeleteProgramParams params,
          {HttpCallback? callback}) =>
      _programRepository.delete(params);
}

@freezed
class DeleteProgramParams with _$DeleteProgramParams {
  const factory DeleteProgramParams({
    required int programId,
  }) = _DeleteProgramParams;

  factory DeleteProgramParams.fromJson(Map<String, dynamic> json) =>
      _$DeleteProgramParamsFromJson(json);
}
