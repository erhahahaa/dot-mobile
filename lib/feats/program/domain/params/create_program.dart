import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_program.freezed.dart';
part 'create_program.g.dart';

@freezed
class CreateProgramParams with _$CreateProgramParams {
  const factory CreateProgramParams({
    @Default(0) int clubId,
    @Default('') String sportType,
    @Default('') String name,
  }) = _CreateProgramParams;

  factory CreateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProgramParamsFromJson(json);
}
