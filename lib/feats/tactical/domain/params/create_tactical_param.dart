import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_tactical_param.freezed.dart';
part 'create_tactical_param.g.dart';

@freezed
class CreateTacticalParams with _$CreateTacticalParams {
  const factory CreateTacticalParams({
    @Default(0) int clubId,
    @Default('') String sportType,
    @Default('') String name,
    @Default('') String description,
  }) = _CreateTacticalParams;

  factory CreateTacticalParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTacticalParamsFromJson(json);
}
