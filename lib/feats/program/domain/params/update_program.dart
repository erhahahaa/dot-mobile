import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_program.freezed.dart';
part 'update_program.g.dart';

@freezed
class UpdateProgramParams with _$UpdateProgramParams {
  const factory UpdateProgramParams({
    @Default(0) int id,
    @Default(0) int clubId,
    @Default('') String sportType,
    @Default('') String name,
  }) = _UpdateProgramParams;

  factory UpdateProgramParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateProgramParamsFromJson(json);
}
