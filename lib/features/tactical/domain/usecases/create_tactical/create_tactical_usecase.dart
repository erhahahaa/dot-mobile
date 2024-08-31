import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_tactical_usecase.freezed.dart';
part 'create_tactical_usecase.g.dart';

@lazySingleton
class CreateTacticalUsecase extends FPUC<TacticalModel, CreateTacticalParams> {
  final TacticalRepository _tacticalRepository;

  CreateTacticalUsecase(this._tacticalRepository);

  @override
  Future<Either<Failure, TacticalModel>> call(CreateTacticalParams params,
          {HttpCallback? callback}) =>
      _tacticalRepository.create(params);
}

@freezed
class CreateTacticalParams with _$CreateTacticalParams {
  const factory CreateTacticalParams({
    required int clubId,
    required int? mediaId,
    required String name,
    required String? description,
    required TacticalBoardModel? board,
    required TacticalStrategicModel? strategic,
    required bool isLive,
  }) = _CreateTacticalParams;

  const CreateTacticalParams._();

  factory CreateTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTacticalParamsFromJson(json);
}
