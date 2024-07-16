import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_by_id.freezed.dart';
part 'get_by_id.g.dart';

@freezed
class ByIdParams with _$ByIdParams {
  const factory ByIdParams({
    required String id,
  }) = _ByIdParams;

  factory ByIdParams.fromJson(Map<String, dynamic> json) =>
      _$ByIdParamsFromJson(json);
}
