import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:dot_coaching/features/feature.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_tactical_usecase.freezed.dart';
part 'update_tactical_usecase.g.dart';

@lazySingleton
class UpdateTacticalUsecase extends FPUC<TacticalModel, UpdateTacticalParams> {
  final TacticalRepository _tacticalRepository;

  UpdateTacticalUsecase(this._tacticalRepository);

  @override
  Future<Either<Failure, TacticalModel>> call(UpdateTacticalParams params,
          {HttpCallback? callback}) =>
      _tacticalRepository.update(params);
}

@freezed
class UpdateTacticalParams with _$UpdateTacticalParams {
  const factory UpdateTacticalParams({
    required int id,
    required int clubId,
    required int? mediaId,
    required String name,
    required String? description,
    required TacticalBoardModel? board,
    required TacticalStrategicModel? strategic,
    required bool isLive,
  }) = _UpdateTacticalParams;

  const UpdateTacticalParams._();

  factory UpdateTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateTacticalParamsFromJson(json);
}
