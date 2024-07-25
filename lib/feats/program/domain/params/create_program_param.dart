import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_program_param.freezed.dart';
part 'create_program_param.g.dart';

@freezed
class CreateProgramParams with _$CreateProgramParams {
  const factory CreateProgramParams({
    @Default(0) int clubId,
    required String name,
    required DateTime startDate,
    required DateTime endDate,
  }) = _CreateProgramParams;

  factory CreateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProgramParamsFromJson(json);
}
