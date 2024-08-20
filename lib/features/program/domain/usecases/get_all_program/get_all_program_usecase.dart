import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_all_program_usecase.freezed.dart';
part 'get_all_program_usecase.g.dart';

@lazySingleton
class GetAllProgramUsecase
    extends FPUC<List<ProgramModel>, GetAllProgramParams> {
  final ProgramRepository _programRepository;

  GetAllProgramUsecase(this._programRepository);

  @override
  Future<Either<Failure, List<ProgramModel>>> call(GetAllProgramParams params,
          {HttpCallback? callback}) =>
      _programRepository.getAll(params);
}

@freezed
class GetAllProgramParams with _$GetAllProgramParams {
  const factory GetAllProgramParams({
    required int clubId,
  }) = _GetAllProgramParams;

  factory GetAllProgramParams.fromJson(Map<String, dynamic> json) =>
      _$GetAllProgramParamsFromJson(json);
}
