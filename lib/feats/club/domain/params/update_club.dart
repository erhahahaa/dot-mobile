import 'package:dot_coaching/feats/club/domain/entities/club.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_club.freezed.dart';
part 'update_club.g.dart';

@freezed
class UpdateClubParams with _$UpdateClubParams {
  const factory UpdateClubParams({
    required String id,
    required String name,
    required String description,
    String? image,
    required SportType type,
  }) = _UpdateClubParams;

  factory UpdateClubParams.fromJson(Map<String, dynamic> json) =>
      _$UpdateClubParamsFromJson(json);
}
