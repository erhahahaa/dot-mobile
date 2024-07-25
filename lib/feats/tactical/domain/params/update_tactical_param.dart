import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_tactical_param.freezed.dart';
part 'update_tactical_param.g.dart';

@freezed
class UpdateTacticalParams with _$UpdateTacticalParams {
  const factory UpdateTacticalParams({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default('') String sportType,
    @Default('') String name,
    @Default('') String description,
  }) = _UpdateTacticalParams;

  factory UpdateTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateTacticalParamsFromJson(json);
}
